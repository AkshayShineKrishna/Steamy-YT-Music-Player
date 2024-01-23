import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/playlist/model/playlist_data.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
import 'package:steamy/domain/playlist/playlist_services.dart';
import 'package:steamy/domain/validate/validate_playlist/model/validate_playlist_response.dart';
import 'package:steamy/domain/validate/validate_services.dart';
import 'package:steamy/domain/validate/validate_song/model/validate_song_data_response.dart';
part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

@injectable
class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  final PlaylistServices _playlistServices;
  final ValidateServices _validateServices;

  PlaylistBloc(
    this._playlistServices,
    this._validateServices,
  ) : super(PlaylistState.initial()) {
    // to toggle create button
    on<_ToggleStatusFlag>((event, emit) {
      if (!event.flag) {
        if (!state.currentStatusFlag) {
          emit(state.copyWith(currentStatusFlag: true));
        }
        return;
      }
      emit(state.copyWith(currentStatusFlag: false));
    });

    // to initialize playlist page
    on<_Initialize>(((event, emit) => emit(
          state.copyWith(
              currentStatusFlag: false,
              currentSelectedCategory: -1,
              alertFlag: false),
        )));

    // to toggle selected category
    on<_GetSelectedCategory>(
      (event, emit) {
        if (state.currentSelectedCategory == event.currentCategoryIndex) {
          emit(state.copyWith(currentSelectedCategory: -1));
          return;
        }
        emit(state.copyWith(
            currentSelectedCategory: event.currentCategoryIndex));
      },
    );

    on<_Test>(
      (event, emit) {
        bool flag = state.alertFlag;
        emit(state.copyWith(alertFlag: !flag));
      },
    );

    // get all playlist data
    on<_GetAllPlaylist>(((event, emit) {
      final List<Playlist> playlist = _playlistServices.getAllPlaylists();
      // log(playlist.toList());
      emit(state.copyWith(allPlaylist: playlist.reversed.toList()));
    }));

    // get current playing song data
    on<_GetCurrentPlaying>(
      (event, emit) {
        log(event.url);
        emit(state.copyWith(
            currentPlayingArtist: event.artist,
            currentPlayingTitle: event.title,
            currentPlaylistArt: event.art,
            currentPlayingUrl: event.url));
      },
    );

    // initialize current playlist
    on<_ValidatePlaylist>((event, emit) async {
      final result =
          await _validateServices.validatePlaylist(urlList: event.urlList);
      result.fold((MainFailure failure) {
        log('Failure : $failure');
      }, (ValidatePlaylistResponse success) {
        log(success.toString());
      });
    });

    //create new playlist
    on<_CreatePlaylist>(((event, emit) async {
      final String name = event.name;
      final String? desc = event.desc;
      final String? mood = event.mood;
      await _playlistServices.createPlaylist(
        name: name,
        song: [],
        description: desc,
        mood: mood,
      );
      log('$name - playlist created');
    }));

    on<_ValidateSong>((event, emit) async {
      final result =
          await _validateServices.validateSong(songUrl: event.songUrl);
      result.fold((MainFailure failure) {
        log('Failure : $failure');
      }, (ValidateSongDataResponse success) async {
        final data = success.result;
        await _playlistServices.addToPlaylist(
            playlistName: event.playlistName,
            song: SongData(data!.first.title, event.songUrl, data.first.artist, data.first.songKey,
                data.first.songDuration));
        log(success.toString());
      });
    });
  }
}

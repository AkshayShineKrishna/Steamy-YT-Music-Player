import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
import 'package:steamy/domain/playlist/playlist_services.dart';
import 'package:steamy/domain/refresh/refreshservices.dart';
import 'package:steamy/domain/get_audio/Model/get_audio_response.dart';
import 'package:steamy/domain/get_audio/get_audio_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAudioServices _getAudioServices;
  final RefreshServices _refreshServices;
  final PlaylistServices _playlistServices;
  HomeBloc(
      this._getAudioServices, this._refreshServices, this._playlistServices)
      : super(HomeState.initial()) {
    on<_GetAudio>((event, emit) async {
      emit(state.copyWith(
        currentArt: null,
        responseResult: [],
        isLoading: true,
        isError: false,
      ));

      final result =
          await _getAudioServices.getAudio(youtubeUrl: event.youtubeUrl);
      result.fold((MainFailure failure) {
        emit(state.copyWith(
          currentArt: null,
          responseResult: [],
          isLoading: false,
          isError: true,
        ));
      }, (GetAudioResponse success) {
        final bool inPlaylist = _playlistServices.isSongIdInPlaylist(
            playlistName: 'Liked',
            songId: success.result.first.videoId.toString());
        log(success.result.toString());
        emit(state.copyWith(
          currentArt: null,
          responseResult: success.result,
          isLoading: false,
          isError: false,
          likedStatus: inPlaylist,
        ));
      });
    });

    on<_Initialize>((event, emit) async {
      emit(const HomeState(
        currentArt: null,
        responseResult: [],
        isLoading: false,
        isError: false,
        likedStatus: false,
      ));
    });

    on<_RefreshServer>((event, emit) async {
      final result = await _refreshServices.refreshServer();
      log(result.toString());
    });

    on<_GetArtUri>((event, emit) async {
      emit(state.copyWith(currentArt: event.artUri));
      log(state.currentArt.toString());
    });

    on<_ToggleLike>((event, emit) async {
      final bool currentLikedState = event.likedFlag;
      if (!currentLikedState) {
        final url =
            "https://www.youtube.com/watch?v=${state.responseResult.first.videoId}";
        final song = SongData(
            state.responseResult.first.title.toString(),
            url,
            state.responseResult.first.artist.toString(),
            state.responseResult.first.videoId.toString(),
            state.responseResult.first.duration.toString());
        await _playlistServices.addToLikedPlaylist(song: song);
      }else{
        await _playlistServices.removeFromLikedPlaylist(songId: state.responseResult.first.videoId.toString());
      }
    });
  }
}

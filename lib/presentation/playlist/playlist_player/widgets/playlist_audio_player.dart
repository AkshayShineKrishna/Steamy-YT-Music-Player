import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/core/apiendpoints.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
import 'package:steamy/domain/position%20data/model/positiondata.dart';
import 'package:steamy/presentation/playlist/playlist_player/widgets/playlist_controls.dart';

class PlaylistAudioPlayer extends StatefulWidget {
  final List<SongData> songs;
  const PlaylistAudioPlayer({super.key, required this.songs});

  @override
  State<PlaylistAudioPlayer> createState() => _PlaylistAudioPlayerState();
}

class _PlaylistAudioPlayerState extends State<PlaylistAudioPlayer> {
  late AudioPlayer _audioPlayer;

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer.positionStream,
          _audioPlayer.bufferedPositionStream,
          _audioPlayer.durationStream,
          (
            position,
            bufferedPosition,
            duration,
          ) =>
              PositionData(
                position,
                bufferedPosition,
                duration ?? Duration.zero,
              ));

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _init();
    _audioPlayer.sequenceStateStream.listen((sequenceState) {
      // Get the current MediaItem from the sequenceState
      final mediaItem = sequenceState?.currentSource?.tag as MediaItem?;

      if (mediaItem != null) {
        // Call your method here with the current MediaItem
        _onSongChange(mediaItem);
      }
    });
  }

  Future<void> _init() async {
    const String serverIp = ApiEndpoints.stream;
    final List<IndexedAudioSource> audioSources = widget.songs.map((song) {
      return AudioSource.uri(
        Uri.parse('$serverIp=${song.url}'),
        tag: MediaItem(
          id: song.url,
          title: song.title,
          artist: song.artist,
          artUri: Uri.parse('https://img.youtube.com/vi/${song.songKey}/0.jpg'),
        ),
      );
    }).toList();
    final playlist = ConcatenatingAudioSource(children: audioSources);
    await _audioPlayer.setAudioSource(playlist);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Now Streaming 🎵',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Expanded(child: BlocBuilder<PlaylistBloc, PlaylistState>(
                builder: (context, state) {
                  return Text(
                    state.currentPlayingTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  );
                },
              )),
            ],
          ),
          BlocBuilder<PlaylistBloc, PlaylistState>(
            builder: (context, state) {
              return Text(
                state.currentPlayingArtist,
                style: (const TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black54)),
              );
            },
          ),
          kHeight,
          StreamBuilder<PositionData>(
              stream: _positionDataStream,
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return ProgressBar(
                  barHeight: 8,
                  baseBarColor: Colors.grey[100],
                  progress: positionData?.position ?? Duration.zero,
                  buffered: positionData?.bufferPosition ?? Duration.zero,
                  total: positionData?.duration ?? Duration.zero,
                  onSeek: _audioPlayer.seek,
                );
              }),
          PlaylistControls(audioPlayer: _audioPlayer)
        ],
      ),
    );
  }

  void _onSongChange(MediaItem mediaItem) {
    BlocProvider.of<PlaylistBloc>(context).add(PlaylistEvent.getCurrentPlaying(
        title: mediaItem.title,
        artist: mediaItem.artist!,
        art: mediaItem.artUri.toString(),
        url: mediaItem.id));
  }
}

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/position%20data/model/positiondata.dart';
import 'controlswidget.dart';
import 'package:steamy/domain/core/apiendpoints.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String url, title, videoId, artist;

  const AudioPlayerWidget(
      {super.key,
      required this.url,
      required this.title,
      required this.videoId,
      required this.artist});

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
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
  }

  Future<void> _init() async {
    const String serverIp = ApiEndpoints.stream;
    final String ytUrl = widget.url;
    final _playlist = ConcatenatingAudioSource(
      children: [
        AudioSource.uri(
            Uri.parse(
              '$serverIp=$ytUrl',
            ),
            tag: MediaItem(
                id: '0',
                title: widget.title,
                artist: widget.artist,
                artUri: Uri.parse(
                    'https://img.youtube.com/vi/${widget.videoId}/0.jpg')))
      ],
    );
    await _audioPlayer.setAudioSource(_playlist);
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
              Expanded(
                  child: Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                maxLines: 2,
                overflow: TextOverflow.fade,
              )),
            ],
          ),
          Text(
            widget.artist,
            style:
                (TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
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
          ControlsWidget(audioPlayer: _audioPlayer,url: widget.url),
        ],
      ),
    );
  }
}

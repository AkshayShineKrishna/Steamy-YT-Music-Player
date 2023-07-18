import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/position%20data/model/positiondata.dart';
import 'controlswidget.dart';
import 'package:steamy/domain/core/apiendpoints.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String url, title,videoId;

  const AudioPlayerWidget({super.key, required this.url, required this.title,required this.videoId});

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
    const String serverIp = ApiEndpoints.streamUrl;
    final String ytUrl = widget.url;
    _audioPlayer = AudioPlayer()..setUrl('$serverIp=$ytUrl');
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
          ControlsWidget(audioPlayer: _audioPlayer),
        ],
      ),
    );
  }
}

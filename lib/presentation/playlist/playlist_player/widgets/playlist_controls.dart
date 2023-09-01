import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlaylistControls extends StatelessWidget {
  final AudioPlayer audioPlayer;
  const PlaylistControls({super.key, required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () => audioPlayer.seekToPrevious(),
          icon: const Icon(Icons.skip_previous_rounded),
          iconSize: 50,
        ),
        StreamBuilder<PlayerState>(
            stream: audioPlayer.playerStateStream,
            builder: (context, snapshot) {
              final playerState = snapshot.data;
              final processingState = playerState?.processingState;
              final playing = playerState?.playing;
              if (!(playing ?? false)) {
                return IconButton(
                  onPressed: audioPlayer.play,
                  icon: const Icon(Icons.play_arrow),
                  iconSize: 80,
                );
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                  onPressed: audioPlayer.pause,
                  icon: const Icon(Icons.pause),
                  iconSize: 80,
                );
              }
              return IconButton(
                onPressed: () {
                  audioPlayer.seek(const Duration(seconds: 0));
                },
                icon: const Icon(Icons.replay),
                iconSize: 80,
              );
            }),
        IconButton(
          onPressed: () => audioPlayer.seekToNext(),
          icon: const Icon(Icons.skip_next_rounded),
          iconSize: 50,
        ),
      ],
    );
  }
}

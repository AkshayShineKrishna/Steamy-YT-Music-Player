import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:steamy/core/baseUrl.dart';
import 'package:steamy/domain/core/apiendpoints.dart';
import 'package:url_launcher/url_launcher.dart';

class ControlsWidget extends StatelessWidget {
  final AudioPlayer audioPlayer;
  final String url;

  const ControlsWidget({Key? key, required this.audioPlayer, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: _launch,
          tooltip: 'Open in Youtube',
          icon: const Icon(Icons.subscriptions),
          iconSize: 35,
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
          onPressed: () {
            _urlFetcher();
            const snackBar = SnackBar(
              content: Text(
                'Opening Browser 🌐 Please wait',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: const Icon(Icons.download_rounded),
          iconSize: 35,
          tooltip: 'Download audio',
        ),
      ],
    );
  }

  void _launch() async {
    HapticFeedback.lightImpact();
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalNonBrowserApplication,
    );
  }

  Future<void> _urlFetcher() async {
    HapticFeedback.lightImpact();
    final downloadUrl = '${ApiEndpoints.download}=$url';
    try {
      final dio = Dio();
      final response = await dio.get(downloadUrl);
      if (response.statusCode == 200) {
        final Map<String, dynamic> resultData = response.data;
        final String link = "$baseUrl${resultData['link']}";
        await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication);
      } else {
        log('Failed to download the file. Status code: ${response.statusCode}');
      }
    } catch (e) {
      log('Error : $e');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
import 'package:steamy/presentation/playlist/playlist_player/widgets/playlist_info.dart';
import 'widgets/playlist_audio_player.dart';

class ScreenPlaylistPlayer extends StatelessWidget {
  final String playlistName, totalSongs;
  final List<SongData> songs;
  const ScreenPlaylistPlayer(
      {super.key,
      required this.songs,
      required this.playlistName,
      required this.totalSongs});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: kWhite),
        ),
      ),
      extendBody: true,
      backgroundColor: kdeepPurpleBackground,
      resizeToAvoidBottomInset: false, // Set resizeToAvoidBottomInset to false
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlaylistInfoWidget(size: size, playlistName: playlistName, totalSongs: totalSongs),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height:
                  size.height < 800 ? size.height * 0.35 : size.height * 0.4,
              decoration: const BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: PlaylistAudioPlayer(songs: songs),
            ),
          ),
        ],
      ),
    );
  }
}


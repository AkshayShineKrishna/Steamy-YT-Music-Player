import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
import 'package:steamy/presentation/playlist/playlist_player/playlist_player.dart';
import 'package:steamy/presentation/playlist/widgets/category_container.dart';
import 'package:steamy/presentation/playlist/widgets/playlist_body.dart';

class PlaylistCardWidget extends StatelessWidget {
  final String title;
  final int len;
  final String? mood, desc;
  final List<SongData> songs;
  const  PlaylistCardWidget(
      {super.key,
      required this.title,
      required this.len,
      this.mood,
      required this.songs,
      this.desc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PlaylistBody(
                  playlistName: title,
                  desc: desc,
                  category: mood,
                  songs: songs,
                )));
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kDeepPurpleAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: kWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$len songs',
                    style: TextStyle(
                        color: kWhite.withOpacity(0.8),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  mood != null
                      ? CategoryContainer(
                          category: mood,
                          containerColor: kWhite.withOpacity(0.2),
                          textColor: kWhiteFont,
                        )
                      : kHeight,
                  kHeight
                ],
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: _imageSelector(),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: kWhite.withOpacity(0.9),
                      child: IconButton(
                        icon: const Icon(
                          Icons.play_arrow_rounded,
                          size: 42,
                        ),
                        onPressed: () {
                          List<String> songUrls =
                              songs.map((song) => song.url).toList();
                          BlocProvider.of<PlaylistBloc>(context).add(
                              PlaylistEvent.validatePlaylist(
                                  urlList: songUrls));
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ScreenPlaylistPlayer(
                                    songs: songs,
                                    playlistName: title,
                                    totalSongs: len.toString(),
                                  )));
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ImageProvider _imageSelector() {
    if (len != 0 && songs.isNotEmpty) {
      final randomIndex = Random().nextInt(songs.length);
      return NetworkImage(
        'https://i.ytimg.com/vi/${songs[randomIndex].songKey}/maxresdefault.jpg',
      );
    } else {
      return const AssetImage('assets/logo.png');
    }
  }
}

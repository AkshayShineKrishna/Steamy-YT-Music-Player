import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/playlist/widgets/playlist_card.dart';

class PlayListWidget extends StatelessWidget {
  const PlayListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
          BlocBuilder<PlaylistBloc, PlaylistState>(builder: (context, state) {
        final playlist = state.allPlaylist;
        return ListView.separated(
          shrinkWrap: true,
            itemBuilder: (context, index) {
              final currentPlaylist = playlist[index];
              if (index == playlist.length - 1) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: PlaylistCardWidget(
                    title: currentPlaylist.name,
                    len: currentPlaylist.songs.length,
                    mood: currentPlaylist.mood,
                    songs: currentPlaylist.songs,
                    desc: currentPlaylist.description,
                  ),
                );
              }
              return PlaylistCardWidget(
                title: currentPlaylist.name,
                mood: currentPlaylist.mood,
                songs: currentPlaylist.songs,
                len: currentPlaylist.songs.length,
                desc: currentPlaylist.description,
              );
            },
            separatorBuilder: (context, index) {
              return kHeightMedium;
            },
            itemCount: playlist.length);
      }),
    );
  }
}

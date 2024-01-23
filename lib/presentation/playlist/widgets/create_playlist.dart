import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/category/category.dart';
import 'package:steamy/domain/playlist/model/playlist_data.dart';
import 'package:steamy/presentation/playlist/widgets/cancel_button.dart';
import 'package:steamy/presentation/playlist/widgets/categories_list_widget.dart';
import 'package:steamy/presentation/playlist/widgets/playlist_body.dart';
import 'package:steamy/presentation/playlist/widgets/playlist_data_creation_widget.dart';

class CreatePlaylist extends StatelessWidget {
  CreatePlaylist({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final categories = Category.categoryList;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlaylistBloc>(context)
          .add(const PlaylistEvent.initialize());
    });
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kdeepPurpleBackground,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlaylistDataCreationWidget(
                nameController: _nameController,
                descController: _descController),
            Divider(
              color: Colors.deepPurpleAccent.withOpacity(0.3),
              thickness: 2.5,
            ),
            CategoriesListWidget(categories: categories),
            kHeightMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CancelButton(),
                kWidth,
                BlocBuilder<PlaylistBloc, PlaylistState>(
                  builder: (context, state) {
                    return _createButton(state, context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(PlaylistState state, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (state.currentStatusFlag) {
          final List<Playlist> playlists = state.allPlaylist;
          bool playlistExists = playlists.any((playlist) =>
              playlist.name.toLowerCase() ==
              _nameController.text.trim().toLowerCase());
          log("Playlist exist state => $playlistExists");
          if (!playlistExists) {
            BlocProvider.of<PlaylistBloc>(context).add(
                PlaylistEvent.createPlaylist(
                    name: _nameController.text.trim(),
                    desc: _descController.text.trim(),
                    mood: _categorySelector(state.currentSelectedCategory)));
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => PlaylistBody(
                        songs: const [],
                        playlistName: _nameController.text.trim(),
                        category:
                            _categorySelector(state.currentSelectedCategory),
                        desc: _descController.text.trim(),
                      )),
            );
            return;
          } else {
            const snackBar = SnackBar(
              content: Text(
                'Oops! 😬 Playlist already exists',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              backgroundColor: kWhite,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            return;
          }
        }
        const snackBar = SnackBar(
          content: Text(
            'Enter a playlist name to continue',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          backgroundColor: kWhite,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor:
              state.currentStatusFlag ? kWhite : Colors.transparent),
      child: const Text('Create'),
    );
  }

  String? _categorySelector(int selectedIndex) {
    if (selectedIndex == -1) {
      return null;
    } else {
      return categories[selectedIndex];
    }
  }
}

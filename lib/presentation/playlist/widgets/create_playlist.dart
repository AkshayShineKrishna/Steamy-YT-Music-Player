import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/category/category.dart';
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => PlaylistBody(
                                    playlistName: _nameController.text.trim(),
                                    category: _categorySelector(
                                        state.currentSelectedCategory),
                                    desc: _descController.text.trim(),
                                  )),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: state.currentStatusFlag
                            ? kWhite
                            : Colors.transparent),
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/category/category.dart';
import 'package:steamy/presentation/playlist/widgets/playlist_body.dart';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: kdeepPurpleBackground,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your playlist journey begins here",
              style: TextStyle(
                  color: kWhiteFont, fontSize: 25, fontWeight: FontWeight.w500),
            ),
            kHeightMedium,
            TextField(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  BlocProvider.of<PlaylistBloc>(context)
                      .add(const PlaylistEvent.toggleStatusFlag(flag: false));
                  return;
                }
                BlocProvider.of<PlaylistBloc>(context)
                    .add(const PlaylistEvent.toggleStatusFlag(flag: true));
              },
              autofocus: true,
              controller: _nameController,
              style: const TextStyle(color: kWhite),
              decoration: InputDecoration(
                hintText: 'Enter your playlist name',
                hintStyle: const TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kWhite,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kWhite,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            kHeight,
            TextField(
              controller: _descController,
              style: const TextStyle(color: kWhite),
              decoration: InputDecoration(
                hintText: 'Description (Optional)',
                hintStyle: const TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kWhite,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kWhite,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            kHeight,
            Divider(
              color: Colors.deepPurpleAccent.withOpacity(0.3),
              thickness: 2.5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Catogories :',
                    style: TextStyle(color: kWhite, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: BlocBuilder<PlaylistBloc, PlaylistState>(
                    builder: (context, state) {
                      return ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<PlaylistBloc>(context).add(
                                  PlaylistEvent.getSelctedCategory(
                                      currentCategoryIndex: index));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: state.currentSelectedCategory == index
                                    ? kWhite
                                    : kWhite.withOpacity(0.5),
                                border: Border.all(
                                  color: Colors.deepPurple,
                                  width: 6,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                categories[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 5,
                          );
                        },
                        itemCount: categories.length,
                      );
                    },
                  ),
                ),
              ],
            ),
            kHeightMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    HapticFeedback.lightImpact();
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2.0, color: kWhite),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                kWidth,
                BlocBuilder<PlaylistBloc, PlaylistState>(
                  builder: (context, state) {
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
                  },
                )
              ],
            )
          ],
        ),
      ),
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

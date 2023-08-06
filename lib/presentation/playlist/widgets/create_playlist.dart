import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/playlist/widgets/new_playlist.dart';

class CreatePlaylist extends StatelessWidget {
  CreatePlaylist({super.key});

  final TextEditingController _controller = TextEditingController();
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
              "Give your playlist a name",
              style: TextStyle(
                  color: kWhiteFont, fontSize: 25, fontWeight: FontWeight.w500),
            ),
            kHeightMedium,
            TextField(
              // onTapOutside: (event) {
              //   FocusScope.of(context).unfocus();
              // },
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
              controller: _controller,
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
                          _createAction();
                          //         Navigator.push(context,
                          // MaterialPageRoute(builder: (context) => const PlaylistBody()));
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => PlaylistBody()),
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

  void _createAction() {}
}

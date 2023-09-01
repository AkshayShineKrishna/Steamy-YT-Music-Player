import 'package:flutter/material.dart';

class NewPlaylistMessage extends StatelessWidget {
  const NewPlaylistMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 380,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/playlist_message.png'))),
    ));
  }
}

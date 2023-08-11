import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';

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
    )
        // Text(
        //   'Let the playlist games begin!',
        //   style: TextStyle(color: kWhiteFont, fontSize: 20),
        // ),
        );
  }
}

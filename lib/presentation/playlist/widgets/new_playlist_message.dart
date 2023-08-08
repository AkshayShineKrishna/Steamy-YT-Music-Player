import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';

class NewPlaylistMessage extends StatelessWidget {
  const NewPlaylistMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Let the playlist games begin!',
        style: TextStyle(color: kWhiteFont, fontSize: 20),
      ),
    );
  }
}
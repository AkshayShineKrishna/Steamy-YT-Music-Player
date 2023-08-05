import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';

class TitleBarWidget extends StatelessWidget {
  const TitleBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Playlist 🤍',
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w700,
            fontSize: 35,
          ),
        ),
        IconButton(
            highlightColor: kDeepPurpleAccent,
            splashColor: Colors.white,
            tooltip: 'Add Playlist',
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: kWhite,
              size: 35,
            ))
      ],
    );
  }
}

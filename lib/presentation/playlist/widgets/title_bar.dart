import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/playlist/widgets/create_playlist.dart';

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
            tooltip: 'Add Playlist',
            onPressed: () {
              HapticFeedback.lightImpact();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreatePlaylist()));
            },
            icon: const Icon(
              Icons.add,
              color: kWhite,
              size: 35,
            ))
      ],
    );
  }
}

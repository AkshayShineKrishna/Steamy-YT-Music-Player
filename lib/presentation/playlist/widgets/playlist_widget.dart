import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/playlist/widgets/playlist_card.dart';

class PlayListWidget extends StatelessWidget {
  const PlayListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            if (index == 3) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: PlaylistCardWidget(),
              );
            }
            return const PlaylistCardWidget();
          },
          separatorBuilder: (context, index) {
            return kHeightMedium;
          },
          itemCount: 4),
    );
  }
}

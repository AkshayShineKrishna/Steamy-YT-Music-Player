import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';

class DefaultMessage extends StatelessWidget {
  const DefaultMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      kHeight,
      Text(
        'STEAMY : YT Music Player',
        style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 5),
      ),
      kHeight,
      Column(
        children: [
          Text(
            '🎵 Uninterrupted listening',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text('High-quality sound 🎧',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        ],
      ),
      kHeight,
      Text('Made with 💖 by A.S.K',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ))
    ]);
  }
}

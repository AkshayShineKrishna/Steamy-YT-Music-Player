import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Youtube 🤍',
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w400,
            fontSize: 28,
          ),
        ),
        Text(
          'Music Player',
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w700,
            fontSize: 35,
          ),
        ),
      ],
    );
  }
}

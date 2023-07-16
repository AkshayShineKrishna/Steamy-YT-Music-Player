import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';

class DefaultBottomContainer extends StatelessWidget {
  final Widget widget;

  const DefaultBottomContainer({
    super.key,
    required this.widget,
  });

  // final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 350,
        decoration: const BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: widget);
  }
}

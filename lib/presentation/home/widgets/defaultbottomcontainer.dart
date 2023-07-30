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
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height < 800 ? size.height * 0.35 : size.height * 0.4,
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

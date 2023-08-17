import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';

class CategoryContainer extends StatelessWidget {
  final String? category;
  final Color containerColor, textColor;
  const CategoryContainer(
      {super.key,
      required this.category,
      this.containerColor = kWhite,
      this.textColor = kBlackFont});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: containerColor),
      child: Center(
          child: Text(
        category ?? '',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
      )),
    );
  }
}

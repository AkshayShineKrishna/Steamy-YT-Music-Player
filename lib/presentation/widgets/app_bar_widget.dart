import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:steamy/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.menu,
        size: 30,
        color: kWhite,
      ),
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
    );
  }
}

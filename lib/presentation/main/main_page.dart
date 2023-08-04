import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/menu_item/menu_data.dart';
import 'package:steamy/domain/menu_item/menu_item.dart';
import 'package:steamy/presentation/about/about.dart';
import 'package:steamy/presentation/home/home.dart';
import 'package:steamy/presentation/playlist/playlist.dart';
import 'package:steamy/presentation/widgets/menu.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  MenuData currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    log(currentItem.title);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.rebuild());
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: ZoomDrawer(
        mainScreen: getScreen(),
        menuScreen: Builder(builder: (context) {
          return ScreenMenu(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() {
                currentItem = item;
              });
              ZoomDrawer.of(context)!.close();
            },
          );
        }),
        drawerShadowsBackgroundColor: kWhite,
        menuScreenWidth: 500,
        showShadow: true,
      ),
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.home:
        return MyHomePage();
      case MenuItems.playlist:
        return const ScreenPLaylist();
      default:
        return const ScreenAbout();
    }
  }
}

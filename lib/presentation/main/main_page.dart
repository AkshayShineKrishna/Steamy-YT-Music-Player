import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:steamy/application/menu/menu_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/menu_item/menu_data.dart';
import 'package:steamy/domain/menu_item/menu_item.dart';
import 'package:steamy/presentation/about/about.dart';
import 'package:steamy/presentation/home/home.dart';
import 'package:steamy/presentation/playlist/playlist.dart';
import 'package:steamy/presentation/widgets/menu.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        final currentItem = state.currentItemData;
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.deepPurple,
          body: ZoomDrawer(
            mainScreen: _getScreen(currentItem),
            menuScreen: Builder(builder: (context) {
              return ScreenMenu(
                currentItem: currentItem,
                onSelectedItem: (item) {
                  BlocProvider.of<MenuBloc>(context)
                      .add(MenuEvent.getCurrentItem(menuDataItem: item));
                  ZoomDrawer.of(context)!.close();
                },
              );
            }),
            duration: const Duration(milliseconds: 260),
            openDragSensitivity: 350,
            drawerShadowsBackgroundColor: kWhite,
            menuScreenWidth: 500,
            showShadow: true,
          ),
        );
      },
    );
  }

  Widget _getScreen(MenuData currentItem) {
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

import 'package:flutter/material.dart';
import 'package:steamy/domain/menu_item/menu_data.dart';

class MenuItems {
  static const home = MenuData('Home', Icons.home);
  static const playlist = MenuData('Playlist', Icons.music_note);
  static const about = MenuData('About', Icons.info);

  static const all = <MenuData>[
    home,
    playlist,
    about,
  ];
}

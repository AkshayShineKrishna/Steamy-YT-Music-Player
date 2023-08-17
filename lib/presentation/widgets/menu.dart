import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/menu_item/menu_data.dart';
import 'package:steamy/domain/menu_item/menu_item.dart';

class ScreenMenu extends StatelessWidget {
  final MenuData currentItem;
  final ValueChanged<MenuData> onSelectedItem;
  const ScreenMenu(
      {super.key, required this.currentItem, required this.onSelectedItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final item = MenuItems.all[index];
            return ListTile(
              selected: currentItem == item,
              selectedColor: kWhite,
              minLeadingWidth: 20,
              leading: Icon(item.icon),
              title: Text(item.title),
              iconColor: kWhite.withOpacity(0.8),
              textColor: kWhite.withOpacity(0.8),
              selectedTileColor: Colors.black.withOpacity(0.2),
              onTap: () => onSelectedItem(item),
            );
          },
          itemCount: MenuItems.all.length,
        )
      ],
    );
  }
}

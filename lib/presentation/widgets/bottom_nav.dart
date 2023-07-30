import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.white,
            Colors.deepPurple.withOpacity(0.7),
          ],
              stops: const [
            0.0,
            1
          ])),
      padding: const EdgeInsetsDirectional.all(5),
      child: GNav(
          gap: 8,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          backgroundColor: Colors.transparent,
          activeColor: Colors.deepPurple[900],
          // tabBackgroundColor: Colors.purple.withOpacity(0.2),
          tabBackgroundGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple.withOpacity(0.3),
              Colors.purple.withOpacity(0.2),
              Colors.white.withOpacity(0.2)
            ],
          ),
          tabActiveBorder: Border.all(color: Colors.deepPurple, width: 0.25),
          color: Colors.black54,
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.areaChart,
              text: 'Charts',
            ),
            GButton(
              icon: LineIcons.music,
              text: 'Playlist',
            )
          ]),
    );
  }
}

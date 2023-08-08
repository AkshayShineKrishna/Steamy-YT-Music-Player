import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/category/category.dart';
import 'package:steamy/presentation/playlist/widgets/category_container.dart';

class PlaylistCardWidget extends StatelessWidget {
  const PlaylistCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log('pressed'),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kDeepPurpleAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Liked Songs',
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '69 songs',
                    style: TextStyle(
                        color: kWhite.withOpacity(0.8),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  CategoryContainer(
                    category: Category.categoryList[15],
                    containerColor: kWhite.withOpacity(0.2),
                    textColor: kWhiteFont,
                  ),
                  kHeight
                ],
              ),
              Stack(
                children: [
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/rap-cd-album-mixtape-cover-design-template-8e67148b45c3625087dc1cb15f1de8a8_screen.jpg?ts=1629408333'),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: kWhite.withOpacity(0.9),
                      child: IconButton(
                        icon: const Icon(
                          Icons.play_arrow_rounded,
                          size: 42,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

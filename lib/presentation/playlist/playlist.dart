import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/widgets/app_bar_widget.dart';

class ScreenPLaylist extends StatelessWidget {
  const ScreenPLaylist({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.initialize());
    });
    return Scaffold(
        backgroundColor: kdeepPurpleBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leading: const AppBarWidget(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Playlist 🤍',
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w700,
                        fontSize: 35,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: kWhite,
                          size: 35,
                        ))
                  ],
                ),
                kHeight,
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        if (index == 3) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          )
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
                                              backgroundColor:
                                                  kWhite.withOpacity(0.9),
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
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () => log('pressed'),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.deepPurpleAccent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      )
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
                                          backgroundColor:
                                              kWhite.withOpacity(0.9),
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
                      },
                      separatorBuilder: (context, index) {
                        return kHeightMedium;
                      },
                      itemCount: 4),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/domain/playlist/model/playlist_data.dart';
import 'package:steamy/domain/playlist/playlist_services.dart';
import 'package:steamy/presentation/main/main_page.dart';

import '../../application/home/home_bloc.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.refreshServer());
    });
    logger();
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/logo.png'),
                  )),
            ),
            kHeightMedium,
            const Text(
              'STEAMY - YT Music Player',
              style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Future<void> splashScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    _navigate();
  }

  void _navigate() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const ScreenMain()));
  }
}

void logger() {
  //for testing purposes
  final services = GetIt.instance.get<PlaylistServices>();
  List<Playlist> list = services.getAllPlaylists();
  log(list.length.toString());
  for (var i = 0; i < list.length; i++) {
    log(list[i].name);
    log(list[i].songs.asMap().toString());
    for (var j = 0; j < list[i].songs.length; j++) {
      log('  Song Name: ${list[i].songs[j].title}');
      log('  Song URL: ${list[i].songs[j].url}');
      log('  Song Author: ${list[i].songs[j].artist}');
      log('  Song duration: ${list[i].songs[j].songDuration}');
      log('---------------------');
    }
  }
  log('---------------------');
}

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/application/menu/menu_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/domain/playlist/model/playlist_data.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
import 'package:steamy/presentation/splash/splash.dart';
import 'core/di/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  await JustAudioBackground.init(
    androidNotificationIcon: 'mipmap/ic_launcher_monochrome',
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(PlaylistAdapter().typeId)) {
    Hive.registerAdapter(PlaylistAdapter());
  }
  if (!Hive.isAdapterRegistered(SongDataAdapter().typeId)) {
    Hive.registerAdapter(SongDataAdapter());
  }
  // Open the 'playlists' box
  await Hive.openBox<Playlist>('playlists');
  await Hive.openBox<SongData>('songs');

  // Check if 'Liked' playlist exists, and create it if not
  final likedPlaylist = Hive.box<Playlist>('playlists').get('Liked');
  log('value of likedPlaylist : ${likedPlaylist.toString()}');
  if (likedPlaylist == null) {
    final newLikedPlaylist = Playlist(
        name: 'Liked',
        songs: [],
        description:
            "Welcome to your Liked Playlist! Here, you'll find all your favorite tunes gathered in one harmonious collection. Enjoy the music you love, effortlessly.",
        mood: '👍 Collections');
    Hive.box<Playlist>('playlists').put('Liked', newLikedPlaylist);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((ctx) => getIt<HomeBloc>())),
        BlocProvider(create: ((ctx) => getIt<MenuBloc>())),
        BlocProvider(create: ((ctx) => getIt<PlaylistBloc>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Steamy',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}

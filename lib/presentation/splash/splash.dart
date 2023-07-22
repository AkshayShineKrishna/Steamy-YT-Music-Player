import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/home.dart';

import '../../application/bloc/home_bloc.dart';

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
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}

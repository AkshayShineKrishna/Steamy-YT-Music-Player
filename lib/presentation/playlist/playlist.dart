import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/playlist/widgets/playlist_widget.dart';
import 'package:steamy/presentation/widgets/app_bar_widget.dart';
import 'widgets/title_bar.dart';

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
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleBarWidget(),
                kHeight,
                PlayListWidget(),
              ],
            ),
          ),
        ));
  }
}

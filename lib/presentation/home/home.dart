import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/home/widgets/defaultbottomcontainer.dart';
import 'package:steamy/presentation/home/widgets/defaultimagewidget.dart';
import 'package:steamy/presentation/home/widgets/defaultmessage.dart';
import 'package:steamy/presentation/home/widgets/TextFieldWidget.dart';
import 'package:steamy/presentation/home/widgets/audioplayerwidget.dart';
import 'package:steamy/presentation/home/widgets/titlewidget.dart';
import 'package:steamy/presentation/widgets/app_bar_widget.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.initialize());
      BlocProvider.of<PlaylistBloc>(context)
          .add(const PlaylistEvent.getAllPlaylist());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: const AppBarWidget(),
        ),
      ),
      extendBody: true,
      backgroundColor: kdeepPurpleBackground,
      resizeToAvoidBottomInset: false, // Set resizeToAvoidBottomInset to false
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleWidget(),
                kHeight,
                TextFieldWidget(urlController: urlController),
                kHeightMedium,
                const DefaultImageWidget(),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.responseResult.isNotEmpty) {
                  log(state.responseResult.toString());
                  return DefaultBottomContainer(
                      widget: AudioPlayerWidget(
                    title: state.responseResult.first.title!,
                    videoId: state.responseResult.first.videoId!,
                    url: urlController.text.trim(),
                    artist: state.responseResult.first.artist!,
                  ));
                }
                return const DefaultBottomContainer(
                  widget: DefaultMessage(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

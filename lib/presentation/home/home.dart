import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/bloc/home_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/home/widgets/defaultbottomcontainer.dart';
import 'package:steamy/presentation/home/widgets/defaultimagewidget.dart';
import 'package:steamy/presentation/home/widgets/defaultmessage.dart';
import 'package:steamy/presentation/home/widgets/TextFieldWidget.dart';
import 'package:steamy/presentation/home/widgets/audioplayerwidget.dart';
import 'package:steamy/presentation/widgets/bottom_nav.dart';
import 'package:steamy/presentation/home/widgets/titlewidget.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.deepPurple[700],
      resizeToAvoidBottomInset: false, // Set resizeToAvoidBottomInset to false
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight,
                  const TitleWidget(),
                  kHeightMedium,
                  TextFieldWidget(urlController: urlController),
                  kHeightLarge,
                  const DefaultImageWidget(),
                ],
              ),
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
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}

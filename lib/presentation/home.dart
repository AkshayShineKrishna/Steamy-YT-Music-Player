
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/bloc/home_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/widgets/TextFieldWidget.dart';
import 'package:steamy/presentation/widgets/audioplayerwidget.dart';
import 'package:steamy/presentation/widgets/defaultbottomcontainer.dart';

import 'package:steamy/presentation/widgets/defaultimagewidget.dart';
import 'package:steamy/presentation/widgets/defaultmessage.dart';
import 'package:steamy/presentation/widgets/titlewidget.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   BlocProvider.of<HomeBloc>(context);
    // });
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      resizeToAvoidBottomInset: false, // Set resizeToAvoidBottomInset to false
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
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
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.responseResult.isNotEmpty) {
                  return DefaultBottomContainer(
                      widget: AudioPlayerWidget(
                    title: state.responseResult.first.title!,
                    url: urlController.text.trim(),
                  ));
                }
                return const DefaultBottomContainer(
                  widget: DefaultMessage(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

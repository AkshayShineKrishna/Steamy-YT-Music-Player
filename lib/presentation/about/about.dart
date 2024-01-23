import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/widgets/app_bar_widget.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

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
      body: Center(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(),
          )
        ],
      )),
    );
  }
}

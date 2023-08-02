import 'package:flutter/material.dart';
import 'package:steamy/presentation/widgets/app_bar_widget.dart';

class ScreenPLaylist extends StatelessWidget {
  const ScreenPLaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          leading: const AppBarWidget(),
        ),
      ),
      body: const Center(
        child: Text('Playlist'),
      ),
    );
  }
}

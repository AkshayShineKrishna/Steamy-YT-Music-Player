import 'dart:developer';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/core/constants.dart';

import '../../application/bloc/home_bloc.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.urlController,
  });

  final TextEditingController urlController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: urlController,
            style: const TextStyle(color: kWhite),
            decoration: InputDecoration(
              prefixIcon: GestureDetector(
                onTap: () async {
                  String copiedUrl = await FlutterClipboard.paste();
                  urlController.text = copiedUrl;
                },
                child: const Icon(
                  CupertinoIcons.link,
                  color: Colors.white,
                ),
              ),
              hintStyle: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w400,
              ),
              hintText: 'Paste the URL',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: kWhite,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: kWhite,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            final String url = urlController.text.trim();
            if (url.isNotEmpty) {
              log('URL: $url');
              BlocProvider.of<HomeBloc>(context)
                  .add(HomeEvent.getAudio(youtubeUrl: url));
            } else {
              BlocProvider.of<HomeBloc>(context).add(const HomeEvent.initialize());
            }
          },
          child: Container(
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            width: 65,
            height: 65,
            child: const Icon(CupertinoIcons.search),
          ),
        ),
      ],
    );
  }
}

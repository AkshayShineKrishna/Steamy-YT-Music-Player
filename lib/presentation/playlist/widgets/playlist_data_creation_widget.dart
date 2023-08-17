import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';

class PlaylistDataCreationWidget extends StatelessWidget {
  const PlaylistDataCreationWidget({
    super.key,
    required TextEditingController nameController,
    required TextEditingController descController,
  })  : _nameController = nameController,
        _descController = descController;

  final TextEditingController _nameController;
  final TextEditingController _descController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Your playlist journey begins here",
          style: TextStyle(
              color: kWhiteFont, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        kHeightMedium,
        TextField(
          onChanged: (value) {
            if (value.isNotEmpty) {
              BlocProvider.of<PlaylistBloc>(context)
                  .add(const PlaylistEvent.toggleStatusFlag(flag: false));
              return;
            }
            BlocProvider.of<PlaylistBloc>(context)
                .add(const PlaylistEvent.toggleStatusFlag(flag: true));
          },
          autofocus: true,
          controller: _nameController,
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            hintText: 'Enter your playlist name',
            hintStyle: const TextStyle(
              color: kWhite,
              fontWeight: FontWeight.w400,
            ),
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
        kHeight,
        TextField(
          controller: _descController,
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            hintText: 'Description (Optional)',
            hintStyle: const TextStyle(
              color: kWhite,
              fontWeight: FontWeight.w400,
            ),
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
        kHeight,
      ],
    );
  }
}

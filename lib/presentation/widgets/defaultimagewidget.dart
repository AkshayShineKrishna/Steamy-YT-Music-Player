
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/bloc/home_bloc.dart';

class DefaultImageWidget extends StatelessWidget {
  const DefaultImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const CircularProgressIndicator();
            } else if (state.isError) {
              return SizedBox(
                height: 250,
                child: Image.asset('assets/error.png'),
              );
            } else if (state.responseResult.isNotEmpty) {
              final videoId = state.responseResult.first.videoId;
              return Container(
                width: 400,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.youtube.com/vi/$videoId/0.jpg'),
                        fit: BoxFit.cover)),
              );
            }
            return SizedBox(
              height: 250,
              child: Image.asset('assets/illustration.png'),
            );
          },
        ),
      ],
    );
  }
}

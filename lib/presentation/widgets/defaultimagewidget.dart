import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/bloc/home_bloc.dart';

class DefaultImageWidget extends StatelessWidget {
  const DefaultImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return SizedBox(
                height: size.width * 0.4,
                child: Image.asset(
                  'assets/loading.gif',
                  fit: BoxFit.fill,
                ),
              );
            } else if (state.isError) {
              return SizedBox(
                height: size.width * 0.6,
                child: Image.asset('assets/error.png'),
              );
            } else if (state.responseResult.isNotEmpty) {
              final videoId = state.responseResult.first.videoId;
              return Container(
                width: size.width * 0.9,
                height: size.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.youtube.com/vi/$videoId/0.jpg'),
                        fit: BoxFit.cover)),
              );
            }
            return SizedBox(
              height: size.width * 0.6,
              child: Image.asset('assets/illustration.png'),
            );
          },
        ),
      ],
    );
  }
}

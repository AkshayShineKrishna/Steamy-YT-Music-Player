import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/core/constants.dart';

class DefaultBottomContainer extends StatelessWidget {
  final Widget widget;

  const DefaultBottomContainer({
    super.key,
    required this.widget,
  });

  // final String url;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: size.height < 800 ? size.height * 0.35 : size.height * 0.4,
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: widget),
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.responseResult.isNotEmpty) {
              return Positioned(
                top: 45,
                right: 20,
                child: LikeButton(
                  isLiked: state.likedStatus,
                  onTap: (bool isLiked) async {
                    if (!isLiked) {
                      BlocProvider.of<HomeBloc>(context)
                          .add(HomeEvent.toggleLike(likedFlag: isLiked));
                      return true;
                    }
                    BlocProvider.of<HomeBloc>(context)
                        .add(HomeEvent.toggleLike(likedFlag: isLiked));
                    return false;
                  },
                ),
              );
            }
            return kHeight;
          },
        )
      ],
    );
  }
}

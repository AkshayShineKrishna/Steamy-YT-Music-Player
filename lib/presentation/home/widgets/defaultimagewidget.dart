import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:steamy/application/home/home_bloc.dart';
import 'package:steamy/core/constants.dart';

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
            if (state.isLoading ||
                (state.isLoading == false &&
                    state.isError == false &&
                    state.currentArt == null &&
                    state.responseResult.isNotEmpty)) {
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
            } else if (state.currentArt != null) {
              return Container(
                width: size.width * 0.9,
                height: size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 3), // Shadow offset
                    ),
                  ],
                ),
                child: CachedNetworkImage(
                  imageUrl: state.currentArt!,
                  imageBuilder: (context, imageProvider) => Container(
                    width: size.width * 0.9,
                    height: size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Shimmer.fromColors(
                    direction: ShimmerDirection
                        .ltr, // Set the direction of the shimmer
                    baseColor: Colors.purple[900]!,
                    highlightColor: Colors.deepPurple,
                    child: Container(
                      width: size.width * 0.9,
                      height: size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey[
                            300], // Placeholder color while the image is loading
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    width: size.width * 0.9,
                    height: size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color:
                          kdeepPurpleHighlight, // Placeholder color in case of an error
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          size: 50,
                          color: kWhiteFont,
                        ),
                        kHeight,
                        Text(
                          'Error Loading Thumbnail !',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                        Text('Try Reloading 🥲',
                            style: TextStyle(
                                color: kWhiteFont,
                                fontWeight: FontWeight.w400)),
                      ],
                    ), // Widget to display in case of an error
                  ), // Set the fit for the image
                ),
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

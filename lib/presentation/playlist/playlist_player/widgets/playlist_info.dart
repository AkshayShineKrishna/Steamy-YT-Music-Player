import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';

class PlaylistInfoWidget extends StatelessWidget {
  const PlaylistInfoWidget({
    super.key,
    required this.size,
    required this.playlistName,
    required this.totalSongs,
  });

  final Size size;
  final String playlistName;
  final String totalSongs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              width: size.width,
            ),
            Text(
              "Playlist '$playlistName'",
              style: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            Text(
              "$totalSongs Songs",
              style: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ],
        ),
        kHeightLarge,
        BlocBuilder<PlaylistBloc, PlaylistState>(
          builder: (context, state) {
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
                    offset: const Offset(0, 3), // Shadow offset
                  ),
                ],
              ),
              child: CachedNetworkImage(
                imageUrl: state.currentPlaylistArt,
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
                  direction:
                      ShimmerDirection.ltr, // Set the direction of the shimmer
                  baseColor: Colors.purple[900]!,
                  highlightColor: Colors.deepPurple,
                  child: Container(
                    width: size.width * 0.9,
                    height: size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                              color: kWhiteFont, fontWeight: FontWeight.w400)),
                    ],
                  ), // Widget to display in case of an error
                ), // Set the fit for the image
              ),
            );
          },
        ),
        kHeightLarge,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                
              },
              icon: const Icon(
                Icons.subscriptions,
                color: kWhite,
                size: 35,
              ),
              tooltip: 'Open in Youtube',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.download_rounded,
                color: kWhite,
                size: 35,
              ),
              tooltip: 'Download Music',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: kWhite,
                size: 35,
              ),
              tooltip: 'Share',
            )
          ],
        )
      ],
    );
  }
}

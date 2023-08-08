import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/main/main_page.dart';
import 'package:steamy/presentation/playlist/widgets/category_container.dart';
import 'package:steamy/presentation/playlist/widgets/new_playlist_message.dart';

class PlaylistBody extends StatelessWidget {
  final String playlistName;
  final String? desc, category;
  const PlaylistBody(
      {super.key, required this.playlistName, this.desc, this.category});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenMain(),
          ),
          (route) => false,
        );
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: kWhite),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: kWhite,
                ))
          ],
        ),
        backgroundColor: kdeepPurpleBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  playlistName,
                  style: const TextStyle(
                    color: kWhiteFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.fade,
                ),
                _descSelector(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.timer_outlined,
                      color: kWhite,
                      size: 22,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '60 mins',
                      style: TextStyle(color: kWhiteFont, fontSize: 16),
                    ),
                    const Spacer(),
                    category != null
                        ? CategoryContainer(category: category)
                        : const SizedBox()
                  ],
                ),
                kHeight,
                const Divider(
                  color: Colors.deepPurple,
                ),
                const Expanded(child: NewPlaylistMessage(),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _descSelector() {
    if (desc != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          desc ?? '',
          style: const TextStyle(
            color: kWhiteFont,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
        ),
      );
    } else {
      return kHeight;
    }
  }
}

class SongListWidget extends StatelessWidget {
  const SongListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: const ListTile(
        title: Text('Song Name'),
        subtitle: Text('Duration'),
      ),
    );
      },
      itemCount: 10,
      separatorBuilder: (context, index) => kHeight,
    );
  }
}

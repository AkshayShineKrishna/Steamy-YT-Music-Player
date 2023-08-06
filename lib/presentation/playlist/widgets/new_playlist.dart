import 'package:flutter/material.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/main/main_page.dart';

class PlaylistBody extends StatelessWidget {
  const PlaylistBody({super.key});

  final String desc =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
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
                const Text(
                  'Playlist Name',
                  style: TextStyle(
                    color: kWhiteFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
                kHeight,
                Text(
                  desc,
                  style: const TextStyle(
                    color: kWhiteFont,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
                kHeight,
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
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: kWhite),
                      child: const Center(
                          child: Text(
                        "😎 Mood",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    )
                  ],
                ),
                kHeight,
                const Divider(
                  color: Colors.deepPurple,
                ),
                Expanded(
                    child: ListView.separated(
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
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewPlaylistMessage extends StatelessWidget {
  const NewPlaylistMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Let the playlist games begin!',
        style: TextStyle(color: kWhiteFont, fontSize: 20),
      ),
    );
  }
}

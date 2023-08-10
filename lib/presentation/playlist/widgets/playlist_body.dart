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
    Size size = MediaQuery.of(context).size;
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
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: const [
                    0.6,
                    0.7,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kdeepPurpleBackground,
                    // Colors.transparent,
                    kdeepPurpleHighlight,
                    // kDeepPurpleAccent
                  ])),
          child: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width - 65,
                        child: Text(
                          playlistName,
                          style: const TextStyle(
                            color: kWhiteFont,
                            fontWeight: FontWeight.w700,
                            fontSize: 35,
                          ),
                          maxLines: 4,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      _descSelector(),
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
                          category != null
                              ? CategoryContainer(category: category)
                              : const SizedBox()
                        ],
                      ),
                      kHeight,
                      const Divider(
                        color: Colors.deepPurple,
                      ),
                      const Expanded(
                        child: SongListWidget(),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert_rounded,
                        color: kWhite,
                        size: 35,
                      )),
                ),
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
        if (index == 19) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurpleAccent.withOpacity(0.4),
                ),
                child: ListTile(
                  leading: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://img.youtube.com/vi/wvIPYXXFTuE/0.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  title: const Text(
                    'Selena Gomez & Rauw Alejandro - Baila Conmigo (Premio Lo Nuestro 2021)',
                    style: TextStyle(
                        color: kWhiteFont,
                        fontSize: 18,
                        overflow: TextOverflow.fade,
                        fontWeight: FontWeight.w500),
                    maxLines: 2,
                  ),
                  subtitle: const Text(
                    'Duration • Artist',
                    style: TextStyle(color: kWhiteFont, fontSize: 13),
                    maxLines: 2,
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert_rounded,
                        color: kWhite,
                      )),
                ),
              ),
              kHeightMedium,
              const Text(
                'Total Songs : 2s0',
                style: TextStyle(
                  color: kWhiteFont,
                ),
              ),
              kHeightLarge
            ],
          );
        }
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepPurpleAccent.withOpacity(0.4),
          ),
          child: ListTile(
            leading: Container(
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://img.youtube.com/vi/wvIPYXXFTuE/0.jpg'),
                      fit: BoxFit.cover)),
            ),
            title: const Text(
              'Selena Gomez & Rauw Alejandro - Baila Conmigo (Premio Lo Nuestro 2021)',
              style: TextStyle(
                  color: kWhiteFont,
                  fontSize: 18,
                  overflow: TextOverflow.fade,
                  fontWeight: FontWeight.w500),
              maxLines: 2,
            ),
            subtitle: const Text(
              'Duration • Artist',
              style: TextStyle(color: kWhiteFont, fontSize: 13),
              maxLines: 2,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: kWhite,
                )),
          ),
        );
      },
      itemCount: 20,
      separatorBuilder: (context, index) => kHeight,
    );
  }
}

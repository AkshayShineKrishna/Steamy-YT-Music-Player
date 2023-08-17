import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';
import 'package:steamy/presentation/main/main_page.dart';
import 'package:steamy/presentation/playlist/widgets/category_container.dart';
import 'package:steamy/presentation/playlist/widgets/new_playlist_message.dart';

class PlaylistBody extends StatelessWidget {
  final String playlistName;
  final String? desc, category;
  PlaylistBody(
      {super.key, required this.playlistName, this.desc, this.category});

  final TextEditingController alertTextController = TextEditingController();

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
          onPressed: () async {
            alertTextController.clear();
            return _addSongDialog(context);
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  // stops: const [
                  //   0.6,
                  //   0.7,
                  // ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.deepPurple,
                Colors.deepPurple[600]!,
                kdeepPurpleBackground,
                Colors.deepPurple[800]!,
                Colors.deepPurple[900]!
                // Colors.transparent,
                // kdeepPurpleHighlight,
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
                      Divider(
                        color: Colors.deepPurple[400]!.withOpacity(0.5),
                        thickness: 2.5,
                      ),
                      const Expanded(
                        child:
                            //image
                            // NewPlaylistMessage(),
                            SongListWidget(),
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

  Future<void> _addSongDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return BlocBuilder<PlaylistBloc, PlaylistState>(
          builder: (context, state) {
            return AlertDialog(
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Container(
                      child: state.alertFlag
                          ? Image.asset('assets/playlist_loading.gif')
                          : Image.asset('assets/playlist.png'),
                    ),
                    kHeight,
                    TextField(
                      controller: alertTextController,
                      style: TextStyle(color: kdeepPurpleHighlight),
                      decoration: InputDecoration(
                        prefixIcon: GestureDetector(
                          onTap: () async {
                            String copiedUrl = await FlutterClipboard.paste();
                            alertTextController.text = copiedUrl;
                          },
                          child: const Icon(
                            CupertinoIcons.link,
                            color: kDeepPurpleAccent,
                          ),
                        ),
                        hintStyle: TextStyle(
                          color: kdeepPurpleBackground,
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: 'Paste the URL',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kdeepPurpleBackground,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kdeepPurpleBackground,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Add'),
                  onPressed: () {
                    BlocProvider.of<PlaylistBloc>(context)
                        .add(const PlaylistEvent.test());
                  },
                ),
              ],
            );
          },
        );
      },
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
        // display number of songs after the last tile
        if (index == 19) {
          return const Column(
            children: [
              SongTile(),
              kHeightMedium,
              Text(
                'Total Songs : 20',
                style: TextStyle(
                  color: kWhiteFont,
                ),
              ),
              kHeightLarge
            ],
          );
        }
        return const SongTile();
      },
      itemCount: 20,
      separatorBuilder: (context, index) => kHeight,
    );
  }
}

class SongTile extends StatelessWidget {
  const SongTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        // trailing: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.more_vert_rounded,
        //       color: kWhite,
        //     )),
      ),
    );
  }
}

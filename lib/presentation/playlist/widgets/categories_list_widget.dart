import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/playlist/playlist_bloc.dart';
import 'package:steamy/core/constants.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Catogories :',
            style: TextStyle(color: kWhite, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 40,
          child: BlocBuilder<PlaylistBloc, PlaylistState>(
            builder: (context, state) {
              return ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      BlocProvider.of<PlaylistBloc>(context).add(
                          PlaylistEvent.getSelctedCategory(
                              currentCategoryIndex: index));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: state.currentSelectedCategory == index
                            ? kWhite
                            : kWhite.withOpacity(0.5),
                        border: Border.all(
                          color: Colors.deepPurple,
                          width: 6,
                        ),
                      ),
                      child: Center(
                          child: Text(
                        categories[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 5,
                  );
                },
                itemCount: categories.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

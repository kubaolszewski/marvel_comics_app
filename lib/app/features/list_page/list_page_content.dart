import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/comic_details/comic_details_page.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListPageCubit, ListPageState>(
        builder: (context, state) {
          if (state.comicStatus == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.comicStatus == Status.success) {
            final comics = state.comics;
            return ListView.builder(
              itemCount: comics.length,
              itemBuilder: (context, index) {
                final comic = comics[index];
                return _ComicWidget(comic: comic);
              },
            );
          } else if (state.comicStatus == Status.error) {
            return Center(
              child: Text(state.errorMessage),
            );
          }

          return Center(
            child: Text(
              'Empty space :(',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ComicWidget extends StatelessWidget {
  const _ComicWidget({
    required this.comic,
  });

  final SingleComicModel comic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => ComicDetails(comicDetails: comic)));
        },
        child: Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(comic.image.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    comic.title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ));
  }
}

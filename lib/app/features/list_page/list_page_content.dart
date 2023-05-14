import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListPageCubit, ListPageState>(
        builder: (context, state) {
          if (state is ComicLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ComicLoadedState) {
            final comics = state.comics;
            return ListView.builder(
              itemCount: comics.length,
              itemBuilder: (context, index) {
                final comic = comics[index];
                return _ComicWidget(comic: comic);
              },
            );
          } else if (state is ComicErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          }

          return const Placeholder(child: Text('Empty space :('));
        },
      ),
    );
  }
}

class _ComicWidget extends StatelessWidget {
  const _ComicWidget({
    required this.comic,
  });

  final SingleComicsModel comic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
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
                  image: NetworkImage(comic.image),
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
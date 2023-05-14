import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/comic_details/comic_details_page.dart';
import 'package:marvel_comics_app/app/features/search_page/cubit/search_page_cubit.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';

class ComicSearchPage extends SearchDelegate<String> {
  final SearchPageCubit searchPageCubit;

  ComicSearchPage({required this.searchPageCubit});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchPageCubit.searchComicByTitle(title: query);

    return BlocBuilder<SearchPageCubit, SearchPageState>(
      bloc: searchPageCubit,
      builder: (context, state) {
        if (state is SearchPageLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is SearchPageLoadedState) {
          final List<SingleComicModel> comics = state.comics;

          if (comics.isEmpty) {
            return const Center(
              child: Text('No results were found.'),
            );
          }

          return ListView.builder(
            itemCount: comics.length,
            itemBuilder: (context, index) {
              final comic = comics[index];
              return _ComicWidget(comic: comic);
            },
          );
        }

        if (state is SearchPageErrorState) {
          return Center(
            child: Text(state.errorMessage),
          );
        }

        return Container();
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
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
      ),
    );
  }
}

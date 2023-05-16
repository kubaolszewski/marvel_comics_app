import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/app/common_widgets/comic_widget.dart';
import 'package:marvel_comics_app/app/features/search_page/cubit/search_page_cubit.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';

class SearchPageContent extends SearchDelegate<String> {
  final SearchPageCubit searchPageCubit;

  SearchPageContent({required this.searchPageCubit});

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
              return ComicWidget(comic: comic);
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
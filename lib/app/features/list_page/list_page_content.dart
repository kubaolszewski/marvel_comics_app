import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';

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
                return ListTile(
                  title: Text(comic.title),
                  subtitle: comic.description != null ? Text(comic.description!) : null,
                  leading: Image.network(comic.image),
                );
              },
            );
          } else if (state is ComicErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          }

          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final comicCubit = context.read<ListPageCubit>();
          comicCubit.fetchComics();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

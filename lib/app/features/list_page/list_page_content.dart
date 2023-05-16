import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/common_widgets/comic_widget.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';
import 'package:marvel_comics_app/core/enums.dart';

class ListPageContent extends StatelessWidget {
  const ListPageContent({super.key});

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
                return ComicWidget(comic: comic);
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

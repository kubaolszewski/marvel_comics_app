import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';
import 'package:marvel_comics_app/app/features/list_page/list_page_content.dart';
import 'package:marvel_comics_app/app/features/search_page/cubit/search_page_cubit.dart';
import 'package:marvel_comics_app/app/features/search_page/search_page_content.dart';
import 'package:marvel_comics_app/data/api_client.dart';
import 'package:marvel_comics_app/data/comics_remote_service.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.red,
            ),
            onPressed: () async {
              await showSearch(
                context: context,
                delegate: SearchPageContent(
                  searchPageCubit:
                      SearchPageCubit(ComicsRepository(comicsRemoteService: ComicsRemoteService.create(ApiClient()))),
                ),
              );
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Marvel Comics',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            ListPageCubit(ComicsRepository(comicsRemoteService: ComicsRemoteService.create(ApiClient())))
              ..fetchComics(),
        child: const ListPageContent(),
      ),
    );
  }
}

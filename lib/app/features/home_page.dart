import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/cubit/home_page_cubit.dart';
import 'package:marvel_comics_app/app/features/list_page/list_page_content.dart';
import 'package:marvel_comics_app/app/features/search_page/cubit/search_page_cubit.dart';
import 'package:marvel_comics_app/app/features/search_page/search_page_content.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return BlocProvider(
      create: (context) => HomePageCubit(
        ComicsRepository(
          comicsRemoteDataSource: ComicsRemoteDataSource(),
        ),
      ),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Scaffold(
            appBar: state.searchingController
                ? AppBar(
                    actions: [
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          context
                              .read<HomePageCubit>()
                              .searchingIndicator(searchingController: false);
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
                  )
                : AppBar(
                    actions: [
                      IconButton(
                        onPressed: () {
                          searchController.clear();
                        },
                        icon: const Icon(
                          Icons.clear,
                        ),
                      )
                    ],
                    title: TextField(
                      controller: searchController,
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                      onChanged: (title) {
                        context
                            .read<SearchPageCubit>()
                            .getComicsByTitle(title: title);
                      },
                    ),
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        context
                            .read<HomePageCubit>()
                            .searchingIndicator(searchingController: true);
                      },
                    ),
                  ),
            body: state.searchingController
                ? const ListPage()
                : const SearchPage(),
          );
        },
      ),
    );
  }
}

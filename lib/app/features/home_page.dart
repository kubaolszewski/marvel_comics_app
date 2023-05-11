import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/cubit/home_page_cubit.dart';
import 'package:marvel_comics_app/app/features/list_page/list_page_content.dart';
import 'package:marvel_comics_app/app/features/search_page/search_page_content.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(
          ComicsRepository(comicsRemoteDataSource: ComicsRemoteDataSource())),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
              leading: const Icon(Icons.arrow_back),
              title: Text(
                'Marvel Comics',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Builder(
              builder: (context) {
                if (state.pageIndex == 0) {
                  return const ListPage();
                }
                return const SearchPage();
              },
            ),
            bottomNavigationBar:
                _CustomBottomNavigationBar(pageIndex: state.pageIndex),
          );
        },
      ),
    );
  }
}

class _CustomBottomNavigationBar extends StatelessWidget {
  const _CustomBottomNavigationBar({
    required this.pageIndex,
  });

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.red,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      currentIndex: pageIndex,
      onTap: (newPageIndex) {
        context.read<HomePageCubit>().changeIndex(newPageIndex);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 32,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 32,
          ),
          label: '',
        ),
      ],
    );
  }
}

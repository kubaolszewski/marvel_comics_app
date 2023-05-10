import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_comics_app/app/features/cubit/home_page_cubit.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(ComicsRepository()),
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
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<HomePageCubit>().getComics();
                },
                child: null,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.red,
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
            ),
          );
        },
      ),
    );
  }
}

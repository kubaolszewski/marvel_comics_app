import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this.comicsRepository) : super(const HomePageState());

  final ComicsRepository comicsRepository;

  Future<void> searchingIndicator({required bool searchingController}) async {
    emit(
      HomePageState(
        searchingController: searchingController,
      ),
    );
  }
}

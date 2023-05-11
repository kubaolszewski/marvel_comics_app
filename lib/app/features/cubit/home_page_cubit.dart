import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this.comicsRepository) : super(const HomePageState());

  final ComicsRepository comicsRepository;

  Future<void> getComics() async {
    emit(
      const HomePageState(
        status: Status.initial,
      ),
    );
    try {
      final comicsModel = await comicsRepository.getComics(title: '');
      emit(HomePageState(
        comicsModel: comicsModel,
        status: Status.success),);
    } catch (error) {
      emit(
        HomePageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
Future<void> changeIndex(int newPageIndex) async {
    emit(
      HomePageState(
        pageIndex: newPageIndex,
      ),
    );
  }
}

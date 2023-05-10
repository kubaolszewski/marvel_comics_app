import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._comicsRepository) : super(const HomePageState());

  final ComicsRepository _comicsRepository;

  Future<void> getComics() async {
    emit(
      const HomePageState(
        status: Status.initial,
      ),
    );
    try {
      final comics = await _comicsRepository.getComics(title: '');
      emit(HomePageState(
        comicsModel: comics,
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
}

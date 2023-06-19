import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_comics_app/data/api_client.dart';
import 'package:marvel_comics_app/data/comics_remote_service.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

part 'search_page_state.dart';

part 'search_page_cubit.freezed.dart';

class SearchPageCubit extends Cubit<SearchPageState> {
  final ComicsRepository comicsRepository =
      ComicsRepository(comicsRemoteService: ComicsRemoteService.create(ApiClient()));

  SearchPageCubit() : super(const SearchPageState());

  Future<void> searchComicByTitle({required String title}) async {
    emit(const SearchPageLoadingState());

    try {
      final searchedComics =
          await comicsRepository.searchComicByTitle(title: title);
      emit(SearchPageLoadedState(searchedComics));
    } catch (error) {
      emit(const SearchPageErrorState('No results were found.'));
    }
  }
}
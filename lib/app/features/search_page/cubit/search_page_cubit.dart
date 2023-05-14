import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:meta/meta.dart';

part 'search_page_state.dart';

class SearchPageCubit extends Cubit<SearchPageState> {
  final ComicsRepository comicsRepository =
      ComicsRepository(comicsRemoteDataSource: ComicsRemoteDataSource());

  SearchPageCubit() : super(SearchPageState());

  Future<void> searchComicByTitle({required String title}) async {
    emit(SearchPageLoadingState());

    try {
      final searchedComics =
          await comicsRepository.searchComicByTitle(title: title);
      emit(SearchPageLoadedState(searchedComics));
    } catch (error) {
      emit(SearchPageErrorState('No results were found.'));
    }
  }
}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/core/enums.dart';
// import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:meta/meta.dart';

part 'search_page_state.dart';

class SearchPageCubit extends Cubit<SearchPageState> {
  SearchPageCubit(this.comicsRepository) : super(const SearchPageState());

  ComicsRepository comicsRepository;

  Future<void> getComicsByTitle({required String title}) async {
    emit(
      const SearchPageState(
        status: Status.loading,
      ),
    );
    try {
      // final searchedComics =
      // await comicsRepository.getComicsByTitle(title: title);
      emit(
        const SearchPageState(
          // searchedComics: searchedComics,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        SearchPageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}

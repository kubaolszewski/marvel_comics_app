import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:meta/meta.dart';

part 'list_page_state.dart';

class ListPageCubit extends Cubit<ListPageState> {
  final ComicsRepository comicsRepository =
      ComicsRepository(comicsRemoteDataSource: ComicsRemoteDataSource());

  ListPageCubit() : super(ComicLoadingState());

  Future<void> fetchComics() async {
    emit(ComicLoadingState());

    try {
      final comics = await comicsRepository.fetchComics();
      emit(ComicLoadedState(comics));
    } catch (error) {
      emit(ComicErrorState('Failed to fetch comics.'));
    }
  }
}

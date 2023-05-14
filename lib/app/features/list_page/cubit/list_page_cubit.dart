import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:meta/meta.dart';

part 'list_page_state.dart';

class ListPageCubit extends Cubit<ListPageState> {
  final ComicsRepository comicsRepository =
      ComicsRepository(comicsRemoteDataSource: ComicsRemoteDataSource());

  ListPageCubit() : super(const ListPageState());

  Future<void> fetchComics() async {
    emit(const ListPageState(comicStatus: Status.loading));

    try {
      final comics = await comicsRepository.fetchComics();
      emit(ListPageState(comics: comics, comicStatus: Status.success));
    } catch (error) {
      emit(ListPageState(errorMessage: error.toString()));
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/data/api_client.dart';
import 'package:marvel_comics_app/data/comics_remote_data_source.dart';
import 'package:marvel_comics_app/data/comics_remote_service.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

part 'list_page_state.dart';

part 'list_page_cubit.freezed.dart';

class ListPageCubit extends Cubit<ListPageState> {
  final ComicsRepository comicsRepository = ComicsRepository(
    comicsRemoteDataSource: ComicsRemoteDataSource(
    ),
    comicsRemoteService: ComicsRemoteService.create(ApiClient())
  );

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

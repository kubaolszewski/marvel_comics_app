import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

part 'list_page_state.dart';

part 'list_page_cubit.freezed.dart';

class ListPageCubit extends Cubit<ListPageState> {
  final ComicsRepository comicsRepository;

  ListPageCubit({required this.comicsRepository}) : super(const ListPageState());

  Future<void> fetchComics() async {
    emit(const ListPageState(comicStatus: Status.loading));

    try {
      final comics = await comicsRepository.fetchComics();
      emit(
        ListPageState(comics: comics, comicStatus: Status.success),
      );
    } catch (error) {
      emit(
        const ListPageState(
          comicStatus: Status.error,
          errorMessage: 'Failed to fetch comics.',
        ),
      );
    }
  }
}

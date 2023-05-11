import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:meta/meta.dart';

part 'list_page_state.dart';

class ListPageCubit extends Cubit<ListPageState> {
  ListPageCubit(this.comicsRepository) : super(const ListPageState());

  ComicsRepository comicsRepository;

  Future<void> getComics() async {
    emit(
      const ListPageState(
        status: Status.initial,
      ),
    );
    try {
      final comicsModel = await comicsRepository.getComics(title: '');
      emit(
        ListPageState(
          comicsModel: comicsModel,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        ListPageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}

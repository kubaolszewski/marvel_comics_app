import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';

part 'comic_details_page_state.dart';
part 'comic_details_page_cubit.freezed.dart';

class ComicDetailsPageCubit extends Cubit<ComicDetailsPageState> {
  final ComicsRepository comicsRepository;
  ComicDetailsPageCubit(this.comicsRepository) : super(const ComicDetailsPageState());

  void redirectToExternalSite({required String externalLink}) {
    emit(const ComicDetailsPageState(status: Status.loading));
    try {
      comicsRepository.redirectToExternalSite(externalLink: externalLink);
      emit(const ComicDetailsPageState(status: Status.success));
    } catch (error) {
      emit(ComicDetailsPageState(status: Status.error, errorMessage: error.toString()));
    }
  }
}
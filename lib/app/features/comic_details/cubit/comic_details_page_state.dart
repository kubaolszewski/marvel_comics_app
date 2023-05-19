part of 'comic_details_page_cubit.dart';

@freezed
class ComicDetailsPageState with _$ComicDetailsPageState {
  const factory ComicDetailsPageState({
    @Default(Status.initial) Status status,
    @Default('') String errorMessage,
  }) = _ComicDetailsPageState;
}
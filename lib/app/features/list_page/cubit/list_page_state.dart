part of 'list_page_cubit.dart';

@freezed
class ListPageState with _$ListPageState {
  const factory ListPageState({
    @Default([]) List<SingleComicModel> comics,
    @Default(Status.initial) Status comicStatus,
    @Default('') String errorMessage,
  }) = _ListPageState;
}
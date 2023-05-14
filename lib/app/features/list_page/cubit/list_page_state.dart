part of 'list_page_cubit.dart';

@immutable
class ListPageState {
  const ListPageState({
    this.comics = const [],
    this.comicStatus = Status.initial,
    this.errorMessage,
  });

  final List<SingleComicsModel> comics;
  final Status comicStatus;
  final String? errorMessage;
}
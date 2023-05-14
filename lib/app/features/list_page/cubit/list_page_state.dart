part of 'list_page_cubit.dart';

@immutable
class ListPageState {}

class ComicLoadingState extends ListPageState {}

class ComicLoadedState extends ListPageState {
  final List<SingleComicsModel> comics;

  ComicLoadedState(this.comics);
}

class ComicErrorState extends ListPageState {
  final String errorMessage;

  ComicErrorState(this.errorMessage);
}

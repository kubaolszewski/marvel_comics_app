part of 'search_page_cubit.dart';

@immutable
class SearchPageState {}

class ComicLoadingState extends SearchPageState {}

class ComicLoadedState extends SearchPageState {
  final List<SingleComicsModel> comics;

  ComicLoadedState(this.comics);
}

class ComicErrorState extends SearchPageState {
  final String errorMessage;

  ComicErrorState(this.errorMessage);
}

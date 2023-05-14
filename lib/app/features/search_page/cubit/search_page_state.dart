part of 'search_page_cubit.dart';

@immutable
class SearchPageState {}

class SearchPageLoadingState extends SearchPageState {}

class SearchPageLoadedState extends SearchPageState {
  final List<SingleComicModel> comics;

  SearchPageLoadedState(this.comics);
}

class SearchPageErrorState extends SearchPageState {
  final String errorMessage;

  SearchPageErrorState(this.errorMessage);
}
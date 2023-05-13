part of 'search_page_cubit.dart';

@immutable
class SearchPageState {
  const SearchPageState({
    this.searchedComics = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<SingleComicsModel> searchedComics;
  final Status status;
  final String? errorMessage;
}

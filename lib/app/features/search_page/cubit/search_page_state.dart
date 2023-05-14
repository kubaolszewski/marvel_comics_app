part of 'search_page_cubit.dart';

@immutable
class SearchPageState {
  const SearchPageState ({
    this.searchedComics = const [],
    this.comicStatus = Status.initial,
    this.errorMessage = '',
  });

  final List<SingleComicModel> searchedComics;
  final Status comicStatus;
  final String errorMessage;
}

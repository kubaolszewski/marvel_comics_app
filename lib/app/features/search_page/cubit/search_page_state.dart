part of 'search_page_cubit.dart';

@immutable
class SearchPageState {
  const SearchPageState ({
    this.searchedComics = const [],
    this.comicStatus = Status.initial,
    this.errorMessage,
  });

  final List<SingleComicsModel> searchedComics;
  final Status comicStatus;
  final String? errorMessage;
}


// comicloading = status.loading
// comicloaded = status.success
// comicerror = status.error
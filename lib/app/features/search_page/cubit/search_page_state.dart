part of 'search_page_cubit.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState() = _SearchPageState;
  const factory SearchPageState.loading() = SearchPageLoadingState;
  const factory SearchPageState.loaded(List<SingleComicModel> comics) = SearchPageLoadedState;
  const factory SearchPageState.error(String errorMessage) = SearchPageErrorState;
}

// @immutable
// class SearchPageState {}

// class SearchPageLoadingState extends SearchPageState {}

// class SearchPageLoadedState extends SearchPageState {
//   final List<SingleComicModel> comics;

//   SearchPageLoadedState(this.comics);
// }

// class SearchPageErrorState extends SearchPageState {
//   final String errorMessage;

//   SearchPageErrorState(this.errorMessage);
// }
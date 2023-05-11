part of 'home_page_cubit.dart';

@immutable
class HomePageState {
  const HomePageState({
    this.comicsModel = const [],
    this.pageIndex = 0,
    this.errorMessage,
    this.status = Status.initial,
  });

  final List<SingleComicsModel?> comicsModel;
  final int pageIndex;
  final String? errorMessage;
  final Status status;
}

part of 'home_page_cubit.dart';

@immutable
class HomePageState {
  const HomePageState({
    this.comicsModel,
    this.errorMessage,
    this.status = Status.initial,}
  );

  final SingleComicsModel? comicsModel;
  final String? errorMessage;
  final Status status;
}

part of 'list_page_cubit.dart';

@immutable
class ListPageState {
  const ListPageState({
    this.comicsModel = const [],
    this.errorMessage,
    this.status = Status.initial,
  });
  final List<SingleComicsModel> comicsModel;
  final String? errorMessage;
  final Status status;
}

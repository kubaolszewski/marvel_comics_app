// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/data/fetch_comics_response.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'list_page_cubit_test.mocks.dart';

@GenerateMocks([ComicsRepository])
void main() {
  late ListPageCubit listPageCubit;
  late MockComicsRepository mockComicsRepository;

  setUp(() {
    mockComicsRepository = MockComicsRepository();
    listPageCubit = ListPageCubit(mockComicsRepository);
  });

  group('fetchComics', () {
    const errorMessage = 'Failed to fetch comics.';
    final image = ComicThumbnail('', '');
    final List<SingleComicModel> comics = [
      SingleComicModel('title1', image, 'description', []),
      SingleComicModel('title2', image, 'description', []),
      SingleComicModel('title3', image, 'description', []),
    ];
    final FetchComicsResponse mockedResponse = FetchComicsResponse(FetchComicsData(comics));
    blocTest<ListPageCubit, ListPageState>(
        'emits Status.loading then Status.success '
        'when fetchComics() method is called successfully.',
        setUp: (() {
          when(mockComicsRepository.fetchComics()).thenAnswer((_) async => mockedResponse.data.results);
        }),
        build: () => listPageCubit,
        act: (cubit) => cubit.fetchComics(),
        expect: () => [
              const ListPageState(
                comicStatus: Status.loading,
              ),
              ListPageState(
                comicStatus: Status.success,
                comics: mockedResponse.data.results,
              ),
            ],
        verify: (_cubit) {
          verify(mockComicsRepository.fetchComics()).called(1);
        });
    blocTest<ListPageCubit, ListPageState>(
        'emits Status.loading then Status.error with error message '
        'when fetchComics() method is called unsuccessfully.',
        setUp: (() {
          when(mockComicsRepository.fetchComics()).thenThrow(
            Exception(errorMessage),
          );
        }),
        build: () => listPageCubit,
        act: (cubit) => cubit.fetchComics(),
        expect: () => [
              const ListPageState(
                comicStatus: Status.loading,
              ),
              const ListPageState(
                comicStatus: Status.error,
                errorMessage: errorMessage,
              )
            ],
        verify: (_cubit) {
          verify(mockComicsRepository.fetchComics()).called(1);
        });
  });
}

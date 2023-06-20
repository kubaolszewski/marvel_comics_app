// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_comics_app/app/features/search_page/cubit/search_page_cubit.dart';
import 'package:marvel_comics_app/data/fetch_comics_response.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_page_cubit_test.mocks.dart';


@GenerateMocks([ComicsRepository])
void main() {
  late SearchPageCubit searchPageCubit;
  late MockComicsRepository mockComicsRepository;

  setUp(() {
    mockComicsRepository = MockComicsRepository();
    searchPageCubit = SearchPageCubit(mockComicsRepository);
  });

  group(
    'searchComicByTitle',
    () {
      const errorMessage = 'No results were found.';
      const title = 'Spider-Man';
      final image = ComicThumbnail('', '');
      final List<SingleComicModel> searchedComics = [
        SingleComicModel('Spider-Man', image, '', []),
        SingleComicModel('Spider-Man', image, '', []),
        SingleComicModel('Spider-Man', image, '', []),
      ];
    final FetchComicsResponse mockedResponse = FetchComicsResponse(FetchComicsData(searchedComics));
      blocTest('emits loading state then success state when searched comic is fetched successfully',
          setUp: (() {
            when(mockComicsRepository.searchComicByTitle(title: title)).thenAnswer((_) async => mockedResponse.data.results);
          }),
          build: () => searchPageCubit,
          act: (cubit) => cubit.searchComicByTitle(title: title),
          expect: () => [
                const SearchPageLoadingState(),
                SearchPageLoadedState(mockedResponse.data.results),
              ],
          verify: (_cubit) {
            verify(mockComicsRepository.searchComicByTitle(title: title)).called(1);
          });
      blocTest('emits loading state then error state when searched comic is fetched unsuccessfully',
          setUp: (() {
            when(mockComicsRepository.searchComicByTitle(title: title)).thenThrow(Exception(errorMessage));
          }),
          build: () => searchPageCubit,
          act: (cubit) => cubit.searchComicByTitle(title: title),
          expect: () => [
                const SearchPageLoadingState(),
                const SearchPageErrorState(errorMessage),
              ],
          verify: (_cubit) {
            verify(mockComicsRepository.searchComicByTitle(title: title)).called(1);
          });
    },
  );
}

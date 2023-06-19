import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_comics_app/app/features/search_page/cubit/search_page_cubit.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../list_page/cubit/list_page_cubit_test.mocks.dart';

@GenerateMocks([ComicsRepository])
void main() {
  late SearchPageCubit searchPageCubit;
  late MockComicsRepository mockComicsRepository;

  setUp(() {
    mockComicsRepository = MockComicsRepository();
    searchPageCubit = SearchPageCubit(comicsRepository: mockComicsRepository);
  });

  group(
    'searchComicByTitle',
    () {
      final image = ComicThumbnail('', '');
      final List<SingleComicModel> searchedComics = [
        SingleComicModel('Spider-Man', image, '', []),
        SingleComicModel('Spider-Man', image, '', []),
        SingleComicModel('Spider-Man', image, '', []),
      ];
      const errorMessage = 'No results were found.';
      const title = 'Spider-Man';
      blocTest('emits loading state then success state when searched comic is fetched successfully',
          setUp: (() {
            when(mockComicsRepository.searchComicByTitle(title: title)).thenAnswer((_) async => searchedComics);
          }),
          build: () => searchPageCubit,
          act: (cubit) => cubit.searchComicByTitle(title: title),
          expect: () => [
                const SearchPageLoadingState(),
                SearchPageLoadedState(searchedComics),
              ],
          verify: (cubit) {
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
          verify: (cubit) {
            verify(mockComicsRepository.searchComicByTitle(title: title)).called(1);
          });
    },
  );
}

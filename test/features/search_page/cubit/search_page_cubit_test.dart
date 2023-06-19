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
      group(
        'successful',
        () {
          setUp(() {
            when(mockComicsRepository.searchComicByTitle(title: 'Spider-Man')).thenAnswer((_) async => searchedComics);
          });
          blocTest(
            'emits loading state then success state when searched comic is fetched successfully',
            build: () => searchPageCubit,
            act: (cubit) => cubit.searchComicByTitle(title: 'Spider-Man'),
            expect: () => [
              const SearchPageLoadingState(),
              SearchPageLoadedState(searchedComics),
            ],
          );
        },
      );

      group(
        'unsuccessful',
        () {
          setUp(() {
            when(mockComicsRepository.searchComicByTitle(title: 'Spider-Man'))
                .thenThrow(Exception(errorMessage));
          });
          blocTest(
            'emits loading state then error state when searched comic is fetched unsuccessfully',
            build: () => searchPageCubit,
            act: (cubit) => cubit.searchComicByTitle(title: 'Spider-Man'),
            expect: () => [
              const SearchPageLoadingState(),
              const SearchPageErrorState(errorMessage),
            ],
          );
        },
      );
    },
  );
}

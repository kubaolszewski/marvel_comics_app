import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_comics_app/app/features/list_page/cubit/list_page_cubit.dart';
import 'package:marvel_comics_app/core/enums.dart';
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
    listPageCubit = ListPageCubit(comicsRepository: mockComicsRepository);
  });

  group('fetchComics', () {
    final image = ComicThumbnail('', '');
    final List<SingleComicModel> comics = [
      SingleComicModel('title1', image, 'description', []),
      SingleComicModel('title2', image, 'description', []),
      SingleComicModel('title3', image, 'description', []),
    ];
    const errorMessage = 'Failed to fetch comics.';
    group('successful', () {
      setUp(() {
        when(mockComicsRepository.fetchComics()).thenAnswer((_) async => comics);
      });
      blocTest<ListPageCubit, ListPageState>(
        'emits Status.loading then Status.success when fetchComics() is called successfully.',
        build: () => listPageCubit,
        act: (cubit) => cubit.fetchComics(),
        expect: () => [
          const ListPageState(
            comicStatus: Status.loading,
          ),
          ListPageState(
            comicStatus: Status.success,
            comics: comics,
          ),
        ],
      );
    });

    group('unsuccessful', () {
      setUp(() {
        when(mockComicsRepository.fetchComics()).thenThrow(
          Exception(errorMessage),
        );
      });
    });
    blocTest<ListPageCubit, ListPageState>(
      'emits Status.loading then Status.error with error message'
      'when fetchComics() is called unsuccessfully.',
      build: () => listPageCubit,
      act: (cubit) => cubit.fetchComics(),
      expect: () => [
        const ListPageState(
          comicStatus: Status.loading,
        ),
        const ListPageState(
          comicStatus:Status.error,
          errorMessage: errorMessage,
        )
      ],
    );
  });
}

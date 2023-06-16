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
  late MockComicsRepository mockComicsRepository;
  late ListPageCubit listPageCubit;

  setUp(() {
    mockComicsRepository = MockComicsRepository();
    listPageCubit = ListPageCubit(comicsRepository: mockComicsRepository);
  });
  group('fetchComics', () {
    final image = ComicThumbnail('', '');
    List<SingleComicModel> comics = [
      SingleComicModel('title1', image, 'description', []),
      SingleComicModel('title2', image, 'description', []),
      SingleComicModel('title3', image, 'description', []),
    ];
    blocTest<ListPageCubit, ListPageState>(
      'emits Status. loading then Status.success when '
      'fetchGoals() is called successfully.',
      setUp: () {
        when(mockComicsRepository.fetchComics()).thenAnswer((_) => Future.value(comics));
      },
      build: () => listPageCubit,
      act: (cubit) => cubit.fetchComics(),
      expect: () => <ListPageState>[
        const ListPageState(
          comicStatus: Status.loading,
        ),
        ListPageState(
          comicStatus: Status.success,
          comics: comics,
        ),
      ],
      verify: (_) async {
        verify(() => mockComicsRepository.fetchComics()).called(1);
      },
    );
  });
}

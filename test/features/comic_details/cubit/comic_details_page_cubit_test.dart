import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_comics_app/app/features/comic_details/cubit/comic_details_page_cubit.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../list_page/cubit/list_page_cubit_test.mocks.dart';

@GenerateMocks([ComicsRepository])
void main() {
  late ComicDetailsPageCubit comicDetailsPageCubit;
  late MockComicsRepository mockComicsRepository;

  setUp(() {
    mockComicsRepository = MockComicsRepository();
    comicDetailsPageCubit = ComicDetailsPageCubit(comicsRepository: mockComicsRepository);
  });
  group('redirectToExternalSite', () {
    const String externalLink = 'externalLink';
    group('success', () {
      setUp(() {
        when(mockComicsRepository.redirectToExternalSite(externalLink: externalLink));
      });
      blocTest(
        'emits Status.loading then Status.success when redirecting'
        'to external site',
        build: () => comicDetailsPageCubit,
        act: (cubit) => cubit.redirectToExternalSite(externalLink: externalLink),
        expect: () => [
          const ComicDetailsPageState(status: Status.loading),
          const ComicDetailsPageState(status: Status.success),
        ],
      );
    });
    group('unsuccessul', () {
      setUp(() {
        when(mockComicsRepository.redirectToExternalSite(externalLink: externalLink)).thenAnswer((_) => throw Exception('test-exception-error'));
      });
      blocTest(
        'emits Status.loading then Status.error when redirecting'
        'to external site',
        build: () => comicDetailsPageCubit,
        act: (cubit) => cubit.redirectToExternalSite(externalLink: externalLink),
        expect: () => [
          const ComicDetailsPageState(status: Status.loading),
          const ComicDetailsPageState(status: Status.error, errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });
}

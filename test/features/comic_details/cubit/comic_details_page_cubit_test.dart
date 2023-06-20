// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_comics_app/app/features/comic_details/cubit/comic_details_page_cubit.dart';
import 'package:marvel_comics_app/core/enums.dart';
import 'package:marvel_comics_app/repositories/comics_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'comic_details_page_cubit_test.mocks.dart';


@GenerateMocks([ComicsRepository])
void main() {
  late ComicDetailsPageCubit comicDetailsPageCubit;
  late MockComicsRepository mockComicsRepository;

  setUp(() {
    mockComicsRepository = MockComicsRepository();
    comicDetailsPageCubit = ComicDetailsPageCubit(mockComicsRepository);
  });
  group('redirectToExternalSite', () {
    const String externalLink = 'externalLink';
    blocTest(
        'emits Status.loading then Status.success when redirecting '
        'to external site',
        setUp: (() {
          when(mockComicsRepository.redirectToExternalSite(externalLink: externalLink));
        }),
        build: () => comicDetailsPageCubit,
        act: (cubit) => cubit.redirectToExternalSite(externalLink: externalLink),
        expect: () => [
              const ComicDetailsPageState(status: Status.loading),
              const ComicDetailsPageState(status: Status.success),
            ],
        verify: (_cubit) {
          verify(mockComicsRepository.redirectToExternalSite(externalLink: externalLink)).called(1);
        });
    blocTest(
      'emits Status.loading then Status.error when redirecting '
      'to external site',
      setUp: (() {
        when(mockComicsRepository.redirectToExternalSite(externalLink: externalLink)).thenThrow(Exception('test-exception-error'));
      }),
      build: () => comicDetailsPageCubit,
      act: (cubit) => cubit.redirectToExternalSite(externalLink: externalLink),
      expect: () => [
        const ComicDetailsPageState(status: Status.loading),
        const ComicDetailsPageState(status: Status.error, errorMessage: 'Exception: test-exception-error'),
      ],
      verify: (_cubit) {
          verify(mockComicsRepository.redirectToExternalSite(externalLink: externalLink)).called(1);
        }
    );
  });
}

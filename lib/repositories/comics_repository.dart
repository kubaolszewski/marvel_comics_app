import 'package:marvel_comics_app/data/comics_remote_service.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ComicsRepository {
  ComicsRepository({required this.comicsRemoteService});

  final ComicsRemoteService comicsRemoteService;

  Future<List<SingleComicModel>> fetchComics() async {
      return (await comicsRemoteService.fetchComics()).data.results;
  }

  Future<List<SingleComicModel>> searchComicByTitle({required String title}) async {
      return (await comicsRemoteService.searchComicByTitle(title)).data.results;
  }

  Future<void> redirectToExternalSite({required String externalLink}) async {
    try {
      if (!await launchUrlString(externalLink)) {
        throw Exception('Could not launch external link');
      }
    } catch (error) {
      throw Exception('Unexpected error: ${error.toString()}');
    }
  }
}

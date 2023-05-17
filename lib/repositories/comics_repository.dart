import 'package:marvel_comics_app/data/comics_remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';

class ComicsRepository {
  ComicsRepository({required this.comicsRemoteDataSource});

  final ComicsRemoteDataSource comicsRemoteDataSource;

  Future<List<SingleComicModel>> fetchComics() async {
    try {
      return await comicsRemoteDataSource.fetchComics();
    } catch (error) {
      rethrow;
    }
  }

  Future<List<SingleComicModel>> searchComicByTitle(
      {required String title}) async {
    try {
      return await comicsRemoteDataSource.searchComicByTitle(title: title);
    } catch (error) {
      rethrow;
    }
  }
}

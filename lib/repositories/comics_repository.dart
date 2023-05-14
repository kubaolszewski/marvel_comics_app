import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

class ComicsRepository {
  ComicsRepository({required this.comicsRemoteDataSource});

  final ComicsRemoteDataSource comicsRemoteDataSource;

  Future<List<SingleComicsModel>> fetchComics() async {
    try {
      return await comicsRemoteDataSource.fetchComics();
    } catch (error) {
      rethrow;
    }
  }

  // poprzedni call
  // Future<List<SingleComicsModel>> getAllComics() async {
  //   final json = await comicsRemoteDataSource.getAllComics(
  //   );
  //   if (json == null) {
  //     return [];
  //   }
  //   return json.map((comics) => SingleComicsModel.fromJson(comics)).toList();
  // }

  // Future<List<SingleComicsModel>> getComicsByTitle({required String title}) async {
  //   final json = await comicsRemoteDataSource.getComicsByTitle(
  //     title: title
  //   );
  //   if (json == null) {
  //     return [];
  //   }
  //   return json.map((comics) => SingleComicsModel.fromJson(comics)).toList();
  // }
}

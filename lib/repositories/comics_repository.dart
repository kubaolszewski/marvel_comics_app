import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

class ComicsRepository {
  ComicsRepository({required this.comicsRemoteDataSource});

  final ComicsRemoteDataSource comicsRemoteDataSource;

  Future<List<SingleComicsModel>> getAllComics({required String title}) async {
    final json = await comicsRemoteDataSource.getAllComics(
      title: title,
    );
    if (json == null) {
      return [];
    }
    return json.map((comics) => SingleComicsModel.fromJson(comics)).toList();
  }
}

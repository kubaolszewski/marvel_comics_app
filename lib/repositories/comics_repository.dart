import 'package:marvel_comics_app/data/remote_data_source.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

class ComicsRepository {
  ComicsRepository({required this.comicsRemoteDataSource});

  final ComicsRemoteDataSource comicsRemoteDataSource;

  Future<List<SingleComicsModel?>> getComics({required String title}) async {
    return comicsRemoteDataSource.getComics(title: title);
  }
}

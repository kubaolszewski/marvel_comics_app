import 'package:dio/dio.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

class ComicsRepository {
  Future<SingleComicsModel> getComics({required String title}) async {
    final response = await Dio().get(
        'https://gateway.marvel.com/v1/public/comics?ts=1&apikey=080a502746c8a60aeab043387a56eef0&hash=6edc18ab1a954d230c1f03c590d469d2&limit=25&offset=0&orderBy=-onsaleDate');

    print(response.data);
    return SingleComicsModel(
        title: 'title',
        writers: [],
        description: 'description',
        imagePath: 'imagePath',
        linkToExternalSite: 'linkToExternalSite');
  }
}

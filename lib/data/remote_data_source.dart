import 'package:dio/dio.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

class ComicsRemoteDataSource {
  Future<List<SingleComicsModel>> getComics({required String title}) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'https://gateway.marvel.com/v1/public/comics?ts=1&apikey=080a502746c8a60aeab043387a56eef0&hash=6edc18ab1a954d230c1f03c590d469d2&title=Thor');

    final responseData = response.data;
    if (responseData != null) {
      final title = responseData['data']['results']['title'] as String;
      final description =
          responseData['data']['results']['description'] as String;
      print(title);
      print(description);
    }
    // return SingleComicsModel(
    //   title: 'title',
    //   writers: [],
    //   description: 'description',
    //   imagePath: 'imagePath',
    // );
    throw ('Works');
  }
}

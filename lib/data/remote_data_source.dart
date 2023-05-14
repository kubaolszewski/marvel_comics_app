import 'package:dio/dio.dart';
import 'package:marvel_comics_app/models/single_comics_model.dart';

class ComicsRemoteDataSource {
  Future<List<SingleComicsModel>> fetchComics() async {
    try {
      final response = await Dio().get(
          'https://gateway.marvel.com/v1/public/comics?ts=1&apikey=080a502746c8a60aeab043387a56eef0&hash=6edc18ab1a954d230c1f03c590d469d2&limit=25&offset=0&orderBy=-onsaleDate');
      if (response.statusCode == 200) {
        final responseData = response.data['data']['results'];
        print(responseData);
        return responseData
            .map<SingleComicsModel>((json) => SingleComicsModel.fromJson(json))
            .toList();
      } else {
        print(response.data);
        throw Exception('Failed to fetch comics: ${response.statusCode}');
      }
    } catch (error) {
       print('Error: $error');
      throw Exception('Failed to connect to the API');
    }
  }
}

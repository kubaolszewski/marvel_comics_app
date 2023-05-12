import 'package:dio/dio.dart';

class ComicsRemoteDataSource {
  Future<List<Map<String, dynamic>>?> getAllComics() async {
    final response = await Dio().get<List<dynamic>>(
        'https://gateway.marvel.com/v1/public/comics?ts=1&apikey=080a502746c8a60aeab043387a56eef0&hash=6edc18ab1a954d230c1f03c590d469d2&title=Thor');

    final listDynamic = response.data;
    if (listDynamic == null) return null;
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }

  // Future<List<Map<String, dynamic>>?> getComicsByTitle({required String title}) async {
  //   final response = await Dio().get<List<dynamic>>(
  //       'https://gateway.marvel.com/v1/public/comics?ts=1&apikey=080a502746c8a60aeab043387a56eef0&hash=6edc18ab1a954d230c1f03c590d469d2&title=$title');

  //   final listDynamic = response.data;
  //   if (listDynamic == null) return null;
  //   return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  // }
}

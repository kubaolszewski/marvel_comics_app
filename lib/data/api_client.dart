import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient() {
    dio = _configureDio();
  }

  late final Dio dio;

  Dio _configureDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://gateway.marvel.com/v1/public/',
        receiveTimeout: const Duration(seconds: 300),
        connectTimeout: const Duration(seconds: 300),
        sendTimeout: const Duration(seconds: 300),
        queryParameters: {
          'ts': '1',
          'apikey': '080a502746c8a60aeab043387a56eef0',
          'hash': '6edc18ab1a954d230c1f03c590d469d2',
          'limit': '25',
          'offset': '0',
          'orderBy': '-onsaleDate',
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
    return dio;
  }
}

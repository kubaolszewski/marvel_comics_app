import 'package:dio/dio.dart';
import 'package:marvel_comics_app/data/api_client.dart';
import 'package:marvel_comics_app/data/fetch_comics_response.dart';
import 'package:retrofit/retrofit.dart';

part 'comics_remote_service.g.dart';

@RestApi()
abstract class ComicsRemoteService {
  static ComicsRemoteService create(ApiClient dio) => _ComicsRemoteService(dio.dio);

  @GET('/comics')
  Future<FetchComicsResponse> fetchComics();

  @GET('/comics')
  Future<FetchComicsResponse> searchComicByTitle(
    @Query('titleStartsWith') String title,
  );
}
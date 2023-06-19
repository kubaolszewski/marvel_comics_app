// import 'package:dio/dio.dart';
// import 'package:marvel_comics_app/models/single_comic_model.dart';
// import 'package:retrofit/retrofit.dart';

// part 'comics_remote_service.g.dart';

// @RestApi()
// abstract class ComicsRemoteService {
//   factory ComicsRemoteService(Dio dio, {String baseUrl}) =
//       _ComicsRemoteService;

//   @GET('/comics')
//   Future<List<SingleComicModel>> fetchComics(
//     @Query('ts') int ts,
//     @Query('apikey') String apiKey,
//     @Query('hash') String hash,
//     @Query('limit') int limit,
//     @Query('offset') int offset,
//     @Query('orderBy') String orderBy,
//   );

//   @GET('/comics')
//   Future<List<SingleComicModel>> searchComicByTitle(
//     @Query('ts') int ts,
//     @Query('apikey') String apiKey,
//     @Query('hash') String hash,
//     @Query('titleStartsWith') String title,
//   );
// }
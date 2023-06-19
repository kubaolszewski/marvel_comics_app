import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_comics_app/models/single_comic_model.dart';


part 'fetch_comics_response.g.dart';
part 'fetch_comics_response.freezed.dart';

@freezed
class FetchComicsData with _$FetchComicsData{
  factory FetchComicsData (
    final List<SingleComicModel> results,
   ) = _FetchComicsData;

  factory FetchComicsData.fromJson(Map<String, dynamic> json) =>
      _$FetchComicsDataFromJson(json);
}



@freezed
class FetchComicsResponse with _$FetchComicsResponse{
  factory FetchComicsResponse (
    final FetchComicsData data,
   ) = _FetchComicsResponse;

  factory FetchComicsResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchComicsResponseFromJson(json);
   
}
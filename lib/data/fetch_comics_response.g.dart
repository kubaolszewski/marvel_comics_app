// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_comics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchComicsData _$$_FetchComicsDataFromJson(Map<String, dynamic> json) =>
    _$_FetchComicsData(
      (json['results'] as List<dynamic>)
          .map((e) => SingleComicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FetchComicsDataToJson(_$_FetchComicsData instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_FetchComicsResponse _$$_FetchComicsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FetchComicsResponse(
      FetchComicsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FetchComicsResponseToJson(
        _$_FetchComicsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

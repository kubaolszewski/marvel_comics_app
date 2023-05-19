// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_comic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleComicModel _$$_SingleComicModelFromJson(Map<String, dynamic> json) =>
    _$_SingleComicModel(
      json['title'] as String,
      ComicThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      json['description'] as String?,
      (json['urls'] as List<dynamic>)
          .map((e) => ComicUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SingleComicModelToJson(_$_SingleComicModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.image,
      'description': instance.description,
      'urls': instance.externalLink,
    };

_$_ComicThumbnail _$$_ComicThumbnailFromJson(Map<String, dynamic> json) =>
    _$_ComicThumbnail(
      json['path'] as String,
      json['extension'] as String,
    );

Map<String, dynamic> _$$_ComicThumbnailToJson(_$_ComicThumbnail instance) =>
    <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };

_$_ComicUrl _$$_ComicUrlFromJson(Map<String, dynamic> json) => _$_ComicUrl(
      json['type'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$$_ComicUrlToJson(_$_ComicUrl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };

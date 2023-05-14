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
    );

Map<String, dynamic> _$$_SingleComicModelToJson(_$_SingleComicModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.image,
      'description': instance.description,
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

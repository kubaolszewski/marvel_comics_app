// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_comic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComicModel _$SingleComicModelFromJson(Map<String, dynamic> json) =>
    SingleComicModel(
      title: json['title'] as String,
      image: ComicThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SingleComicModelToJson(SingleComicModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.image,
      'description': instance.description,
    };

ComicThumbnail _$ComicThumbnailFromJson(Map<String, dynamic> json) =>
    ComicThumbnail(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );

Map<String, dynamic> _$ComicThumbnailToJson(ComicThumbnail instance) =>
    <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };

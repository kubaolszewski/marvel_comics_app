import 'package:json_annotation/json_annotation.dart';

part 'single_comic_model.g.dart';

@JsonSerializable()
class SingleComicModel {
  SingleComicModel({
    required this.title,
    required this.image,
    this.description,
  });

  final String title;
  @JsonKey(name: 'thumbnail')
  final ComicThumbnail image;
  final String? description;

  factory SingleComicModel.fromJson(Map<String, dynamic> json) =>
      _$SingleComicModelFromJson(json);

  Map<String, dynamic> toJson() => _$SingleComicModelToJson(this);
}

@JsonSerializable()
class ComicThumbnail {
  ComicThumbnail({
    required this.path,
    required this.extension,
  });

  final String path;
  final String extension;

  String get imagePath {
    return '$path.$extension';
  }

  factory ComicThumbnail.fromJson(Map<String, dynamic> json) =>
      _$ComicThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ComicThumbnailToJson(this);

  String get imageUrl => '$path.$extension';
}



  // factory SingleComicModel.fromJson(Map<String, dynamic> json) {
  //   return SingleComicModel(
  //     title: json['title'],
  //     image: '${json['thumbnail']['path']}.${json['thumbnail']['extension']}',
  //     description: json['description'],
  //   );
  // }
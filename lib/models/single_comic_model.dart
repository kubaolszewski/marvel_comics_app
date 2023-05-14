import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_comic_model.g.dart';
part 'single_comic_model.freezed.dart';

@freezed
class SingleComicModel with _$SingleComicModel {
  factory SingleComicModel(
    final String title,
    @JsonKey(name: 'thumbnail') final ComicThumbnail image,
    final String? description,
  ) = _SingleComicModel;

  factory SingleComicModel.fromJson(Map<String, dynamic> json) =>
      _$SingleComicModelFromJson(json);
}

@freezed
class ComicThumbnail with _$ComicThumbnail {
  factory ComicThumbnail(
  final String path,
  final String extension,
  ) = _ComicThumbnail;

  factory ComicThumbnail.fromJson(Map<String, dynamic> json) =>
      _$ComicThumbnailFromJson(json);
}
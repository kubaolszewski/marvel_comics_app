import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_comic_model.g.dart';
part 'single_comic_model.freezed.dart';

@freezed
class SingleComicModel with _$SingleComicModel {
  factory SingleComicModel(
    final String title,
    @JsonKey(name: 'thumbnail') final ComicThumbnail image,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'urls') final List<ComicUrl> externalLink,
  ) = _SingleComicModel;

  factory SingleComicModel.fromJson(Map<String, dynamic> json) =>
      _$SingleComicModelFromJson(json);

  const SingleComicModel._();

  String get descriptionFiltered {
    if (description != null) {
      return description!.replaceAll(RegExp(r'<br\s*/?>'), '');
    }
    return '';
  }
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

@freezed
class ComicUrl with _$ComicUrl {
  factory ComicUrl(
    final String type,
    final String url,
  ) = _ComicUrl;

  factory ComicUrl.fromJson(Map<String, dynamic> json) =>
      _$ComicUrlFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_comic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleComicModel _$SingleComicModelFromJson(Map<String, dynamic> json) {
  return _SingleComicModel.fromJson(json);
}

/// @nodoc
mixin _$SingleComicModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  ComicThumbnail get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleComicModelCopyWith<SingleComicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleComicModelCopyWith<$Res> {
  factory $SingleComicModelCopyWith(
          SingleComicModel value, $Res Function(SingleComicModel) then) =
      _$SingleComicModelCopyWithImpl<$Res, SingleComicModel>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'thumbnail') ComicThumbnail image,
      @JsonKey(name: 'description') String? description});

  $ComicThumbnailCopyWith<$Res> get image;
}

/// @nodoc
class _$SingleComicModelCopyWithImpl<$Res, $Val extends SingleComicModel>
    implements $SingleComicModelCopyWith<$Res> {
  _$SingleComicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ComicThumbnail,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicThumbnailCopyWith<$Res> get image {
    return $ComicThumbnailCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SingleComicModelCopyWith<$Res>
    implements $SingleComicModelCopyWith<$Res> {
  factory _$$_SingleComicModelCopyWith(
          _$_SingleComicModel value, $Res Function(_$_SingleComicModel) then) =
      __$$_SingleComicModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'thumbnail') ComicThumbnail image,
      @JsonKey(name: 'description') String? description});

  @override
  $ComicThumbnailCopyWith<$Res> get image;
}

/// @nodoc
class __$$_SingleComicModelCopyWithImpl<$Res>
    extends _$SingleComicModelCopyWithImpl<$Res, _$_SingleComicModel>
    implements _$$_SingleComicModelCopyWith<$Res> {
  __$$_SingleComicModelCopyWithImpl(
      _$_SingleComicModel _value, $Res Function(_$_SingleComicModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? description = freezed,
  }) {
    return _then(_$_SingleComicModel(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ComicThumbnail,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleComicModel extends _SingleComicModel {
  _$_SingleComicModel(this.title, @JsonKey(name: 'thumbnail') this.image,
      @JsonKey(name: 'description') this.description)
      : super._();

  factory _$_SingleComicModel.fromJson(Map<String, dynamic> json) =>
      _$$_SingleComicModelFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'thumbnail')
  final ComicThumbnail image;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'SingleComicModel(title: $title, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleComicModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleComicModelCopyWith<_$_SingleComicModel> get copyWith =>
      __$$_SingleComicModelCopyWithImpl<_$_SingleComicModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleComicModelToJson(
      this,
    );
  }
}

abstract class _SingleComicModel extends SingleComicModel {
  factory _SingleComicModel(
          final String title,
          @JsonKey(name: 'thumbnail') final ComicThumbnail image,
          @JsonKey(name: 'description') final String? description) =
      _$_SingleComicModel;
  _SingleComicModel._() : super._();

  factory _SingleComicModel.fromJson(Map<String, dynamic> json) =
      _$_SingleComicModel.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'thumbnail')
  ComicThumbnail get image;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_SingleComicModelCopyWith<_$_SingleComicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ComicThumbnail _$ComicThumbnailFromJson(Map<String, dynamic> json) {
  return _ComicThumbnail.fromJson(json);
}

/// @nodoc
mixin _$ComicThumbnail {
  String get path => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicThumbnailCopyWith<ComicThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicThumbnailCopyWith<$Res> {
  factory $ComicThumbnailCopyWith(
          ComicThumbnail value, $Res Function(ComicThumbnail) then) =
      _$ComicThumbnailCopyWithImpl<$Res, ComicThumbnail>;
  @useResult
  $Res call({String path, String extension});
}

/// @nodoc
class _$ComicThumbnailCopyWithImpl<$Res, $Val extends ComicThumbnail>
    implements $ComicThumbnailCopyWith<$Res> {
  _$ComicThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? extension = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicThumbnailCopyWith<$Res>
    implements $ComicThumbnailCopyWith<$Res> {
  factory _$$_ComicThumbnailCopyWith(
          _$_ComicThumbnail value, $Res Function(_$_ComicThumbnail) then) =
      __$$_ComicThumbnailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String extension});
}

/// @nodoc
class __$$_ComicThumbnailCopyWithImpl<$Res>
    extends _$ComicThumbnailCopyWithImpl<$Res, _$_ComicThumbnail>
    implements _$$_ComicThumbnailCopyWith<$Res> {
  __$$_ComicThumbnailCopyWithImpl(
      _$_ComicThumbnail _value, $Res Function(_$_ComicThumbnail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? extension = null,
  }) {
    return _then(_$_ComicThumbnail(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicThumbnail implements _ComicThumbnail {
  _$_ComicThumbnail(this.path, this.extension);

  factory _$_ComicThumbnail.fromJson(Map<String, dynamic> json) =>
      _$$_ComicThumbnailFromJson(json);

  @override
  final String path;
  @override
  final String extension;

  @override
  String toString() {
    return 'ComicThumbnail(path: $path, extension: $extension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicThumbnail &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.extension, extension) ||
                other.extension == extension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, extension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicThumbnailCopyWith<_$_ComicThumbnail> get copyWith =>
      __$$_ComicThumbnailCopyWithImpl<_$_ComicThumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicThumbnailToJson(
      this,
    );
  }
}

abstract class _ComicThumbnail implements ComicThumbnail {
  factory _ComicThumbnail(final String path, final String extension) =
      _$_ComicThumbnail;

  factory _ComicThumbnail.fromJson(Map<String, dynamic> json) =
      _$_ComicThumbnail.fromJson;

  @override
  String get path;
  @override
  String get extension;
  @override
  @JsonKey(ignore: true)
  _$$_ComicThumbnailCopyWith<_$_ComicThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

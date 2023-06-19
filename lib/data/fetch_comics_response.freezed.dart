// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_comics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchComicsData _$FetchComicsDataFromJson(Map<String, dynamic> json) {
  return _FetchComicsData.fromJson(json);
}

/// @nodoc
mixin _$FetchComicsData {
  List<SingleComicModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchComicsDataCopyWith<FetchComicsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchComicsDataCopyWith<$Res> {
  factory $FetchComicsDataCopyWith(
          FetchComicsData value, $Res Function(FetchComicsData) then) =
      _$FetchComicsDataCopyWithImpl<$Res, FetchComicsData>;
  @useResult
  $Res call({List<SingleComicModel> results});
}

/// @nodoc
class _$FetchComicsDataCopyWithImpl<$Res, $Val extends FetchComicsData>
    implements $FetchComicsDataCopyWith<$Res> {
  _$FetchComicsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SingleComicModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchComicsDataCopyWith<$Res>
    implements $FetchComicsDataCopyWith<$Res> {
  factory _$$_FetchComicsDataCopyWith(
          _$_FetchComicsData value, $Res Function(_$_FetchComicsData) then) =
      __$$_FetchComicsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SingleComicModel> results});
}

/// @nodoc
class __$$_FetchComicsDataCopyWithImpl<$Res>
    extends _$FetchComicsDataCopyWithImpl<$Res, _$_FetchComicsData>
    implements _$$_FetchComicsDataCopyWith<$Res> {
  __$$_FetchComicsDataCopyWithImpl(
      _$_FetchComicsData _value, $Res Function(_$_FetchComicsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_FetchComicsData(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SingleComicModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchComicsData implements _FetchComicsData {
  _$_FetchComicsData(final List<SingleComicModel> results) : _results = results;

  factory _$_FetchComicsData.fromJson(Map<String, dynamic> json) =>
      _$$_FetchComicsDataFromJson(json);

  final List<SingleComicModel> _results;
  @override
  List<SingleComicModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'FetchComicsData(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchComicsData &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchComicsDataCopyWith<_$_FetchComicsData> get copyWith =>
      __$$_FetchComicsDataCopyWithImpl<_$_FetchComicsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchComicsDataToJson(
      this,
    );
  }
}

abstract class _FetchComicsData implements FetchComicsData {
  factory _FetchComicsData(final List<SingleComicModel> results) =
      _$_FetchComicsData;

  factory _FetchComicsData.fromJson(Map<String, dynamic> json) =
      _$_FetchComicsData.fromJson;

  @override
  List<SingleComicModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_FetchComicsDataCopyWith<_$_FetchComicsData> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchComicsResponse _$FetchComicsResponseFromJson(Map<String, dynamic> json) {
  return _FetchComicsResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchComicsResponse {
  FetchComicsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchComicsResponseCopyWith<FetchComicsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchComicsResponseCopyWith<$Res> {
  factory $FetchComicsResponseCopyWith(
          FetchComicsResponse value, $Res Function(FetchComicsResponse) then) =
      _$FetchComicsResponseCopyWithImpl<$Res, FetchComicsResponse>;
  @useResult
  $Res call({FetchComicsData data});

  $FetchComicsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FetchComicsResponseCopyWithImpl<$Res, $Val extends FetchComicsResponse>
    implements $FetchComicsResponseCopyWith<$Res> {
  _$FetchComicsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FetchComicsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchComicsDataCopyWith<$Res> get data {
    return $FetchComicsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FetchComicsResponseCopyWith<$Res>
    implements $FetchComicsResponseCopyWith<$Res> {
  factory _$$_FetchComicsResponseCopyWith(_$_FetchComicsResponse value,
          $Res Function(_$_FetchComicsResponse) then) =
      __$$_FetchComicsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchComicsData data});

  @override
  $FetchComicsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FetchComicsResponseCopyWithImpl<$Res>
    extends _$FetchComicsResponseCopyWithImpl<$Res, _$_FetchComicsResponse>
    implements _$$_FetchComicsResponseCopyWith<$Res> {
  __$$_FetchComicsResponseCopyWithImpl(_$_FetchComicsResponse _value,
      $Res Function(_$_FetchComicsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchComicsResponse(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FetchComicsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchComicsResponse implements _FetchComicsResponse {
  _$_FetchComicsResponse(this.data);

  factory _$_FetchComicsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FetchComicsResponseFromJson(json);

  @override
  final FetchComicsData data;

  @override
  String toString() {
    return 'FetchComicsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchComicsResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchComicsResponseCopyWith<_$_FetchComicsResponse> get copyWith =>
      __$$_FetchComicsResponseCopyWithImpl<_$_FetchComicsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchComicsResponseToJson(
      this,
    );
  }
}

abstract class _FetchComicsResponse implements FetchComicsResponse {
  factory _FetchComicsResponse(final FetchComicsData data) =
      _$_FetchComicsResponse;

  factory _FetchComicsResponse.fromJson(Map<String, dynamic> json) =
      _$_FetchComicsResponse.fromJson;

  @override
  FetchComicsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_FetchComicsResponseCopyWith<_$_FetchComicsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

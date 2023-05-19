// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_details_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComicDetailsPageState {
  Status get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicDetailsPageStateCopyWith<ComicDetailsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDetailsPageStateCopyWith<$Res> {
  factory $ComicDetailsPageStateCopyWith(ComicDetailsPageState value,
          $Res Function(ComicDetailsPageState) then) =
      _$ComicDetailsPageStateCopyWithImpl<$Res, ComicDetailsPageState>;
  @useResult
  $Res call({Status status, String errorMessage});
}

/// @nodoc
class _$ComicDetailsPageStateCopyWithImpl<$Res,
        $Val extends ComicDetailsPageState>
    implements $ComicDetailsPageStateCopyWith<$Res> {
  _$ComicDetailsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicDetailsPageStateCopyWith<$Res>
    implements $ComicDetailsPageStateCopyWith<$Res> {
  factory _$$_ComicDetailsPageStateCopyWith(_$_ComicDetailsPageState value,
          $Res Function(_$_ComicDetailsPageState) then) =
      __$$_ComicDetailsPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String errorMessage});
}

/// @nodoc
class __$$_ComicDetailsPageStateCopyWithImpl<$Res>
    extends _$ComicDetailsPageStateCopyWithImpl<$Res, _$_ComicDetailsPageState>
    implements _$$_ComicDetailsPageStateCopyWith<$Res> {
  __$$_ComicDetailsPageStateCopyWithImpl(_$_ComicDetailsPageState _value,
      $Res Function(_$_ComicDetailsPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ComicDetailsPageState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ComicDetailsPageState implements _ComicDetailsPageState {
  const _$_ComicDetailsPageState(
      {this.status = Status.initial, this.errorMessage = ''});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ComicDetailsPageState(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDetailsPageState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicDetailsPageStateCopyWith<_$_ComicDetailsPageState> get copyWith =>
      __$$_ComicDetailsPageStateCopyWithImpl<_$_ComicDetailsPageState>(
          this, _$identity);
}

abstract class _ComicDetailsPageState implements ComicDetailsPageState {
  const factory _ComicDetailsPageState(
      {final Status status,
      final String errorMessage}) = _$_ComicDetailsPageState;

  @override
  Status get status;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ComicDetailsPageStateCopyWith<_$_ComicDetailsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

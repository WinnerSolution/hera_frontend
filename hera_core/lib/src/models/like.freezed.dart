// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TLike _$TLikeFromJson(Map<String, dynamic> json) {
  return _TLike.fromJson(json);
}

/// @nodoc
class _$TLikeTearOff {
  const _$TLikeTearOff();

// ignore: unused_element
  _TLike call(
      {String postId, String userId, DateTime createdAt, DateTime updatedAt}) {
    return _TLike(
      postId: postId,
      userId: userId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  TLike fromJson(Map<String, Object> json) {
    return TLike.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TLike = _$TLikeTearOff();

/// @nodoc
mixin _$TLike {
// String id,
// String path,
//
  String get postId;
  String get userId; // String commentId,
// DateTime likeTimestampe,
// @Default(true) bool like,
//
  DateTime get createdAt;
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TLikeCopyWith<TLike> get copyWith;
}

/// @nodoc
abstract class $TLikeCopyWith<$Res> {
  factory $TLikeCopyWith(TLike value, $Res Function(TLike) then) =
      _$TLikeCopyWithImpl<$Res>;
  $Res call(
      {String postId, String userId, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$TLikeCopyWithImpl<$Res> implements $TLikeCopyWith<$Res> {
  _$TLikeCopyWithImpl(this._value, this._then);

  final TLike _value;
  // ignore: unused_field
  final $Res Function(TLike) _then;

  @override
  $Res call({
    Object postId = freezed,
    Object userId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed ? _value.postId : postId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TLikeCopyWith<$Res> implements $TLikeCopyWith<$Res> {
  factory _$TLikeCopyWith(_TLike value, $Res Function(_TLike) then) =
      __$TLikeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String postId, String userId, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$TLikeCopyWithImpl<$Res> extends _$TLikeCopyWithImpl<$Res>
    implements _$TLikeCopyWith<$Res> {
  __$TLikeCopyWithImpl(_TLike _value, $Res Function(_TLike) _then)
      : super(_value, (v) => _then(v as _TLike));

  @override
  _TLike get _value => super._value as _TLike;

  @override
  $Res call({
    Object postId = freezed,
    Object userId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_TLike(
      postId: postId == freezed ? _value.postId : postId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TLike extends _TLike with DiagnosticableTreeMixin {
  _$_TLike({this.postId, this.userId, this.createdAt, this.updatedAt})
      : super._();

  factory _$_TLike.fromJson(Map<String, dynamic> json) =>
      _$_$_TLikeFromJson(json);

  @override // String id,
// String path,
//
  final String postId;
  @override
  final String userId;
  @override // String commentId,
// DateTime likeTimestampe,
// @Default(true) bool like,
//
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TLike(postId: $postId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TLike'))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TLike &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TLikeCopyWith<_TLike> get copyWith =>
      __$TLikeCopyWithImpl<_TLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TLikeToJson(this);
  }
}

abstract class _TLike extends TLike {
  _TLike._() : super._();
  factory _TLike(
      {String postId,
      String userId,
      DateTime createdAt,
      DateTime updatedAt}) = _$_TLike;

  factory _TLike.fromJson(Map<String, dynamic> json) = _$_TLike.fromJson;

  @override // String id,
// String path,
//
  String get postId;
  @override
  String get userId;
  @override // String commentId,
// DateTime likeTimestampe,
// @Default(true) bool like,
//
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TLikeCopyWith<_TLike> get copyWith;
}

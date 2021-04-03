// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TFollower _$TFollowerFromJson(Map<String, dynamic> json) {
  return _TFollower.fromJson(json);
}

/// @nodoc
class _$TFollowerTearOff {
  const _$TFollowerTearOff();

// ignore: unused_element
  _TFollower call(
      {String followerId,
      String feedItemId,
      String feedType,
      String followingId,
      DateTime createdAt,
      DateTime updatedAt}) {
    return _TFollower(
      followerId: followerId,
      feedItemId: feedItemId,
      feedType: feedType,
      followingId: followingId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  TFollower fromJson(Map<String, Object> json) {
    return TFollower.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TFollower = _$TFollowerTearOff();

/// @nodoc
mixin _$TFollower {
// String id,
// String path,
//
  String get followerId;
  String get feedItemId;
  String get feedType;
  String get followingId; //
  DateTime get createdAt;
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TFollowerCopyWith<TFollower> get copyWith;
}

/// @nodoc
abstract class $TFollowerCopyWith<$Res> {
  factory $TFollowerCopyWith(TFollower value, $Res Function(TFollower) then) =
      _$TFollowerCopyWithImpl<$Res>;
  $Res call(
      {String followerId,
      String feedItemId,
      String feedType,
      String followingId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TFollowerCopyWithImpl<$Res> implements $TFollowerCopyWith<$Res> {
  _$TFollowerCopyWithImpl(this._value, this._then);

  final TFollower _value;
  // ignore: unused_field
  final $Res Function(TFollower) _then;

  @override
  $Res call({
    Object followerId = freezed,
    Object feedItemId = freezed,
    Object feedType = freezed,
    Object followingId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      followerId:
          followerId == freezed ? _value.followerId : followerId as String,
      feedItemId:
          feedItemId == freezed ? _value.feedItemId : feedItemId as String,
      feedType: feedType == freezed ? _value.feedType : feedType as String,
      followingId:
          followingId == freezed ? _value.followingId : followingId as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TFollowerCopyWith<$Res> implements $TFollowerCopyWith<$Res> {
  factory _$TFollowerCopyWith(
          _TFollower value, $Res Function(_TFollower) then) =
      __$TFollowerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String followerId,
      String feedItemId,
      String feedType,
      String followingId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$TFollowerCopyWithImpl<$Res> extends _$TFollowerCopyWithImpl<$Res>
    implements _$TFollowerCopyWith<$Res> {
  __$TFollowerCopyWithImpl(_TFollower _value, $Res Function(_TFollower) _then)
      : super(_value, (v) => _then(v as _TFollower));

  @override
  _TFollower get _value => super._value as _TFollower;

  @override
  $Res call({
    Object followerId = freezed,
    Object feedItemId = freezed,
    Object feedType = freezed,
    Object followingId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_TFollower(
      followerId:
          followerId == freezed ? _value.followerId : followerId as String,
      feedItemId:
          feedItemId == freezed ? _value.feedItemId : feedItemId as String,
      feedType: feedType == freezed ? _value.feedType : feedType as String,
      followingId:
          followingId == freezed ? _value.followingId : followingId as String,
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
class _$_TFollower extends _TFollower with DiagnosticableTreeMixin {
  _$_TFollower(
      {this.followerId,
      this.feedItemId,
      this.feedType,
      this.followingId,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_TFollower.fromJson(Map<String, dynamic> json) =>
      _$_$_TFollowerFromJson(json);

  @override // String id,
// String path,
//
  final String followerId;
  @override
  final String feedItemId;
  @override
  final String feedType;
  @override
  final String followingId;
  @override //
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TFollower(followerId: $followerId, feedItemId: $feedItemId, feedType: $feedType, followingId: $followingId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TFollower'))
      ..add(DiagnosticsProperty('followerId', followerId))
      ..add(DiagnosticsProperty('feedItemId', feedItemId))
      ..add(DiagnosticsProperty('feedType', feedType))
      ..add(DiagnosticsProperty('followingId', followingId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TFollower &&
            (identical(other.followerId, followerId) ||
                const DeepCollectionEquality()
                    .equals(other.followerId, followerId)) &&
            (identical(other.feedItemId, feedItemId) ||
                const DeepCollectionEquality()
                    .equals(other.feedItemId, feedItemId)) &&
            (identical(other.feedType, feedType) ||
                const DeepCollectionEquality()
                    .equals(other.feedType, feedType)) &&
            (identical(other.followingId, followingId) ||
                const DeepCollectionEquality()
                    .equals(other.followingId, followingId)) &&
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
      const DeepCollectionEquality().hash(followerId) ^
      const DeepCollectionEquality().hash(feedItemId) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(followingId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TFollowerCopyWith<_TFollower> get copyWith =>
      __$TFollowerCopyWithImpl<_TFollower>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TFollowerToJson(this);
  }
}

abstract class _TFollower extends TFollower {
  _TFollower._() : super._();
  factory _TFollower(
      {String followerId,
      String feedItemId,
      String feedType,
      String followingId,
      DateTime createdAt,
      DateTime updatedAt}) = _$_TFollower;

  factory _TFollower.fromJson(Map<String, dynamic> json) =
      _$_TFollower.fromJson;

  @override // String id,
// String path,
//
  String get followerId;
  @override
  String get feedItemId;
  @override
  String get feedType;
  @override
  String get followingId;
  @override //
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TFollowerCopyWith<_TFollower> get copyWith;
}

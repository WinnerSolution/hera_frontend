// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TUserStats _$TUserStatsFromJson(Map<String, dynamic> json) {
  return _TUserStats.fromJson(json);
}

/// @nodoc
class _$TUserStatsTearOff {
  const _$TUserStatsTearOff();

// ignore: unused_element
  _TUserStats call(
      {String id,
      DateTime lastPostTime,
      int postsCount,
      int likesCount,
      int followingCount,
      int followersCount}) {
    return _TUserStats(
      id: id,
      lastPostTime: lastPostTime,
      postsCount: postsCount,
      likesCount: likesCount,
      followingCount: followingCount,
      followersCount: followersCount,
    );
  }

// ignore: unused_element
  TUserStats fromJson(Map<String, Object> json) {
    return TUserStats.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TUserStats = _$TUserStatsTearOff();

/// @nodoc
mixin _$TUserStats {
  String get id;
  DateTime get lastPostTime;
  int get postsCount;
  int get likesCount;
  int get followingCount;
  int get followersCount;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TUserStatsCopyWith<TUserStats> get copyWith;
}

/// @nodoc
abstract class $TUserStatsCopyWith<$Res> {
  factory $TUserStatsCopyWith(
          TUserStats value, $Res Function(TUserStats) then) =
      _$TUserStatsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime lastPostTime,
      int postsCount,
      int likesCount,
      int followingCount,
      int followersCount});
}

/// @nodoc
class _$TUserStatsCopyWithImpl<$Res> implements $TUserStatsCopyWith<$Res> {
  _$TUserStatsCopyWithImpl(this._value, this._then);

  final TUserStats _value;
  // ignore: unused_field
  final $Res Function(TUserStats) _then;

  @override
  $Res call({
    Object id = freezed,
    Object lastPostTime = freezed,
    Object postsCount = freezed,
    Object likesCount = freezed,
    Object followingCount = freezed,
    Object followersCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      lastPostTime: lastPostTime == freezed
          ? _value.lastPostTime
          : lastPostTime as DateTime,
      postsCount: postsCount == freezed ? _value.postsCount : postsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      followingCount: followingCount == freezed
          ? _value.followingCount
          : followingCount as int,
      followersCount: followersCount == freezed
          ? _value.followersCount
          : followersCount as int,
    ));
  }
}

/// @nodoc
abstract class _$TUserStatsCopyWith<$Res> implements $TUserStatsCopyWith<$Res> {
  factory _$TUserStatsCopyWith(
          _TUserStats value, $Res Function(_TUserStats) then) =
      __$TUserStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime lastPostTime,
      int postsCount,
      int likesCount,
      int followingCount,
      int followersCount});
}

/// @nodoc
class __$TUserStatsCopyWithImpl<$Res> extends _$TUserStatsCopyWithImpl<$Res>
    implements _$TUserStatsCopyWith<$Res> {
  __$TUserStatsCopyWithImpl(
      _TUserStats _value, $Res Function(_TUserStats) _then)
      : super(_value, (v) => _then(v as _TUserStats));

  @override
  _TUserStats get _value => super._value as _TUserStats;

  @override
  $Res call({
    Object id = freezed,
    Object lastPostTime = freezed,
    Object postsCount = freezed,
    Object likesCount = freezed,
    Object followingCount = freezed,
    Object followersCount = freezed,
  }) {
    return _then(_TUserStats(
      id: id == freezed ? _value.id : id as String,
      lastPostTime: lastPostTime == freezed
          ? _value.lastPostTime
          : lastPostTime as DateTime,
      postsCount: postsCount == freezed ? _value.postsCount : postsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      followingCount: followingCount == freezed
          ? _value.followingCount
          : followingCount as int,
      followersCount: followersCount == freezed
          ? _value.followersCount
          : followersCount as int,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TUserStats extends _TUserStats with DiagnosticableTreeMixin {
  _$_TUserStats(
      {this.id,
      this.lastPostTime,
      this.postsCount,
      this.likesCount,
      this.followingCount,
      this.followersCount})
      : super._();

  factory _$_TUserStats.fromJson(Map<String, dynamic> json) =>
      _$_$_TUserStatsFromJson(json);

  @override
  final String id;
  @override
  final DateTime lastPostTime;
  @override
  final int postsCount;
  @override
  final int likesCount;
  @override
  final int followingCount;
  @override
  final int followersCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TUserStats(id: $id, lastPostTime: $lastPostTime, postsCount: $postsCount, likesCount: $likesCount, followingCount: $followingCount, followersCount: $followersCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TUserStats'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lastPostTime', lastPostTime))
      ..add(DiagnosticsProperty('postsCount', postsCount))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('followingCount', followingCount))
      ..add(DiagnosticsProperty('followersCount', followersCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TUserStats &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastPostTime, lastPostTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastPostTime, lastPostTime)) &&
            (identical(other.postsCount, postsCount) ||
                const DeepCollectionEquality()
                    .equals(other.postsCount, postsCount)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.followingCount, followingCount) ||
                const DeepCollectionEquality()
                    .equals(other.followingCount, followingCount)) &&
            (identical(other.followersCount, followersCount) ||
                const DeepCollectionEquality()
                    .equals(other.followersCount, followersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastPostTime) ^
      const DeepCollectionEquality().hash(postsCount) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(followingCount) ^
      const DeepCollectionEquality().hash(followersCount);

  @JsonKey(ignore: true)
  @override
  _$TUserStatsCopyWith<_TUserStats> get copyWith =>
      __$TUserStatsCopyWithImpl<_TUserStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TUserStatsToJson(this);
  }
}

abstract class _TUserStats extends TUserStats {
  _TUserStats._() : super._();
  factory _TUserStats(
      {String id,
      DateTime lastPostTime,
      int postsCount,
      int likesCount,
      int followingCount,
      int followersCount}) = _$_TUserStats;

  factory _TUserStats.fromJson(Map<String, dynamic> json) =
      _$_TUserStats.fromJson;

  @override
  String get id;
  @override
  DateTime get lastPostTime;
  @override
  int get postsCount;
  @override
  int get likesCount;
  @override
  int get followingCount;
  @override
  int get followersCount;
  @override
  @JsonKey(ignore: true)
  _$TUserStatsCopyWith<_TUserStats> get copyWith;
}

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
      int commentsCount = 0,
      int likesCount = 0,
      int sharesCount = 0,
      int postsCount = 0,
      int followingCount = 0,
      int followersCount = 0,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt}) {
    return _TUserStats(
      id: id,
      commentsCount: commentsCount,
      likesCount: likesCount,
      sharesCount: sharesCount,
      postsCount: postsCount,
      followingCount: followingCount,
      followersCount: followersCount,
      presenceState: presenceState,
      createdAt: createdAt,
      updatedAt: updatedAt,
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
  String get id; //
  int get commentsCount;
  int get likesCount;
  int get sharesCount; //
  int get postsCount;
  int get followingCount;
  int get followersCount;
  PresenceState get presenceState; //
  DateTime get createdAt;
  DateTime get updatedAt;

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
      int commentsCount,
      int likesCount,
      int sharesCount,
      int postsCount,
      int followingCount,
      int followersCount,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt});

  $PresenceStateCopyWith<$Res> get presenceState;
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
    Object commentsCount = freezed,
    Object likesCount = freezed,
    Object sharesCount = freezed,
    Object postsCount = freezed,
    Object followingCount = freezed,
    Object followersCount = freezed,
    Object presenceState = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      commentsCount: commentsCount == freezed
          ? _value.commentsCount
          : commentsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      sharesCount:
          sharesCount == freezed ? _value.sharesCount : sharesCount as int,
      postsCount: postsCount == freezed ? _value.postsCount : postsCount as int,
      followingCount: followingCount == freezed
          ? _value.followingCount
          : followingCount as int,
      followersCount: followersCount == freezed
          ? _value.followersCount
          : followersCount as int,
      presenceState: presenceState == freezed
          ? _value.presenceState
          : presenceState as PresenceState,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }

  @override
  $PresenceStateCopyWith<$Res> get presenceState {
    if (_value.presenceState == null) {
      return null;
    }
    return $PresenceStateCopyWith<$Res>(_value.presenceState, (value) {
      return _then(_value.copyWith(presenceState: value));
    });
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
      int commentsCount,
      int likesCount,
      int sharesCount,
      int postsCount,
      int followingCount,
      int followersCount,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $PresenceStateCopyWith<$Res> get presenceState;
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
    Object commentsCount = freezed,
    Object likesCount = freezed,
    Object sharesCount = freezed,
    Object postsCount = freezed,
    Object followingCount = freezed,
    Object followersCount = freezed,
    Object presenceState = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_TUserStats(
      id: id == freezed ? _value.id : id as String,
      commentsCount: commentsCount == freezed
          ? _value.commentsCount
          : commentsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      sharesCount:
          sharesCount == freezed ? _value.sharesCount : sharesCount as int,
      postsCount: postsCount == freezed ? _value.postsCount : postsCount as int,
      followingCount: followingCount == freezed
          ? _value.followingCount
          : followingCount as int,
      followersCount: followersCount == freezed
          ? _value.followersCount
          : followersCount as int,
      presenceState: presenceState == freezed
          ? _value.presenceState
          : presenceState as PresenceState,
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
class _$_TUserStats extends _TUserStats with DiagnosticableTreeMixin {
  _$_TUserStats(
      {this.id,
      this.commentsCount = 0,
      this.likesCount = 0,
      this.sharesCount = 0,
      this.postsCount = 0,
      this.followingCount = 0,
      this.followersCount = 0,
      this.presenceState,
      this.createdAt,
      this.updatedAt})
      : assert(commentsCount != null),
        assert(likesCount != null),
        assert(sharesCount != null),
        assert(postsCount != null),
        assert(followingCount != null),
        assert(followersCount != null),
        super._();

  factory _$_TUserStats.fromJson(Map<String, dynamic> json) =>
      _$_$_TUserStatsFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: 0)
  @override //
  final int commentsCount;
  @JsonKey(defaultValue: 0)
  @override
  final int likesCount;
  @JsonKey(defaultValue: 0)
  @override
  final int sharesCount;
  @JsonKey(defaultValue: 0)
  @override //
  final int postsCount;
  @JsonKey(defaultValue: 0)
  @override
  final int followingCount;
  @JsonKey(defaultValue: 0)
  @override
  final int followersCount;
  @override
  final PresenceState presenceState;
  @override //
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TUserStats(id: $id, commentsCount: $commentsCount, likesCount: $likesCount, sharesCount: $sharesCount, postsCount: $postsCount, followingCount: $followingCount, followersCount: $followersCount, presenceState: $presenceState, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TUserStats'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('commentsCount', commentsCount))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('sharesCount', sharesCount))
      ..add(DiagnosticsProperty('postsCount', postsCount))
      ..add(DiagnosticsProperty('followingCount', followingCount))
      ..add(DiagnosticsProperty('followersCount', followersCount))
      ..add(DiagnosticsProperty('presenceState', presenceState))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TUserStats &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.commentsCount, commentsCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentsCount, commentsCount)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.sharesCount, sharesCount) ||
                const DeepCollectionEquality()
                    .equals(other.sharesCount, sharesCount)) &&
            (identical(other.postsCount, postsCount) ||
                const DeepCollectionEquality()
                    .equals(other.postsCount, postsCount)) &&
            (identical(other.followingCount, followingCount) ||
                const DeepCollectionEquality()
                    .equals(other.followingCount, followingCount)) &&
            (identical(other.followersCount, followersCount) ||
                const DeepCollectionEquality()
                    .equals(other.followersCount, followersCount)) &&
            (identical(other.presenceState, presenceState) ||
                const DeepCollectionEquality()
                    .equals(other.presenceState, presenceState)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(commentsCount) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(sharesCount) ^
      const DeepCollectionEquality().hash(postsCount) ^
      const DeepCollectionEquality().hash(followingCount) ^
      const DeepCollectionEquality().hash(followersCount) ^
      const DeepCollectionEquality().hash(presenceState) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

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
      int commentsCount,
      int likesCount,
      int sharesCount,
      int postsCount,
      int followingCount,
      int followersCount,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt}) = _$_TUserStats;

  factory _TUserStats.fromJson(Map<String, dynamic> json) =
      _$_TUserStats.fromJson;

  @override
  String get id;
  @override //
  int get commentsCount;
  @override
  int get likesCount;
  @override
  int get sharesCount;
  @override //
  int get postsCount;
  @override
  int get followingCount;
  @override
  int get followersCount;
  @override
  PresenceState get presenceState;
  @override //
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TUserStatsCopyWith<_TUserStats> get copyWith;
}

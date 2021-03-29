// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TPostStats _$TPostStatsFromJson(Map<String, dynamic> json) {
  return _TPostStats.fromJson(json);
}

/// @nodoc
class _$TPostStatsTearOff {
  const _$TPostStatsTearOff();

// ignore: unused_element
  _TPostStats call(
      {String id,
      DateTime lastPostTime,
      int shareCount = 0,
      int likesCount = 0,
      int commentCount = 0,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt}) {
    return _TPostStats(
      id: id,
      lastPostTime: lastPostTime,
      shareCount: shareCount,
      likesCount: likesCount,
      commentCount: commentCount,
      presenceState: presenceState,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  TPostStats fromJson(Map<String, Object> json) {
    return TPostStats.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TPostStats = _$TPostStatsTearOff();

/// @nodoc
mixin _$TPostStats {
  String get id;
  DateTime get lastPostTime;
  int get shareCount;
  int get likesCount;
  int get commentCount;
  PresenceState get presenceState; //
  DateTime get createdAt;
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TPostStatsCopyWith<TPostStats> get copyWith;
}

/// @nodoc
abstract class $TPostStatsCopyWith<$Res> {
  factory $TPostStatsCopyWith(
          TPostStats value, $Res Function(TPostStats) then) =
      _$TPostStatsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime lastPostTime,
      int shareCount,
      int likesCount,
      int commentCount,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt});

  $PresenceStateCopyWith<$Res> get presenceState;
}

/// @nodoc
class _$TPostStatsCopyWithImpl<$Res> implements $TPostStatsCopyWith<$Res> {
  _$TPostStatsCopyWithImpl(this._value, this._then);

  final TPostStats _value;
  // ignore: unused_field
  final $Res Function(TPostStats) _then;

  @override
  $Res call({
    Object id = freezed,
    Object lastPostTime = freezed,
    Object shareCount = freezed,
    Object likesCount = freezed,
    Object commentCount = freezed,
    Object presenceState = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      lastPostTime: lastPostTime == freezed
          ? _value.lastPostTime
          : lastPostTime as DateTime,
      shareCount: shareCount == freezed ? _value.shareCount : shareCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      commentCount:
          commentCount == freezed ? _value.commentCount : commentCount as int,
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
abstract class _$TPostStatsCopyWith<$Res> implements $TPostStatsCopyWith<$Res> {
  factory _$TPostStatsCopyWith(
          _TPostStats value, $Res Function(_TPostStats) then) =
      __$TPostStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime lastPostTime,
      int shareCount,
      int likesCount,
      int commentCount,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $PresenceStateCopyWith<$Res> get presenceState;
}

/// @nodoc
class __$TPostStatsCopyWithImpl<$Res> extends _$TPostStatsCopyWithImpl<$Res>
    implements _$TPostStatsCopyWith<$Res> {
  __$TPostStatsCopyWithImpl(
      _TPostStats _value, $Res Function(_TPostStats) _then)
      : super(_value, (v) => _then(v as _TPostStats));

  @override
  _TPostStats get _value => super._value as _TPostStats;

  @override
  $Res call({
    Object id = freezed,
    Object lastPostTime = freezed,
    Object shareCount = freezed,
    Object likesCount = freezed,
    Object commentCount = freezed,
    Object presenceState = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_TPostStats(
      id: id == freezed ? _value.id : id as String,
      lastPostTime: lastPostTime == freezed
          ? _value.lastPostTime
          : lastPostTime as DateTime,
      shareCount: shareCount == freezed ? _value.shareCount : shareCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      commentCount:
          commentCount == freezed ? _value.commentCount : commentCount as int,
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
class _$_TPostStats extends _TPostStats with DiagnosticableTreeMixin {
  _$_TPostStats(
      {this.id,
      this.lastPostTime,
      this.shareCount = 0,
      this.likesCount = 0,
      this.commentCount = 0,
      this.presenceState,
      this.createdAt,
      this.updatedAt})
      : assert(shareCount != null),
        assert(likesCount != null),
        assert(commentCount != null),
        super._();

  factory _$_TPostStats.fromJson(Map<String, dynamic> json) =>
      _$_$_TPostStatsFromJson(json);

  @override
  final String id;
  @override
  final DateTime lastPostTime;
  @JsonKey(defaultValue: 0)
  @override
  final int shareCount;
  @JsonKey(defaultValue: 0)
  @override
  final int likesCount;
  @JsonKey(defaultValue: 0)
  @override
  final int commentCount;
  @override
  final PresenceState presenceState;
  @override //
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TPostStats(id: $id, lastPostTime: $lastPostTime, shareCount: $shareCount, likesCount: $likesCount, commentCount: $commentCount, presenceState: $presenceState, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TPostStats'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lastPostTime', lastPostTime))
      ..add(DiagnosticsProperty('shareCount', shareCount))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('commentCount', commentCount))
      ..add(DiagnosticsProperty('presenceState', presenceState))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TPostStats &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastPostTime, lastPostTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastPostTime, lastPostTime)) &&
            (identical(other.shareCount, shareCount) ||
                const DeepCollectionEquality()
                    .equals(other.shareCount, shareCount)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
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
      const DeepCollectionEquality().hash(lastPostTime) ^
      const DeepCollectionEquality().hash(shareCount) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(presenceState) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TPostStatsCopyWith<_TPostStats> get copyWith =>
      __$TPostStatsCopyWithImpl<_TPostStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TPostStatsToJson(this);
  }
}

abstract class _TPostStats extends TPostStats {
  _TPostStats._() : super._();
  factory _TPostStats(
      {String id,
      DateTime lastPostTime,
      int shareCount,
      int likesCount,
      int commentCount,
      PresenceState presenceState,
      DateTime createdAt,
      DateTime updatedAt}) = _$_TPostStats;

  factory _TPostStats.fromJson(Map<String, dynamic> json) =
      _$_TPostStats.fromJson;

  @override
  String get id;
  @override
  DateTime get lastPostTime;
  @override
  int get shareCount;
  @override
  int get likesCount;
  @override
  int get commentCount;
  @override
  PresenceState get presenceState;
  @override //
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TPostStatsCopyWith<_TPostStats> get copyWith;
}

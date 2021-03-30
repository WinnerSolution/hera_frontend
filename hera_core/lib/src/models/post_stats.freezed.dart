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
      int sharesCount = 0,
      int likesCount = 0,
      int commentsCount = 0,
      DateTime createdAt,
      DateTime updatedAt}) {
    return _TPostStats(
      id: id,
      sharesCount: sharesCount,
      likesCount: likesCount,
      commentsCount: commentsCount,
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
  String get id; //
  int get sharesCount;
  int get likesCount;
  int get commentsCount; //
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
      int sharesCount,
      int likesCount,
      int commentsCount,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object sharesCount = freezed,
    Object likesCount = freezed,
    Object commentsCount = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      sharesCount:
          sharesCount == freezed ? _value.sharesCount : sharesCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      commentsCount: commentsCount == freezed
          ? _value.commentsCount
          : commentsCount as int,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
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
      int sharesCount,
      int likesCount,
      int commentsCount,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object sharesCount = freezed,
    Object likesCount = freezed,
    Object commentsCount = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_TPostStats(
      id: id == freezed ? _value.id : id as String,
      sharesCount:
          sharesCount == freezed ? _value.sharesCount : sharesCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      commentsCount: commentsCount == freezed
          ? _value.commentsCount
          : commentsCount as int,
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
      this.sharesCount = 0,
      this.likesCount = 0,
      this.commentsCount = 0,
      this.createdAt,
      this.updatedAt})
      : assert(sharesCount != null),
        assert(likesCount != null),
        assert(commentsCount != null),
        super._();

  factory _$_TPostStats.fromJson(Map<String, dynamic> json) =>
      _$_$_TPostStatsFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: 0)
  @override //
  final int sharesCount;
  @JsonKey(defaultValue: 0)
  @override
  final int likesCount;
  @JsonKey(defaultValue: 0)
  @override
  final int commentsCount;
  @override //
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TPostStats(id: $id, sharesCount: $sharesCount, likesCount: $likesCount, commentsCount: $commentsCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TPostStats'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sharesCount', sharesCount))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('commentsCount', commentsCount))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TPostStats &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sharesCount, sharesCount) ||
                const DeepCollectionEquality()
                    .equals(other.sharesCount, sharesCount)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.commentsCount, commentsCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentsCount, commentsCount)) &&
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
      const DeepCollectionEquality().hash(sharesCount) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(commentsCount) ^
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
      int sharesCount,
      int likesCount,
      int commentsCount,
      DateTime createdAt,
      DateTime updatedAt}) = _$_TPostStats;

  factory _TPostStats.fromJson(Map<String, dynamic> json) =
      _$_TPostStats.fromJson;

  @override
  String get id;
  @override //
  int get sharesCount;
  @override
  int get likesCount;
  @override
  int get commentsCount;
  @override //
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TPostStatsCopyWith<_TPostStats> get copyWith;
}

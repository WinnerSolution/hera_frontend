// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TComment _$TCommentFromJson(Map<String, dynamic> json) {
  return _TComment.fromJson(json);
}

/// @nodoc
class _$TCommentTearOff {
  const _$TCommentTearOff();

// ignore: unused_element
  _TComment call(
      {String id,
      String comment,
      String userId,
      String postId,
      String parentId,
      DateTime createdAt,
      DateTime updatedAt}) {
    return _TComment(
      id: id,
      comment: comment,
      userId: userId,
      postId: postId,
      parentId: parentId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  TComment fromJson(Map<String, Object> json) {
    return TComment.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TComment = _$TCommentTearOff();

/// @nodoc
mixin _$TComment {
  String get id;
  String get comment;
  String get userId;
  String get postId;
  String get parentId; //
  DateTime get createdAt;
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TCommentCopyWith<TComment> get copyWith;
}

/// @nodoc
abstract class $TCommentCopyWith<$Res> {
  factory $TCommentCopyWith(TComment value, $Res Function(TComment) then) =
      _$TCommentCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String comment,
      String userId,
      String postId,
      String parentId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TCommentCopyWithImpl<$Res> implements $TCommentCopyWith<$Res> {
  _$TCommentCopyWithImpl(this._value, this._then);

  final TComment _value;
  // ignore: unused_field
  final $Res Function(TComment) _then;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object userId = freezed,
    Object postId = freezed,
    Object parentId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      comment: comment == freezed ? _value.comment : comment as String,
      userId: userId == freezed ? _value.userId : userId as String,
      postId: postId == freezed ? _value.postId : postId as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TCommentCopyWith<$Res> implements $TCommentCopyWith<$Res> {
  factory _$TCommentCopyWith(_TComment value, $Res Function(_TComment) then) =
      __$TCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String comment,
      String userId,
      String postId,
      String parentId,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$TCommentCopyWithImpl<$Res> extends _$TCommentCopyWithImpl<$Res>
    implements _$TCommentCopyWith<$Res> {
  __$TCommentCopyWithImpl(_TComment _value, $Res Function(_TComment) _then)
      : super(_value, (v) => _then(v as _TComment));

  @override
  _TComment get _value => super._value as _TComment;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object userId = freezed,
    Object postId = freezed,
    Object parentId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_TComment(
      id: id == freezed ? _value.id : id as String,
      comment: comment == freezed ? _value.comment : comment as String,
      userId: userId == freezed ? _value.userId : userId as String,
      postId: postId == freezed ? _value.postId : postId as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
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
class _$_TComment extends _TComment with DiagnosticableTreeMixin {
  _$_TComment(
      {this.id,
      this.comment,
      this.userId,
      this.postId,
      this.parentId,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_TComment.fromJson(Map<String, dynamic> json) =>
      _$_$_TCommentFromJson(json);

  @override
  final String id;
  @override
  final String comment;
  @override
  final String userId;
  @override
  final String postId;
  @override
  final String parentId;
  @override //
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TComment(id: $id, comment: $comment, userId: $userId, postId: $postId, parentId: $parentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TComment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('parentId', parentId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TComment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
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
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TCommentCopyWith<_TComment> get copyWith =>
      __$TCommentCopyWithImpl<_TComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TCommentToJson(this);
  }
}

abstract class _TComment extends TComment {
  _TComment._() : super._();
  factory _TComment(
      {String id,
      String comment,
      String userId,
      String postId,
      String parentId,
      DateTime createdAt,
      DateTime updatedAt}) = _$_TComment;

  factory _TComment.fromJson(Map<String, dynamic> json) = _$_TComment.fromJson;

  @override
  String get id;
  @override
  String get comment;
  @override
  String get userId;
  @override
  String get postId;
  @override
  String get parentId;
  @override //
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TCommentCopyWith<_TComment> get copyWith;
}

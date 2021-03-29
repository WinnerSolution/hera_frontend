// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TComment _$_$_TCommentFromJson(Map<String, dynamic> json) {
  return _$_TComment(
    id: json['id'] as String,
    comment: json['comment'] as String,
    userId: json['userId'] as String,
    postId: json['postId'] as String,
    parentId: json['parentId'] as String,
    createdAt:
        const CustomDateTimeConverter().fromJson(json['createdAt'] as DateTime),
    updatedAt:
        const CustomDateTimeConverter().fromJson(json['updatedAt'] as DateTime),
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TCommentToJson(_$_TComment instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'comment': instance.comment,
      'userId': instance.userId,
      'postId': instance.postId,
      'parentId': instance.parentId,
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TLike _$_$_TLikeFromJson(Map<String, dynamic> json) {
  return _$_TLike(
    postId: json['postId'] as String,
    userId: json['userId'] as String,
    commentId: json['commentId'] as String,
    likeTimestampe: const CustomDateTimeConverter()
        .fromJson(json['likeTimestampe'] as DateTime),
    like: json['like'] as bool ?? true,
    createdAt:
        const CustomDateTimeConverter().fromJson(json['createdAt'] as DateTime),
    updatedAt:
        const CustomDateTimeConverter().fromJson(json['updatedAt'] as DateTime),
  )
    ..id = json['id'] as String
    ..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TLikeToJson(_$_TLike instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'postId': instance.postId,
      'userId': instance.userId,
      'commentId': instance.commentId,
      'likeTimestampe':
          const CustomDateTimeConverter().toJson(instance.likeTimestampe),
      'like': instance.like,
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

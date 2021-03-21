// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TLike _$_$_TLikeFromJson(Map<String, dynamic> json) {
  return _$_TLike(
    postId: json['postId'] as String,
    userId: json['userId'] as String,
    likeTimestampe: const CustomDateTimeConverter()
        .fromJson(json['likeTimestampe'] as DateTime),
  )
    ..id = json['id'] as String
    ..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TLikeToJson(_$_TLike instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'postId': instance.postId,
      'userId': instance.userId,
      'likeTimestampe':
          const CustomDateTimeConverter().toJson(instance.likeTimestampe),
    };

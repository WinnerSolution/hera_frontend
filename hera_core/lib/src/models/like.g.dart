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
  );
}

Map<String, dynamic> _$_$_TLikeToJson(_$_TLike instance) => <String, dynamic>{
      'postId': instance.postId,
      'userId': instance.userId,
      'likeTimestampe':
          const CustomDateTimeConverter().toJson(instance.likeTimestampe),
    };

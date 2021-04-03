// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TFollower _$_$_TFollowerFromJson(Map<String, dynamic> json) {
  return _$_TFollower(
    followerId: json['followerId'] as String,
    feedItemId: json['feedItemId'] as String,
    feedType: json['feedType'] as String,
    followingId: json['followingId'] as String,
    createdAt:
        const CustomDateTimeConverter().fromJson(json['createdAt'] as DateTime),
    updatedAt:
        const CustomDateTimeConverter().fromJson(json['updatedAt'] as DateTime),
  )
    ..id = json['id'] as String
    ..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TFollowerToJson(_$_TFollower instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'followerId': instance.followerId,
      'feedItemId': instance.feedItemId,
      'feedType': instance.feedType,
      'followingId': instance.followingId,
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

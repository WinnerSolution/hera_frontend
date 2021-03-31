// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TUserStats _$_$_TUserStatsFromJson(Map<String, dynamic> json) {
  return _$_TUserStats(
    commentsCount: json['commentsCount'] as int ?? 0,
    likesCount: json['likesCount'] as int ?? 0,
    sharesCount: json['sharesCount'] as int ?? 0,
    postsCount: json['postsCount'] as int ?? 0,
    followingCount: json['followingCount'] as int ?? 0,
    followersCount: json['followersCount'] as int ?? 0,
    presenceState: json['presenceState'] == null
        ? null
        : PresenceState.fromJson(json['presenceState'] as Map<String, dynamic>),
    createdAt:
        const CustomDateTimeConverter().fromJson(json['createdAt'] as DateTime),
    updatedAt:
        const CustomDateTimeConverter().fromJson(json['updatedAt'] as DateTime),
  )
    ..id = json['id'] as String
    ..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TUserStatsToJson(_$_TUserStats instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'commentsCount': instance.commentsCount,
      'likesCount': instance.likesCount,
      'sharesCount': instance.sharesCount,
      'postsCount': instance.postsCount,
      'followingCount': instance.followingCount,
      'followersCount': instance.followersCount,
      'presenceState': instance.presenceState?.toJson(),
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

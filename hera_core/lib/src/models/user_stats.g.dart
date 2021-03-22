// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TUserStats _$_$_TUserStatsFromJson(Map<String, dynamic> json) {
  return _$_TUserStats(
    id: json['id'] as String,
    lastPostTime: const CustomDateTimeConverter()
        .fromJson(json['lastPostTime'] as DateTime),
    postsCount: json['postsCount'] as int ?? 0,
    likesCount: json['likesCount'] as int ?? 0,
    followingCount: json['followingCount'] as int ?? 0,
    followersCount: json['followersCount'] as int ?? 0,
    presenceState: json['presenceState'] == null
        ? null
        : PresenceState.fromJson(json['presenceState'] as Map<String, dynamic>),
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TUserStatsToJson(_$_TUserStats instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'lastPostTime':
          const CustomDateTimeConverter().toJson(instance.lastPostTime),
      'postsCount': instance.postsCount,
      'likesCount': instance.likesCount,
      'followingCount': instance.followingCount,
      'followersCount': instance.followersCount,
      'presenceState': instance.presenceState?.toJson(),
    };

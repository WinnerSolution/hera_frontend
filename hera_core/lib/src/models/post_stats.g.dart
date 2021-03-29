// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TPostStats _$_$_TPostStatsFromJson(Map<String, dynamic> json) {
  return _$_TPostStats(
    id: json['id'] as String,
    lastPostTime: const CustomDateTimeConverter()
        .fromJson(json['lastPostTime'] as DateTime),
    shareCount: json['shareCount'] as int ?? 0,
    likesCount: json['likesCount'] as int ?? 0,
    commentCount: json['commentCount'] as int ?? 0,
    presenceState: json['presenceState'] == null
        ? null
        : PresenceState.fromJson(json['presenceState'] as Map<String, dynamic>),
    createdAt:
        const CustomDateTimeConverter().fromJson(json['createdAt'] as DateTime),
    updatedAt:
        const CustomDateTimeConverter().fromJson(json['updatedAt'] as DateTime),
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TPostStatsToJson(_$_TPostStats instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'lastPostTime':
          const CustomDateTimeConverter().toJson(instance.lastPostTime),
      'shareCount': instance.shareCount,
      'likesCount': instance.likesCount,
      'commentCount': instance.commentCount,
      'presenceState': instance.presenceState?.toJson(),
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

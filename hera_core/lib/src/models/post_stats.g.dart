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
    sharesCount: json['sharesCount'] as int ?? 0,
    likesCount: json['likesCount'] as int ?? 0,
    commentsCount: json['commentsCount'] as int ?? 0,
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
      'sharesCount': instance.sharesCount,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'presenceState': instance.presenceState?.toJson(),
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

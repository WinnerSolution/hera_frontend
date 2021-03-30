// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TPostStats _$_$_TPostStatsFromJson(Map<String, dynamic> json) {
  return _$_TPostStats(
    id: json['id'] as String,
    sharesCount: json['sharesCount'] as int ?? 0,
    likesCount: json['likesCount'] as int ?? 0,
    commentsCount: json['commentsCount'] as int ?? 0,
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
      'sharesCount': instance.sharesCount,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

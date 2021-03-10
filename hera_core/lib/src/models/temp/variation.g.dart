// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVariation _$_$_TVariationFromJson(Map<String, dynamic> json) {
  return _$_TVariation(
    id: json['id'] as String,
    name: json['name'] as String ?? '',
    description: json['description'] as String ?? '',
    minSelectCount: json['minSelectCount'] as int ?? 0,
    maxSelectCount: json['maxSelectCount'] as int ?? 1,
    variations: (json['variations'] as List)
            ?.map((e) => e == null
                ? null
                : TVariationOption.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TVariationToJson(_$_TVariation instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'minSelectCount': instance.minSelectCount,
      'maxSelectCount': instance.maxSelectCount,
      'variations': instance.variations?.map((e) => e?.toJson())?.toList(),
    };

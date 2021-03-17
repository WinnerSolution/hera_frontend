// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVariationOption _$_$_TVariationOptionFromJson(Map<String, dynamic> json) {
  return _$_TVariationOption(
    id: json['id'] as String,
    name: json['name'] as String ?? '',
    description: json['description'] as String ?? '',
    minCount: json['minCount'] as num ?? 1,
    maxCount: json['maxCount'] as int ?? 1,
    price: json['price'] as num,
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TVariationOptionToJson(
        _$_TVariationOption instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'minCount': instance.minCount,
      'maxCount': instance.maxCount,
      'price': instance.price,
    };

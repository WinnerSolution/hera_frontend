// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TProduct _$_$_TProductFromJson(Map<String, dynamic> json) {
  return _$_TProduct(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : RemoteImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shopUrl: json['shopUrl'] as String,
    price: json['price'] as num,
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TProductToJson(_$_TProduct instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'shopUrl': instance.shopUrl,
      'price': instance.price,
    };

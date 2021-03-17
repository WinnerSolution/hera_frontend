// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TProduct _$_$_TProductFromJson(Map<String, dynamic> json) {
  return _$_TProduct(
    id: json['id'] as String,
    categoryId: json['categoryId'] as String,
    name: json['name'] as String ?? '',
    description: json['description'] as String ?? '',
    inStock: json['inStock'] as bool ?? true,
    image: (json['image'] as List)
            ?.map((e) => e == null
                ? null
                : RemoteImage.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    price: json['price'] as num,
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TProductToJson(_$_TProduct instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'inStock': instance.inStock,
      'image': instance.image?.map((e) => e?.toJson())?.toList(),
      'price': instance.price,
    };

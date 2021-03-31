// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TPost _$_$_TPostFromJson(Map<String, dynamic> json) {
  return _$_TPost(
    title: json['title'] as String,
    description: json['description'] as String,
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : RemoteImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shopUrl: json['shopUrl'] as String,
    price: json['price'] as num,
    createdBy: json['createdBy'] as String,
    createdAt:
        const CustomDateTimeConverter().fromJson(json['createdAt'] as DateTime),
    updatedAt:
        const CustomDateTimeConverter().fromJson(json['updatedAt'] as DateTime),
  )
    ..id = json['id'] as String
    ..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TPostToJson(_$_TPost instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'shopUrl': instance.shopUrl,
      'price': instance.price,
      'createdBy': instance.createdBy,
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

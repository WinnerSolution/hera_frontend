// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TStore _$_$_TStoreFromJson(Map<String, dynamic> json) {
  return _$_TStore(
    id: json['id'] as String,
    name: json['name'] as String ?? '',
    phone: json['phone'] as String ?? '',
    email: json['email'] as String ?? '',
    description: json['description'] as String ?? '',
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TStoreToJson(_$_TStore instance) => <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'description': instance.description,
      'address': instance.address?.toJson(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TRequestor _$_$_TRequestorFromJson(Map<String, dynamic> json) {
  return _$_TRequestor(
    id: json['id'] as String,
    fullname: json['fullname'] as String,
    phone: json['phone'] as String,
    balance: (json['balance'] as num)?.toDouble() ?? 0,
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList() ?? [],
  )..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TRequestorToJson(_$_TRequestor instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'balance': instance.balance,
      'tags': instance.tags,
    };

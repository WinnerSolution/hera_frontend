// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactInfo _$_$_ContactInfoFromJson(Map<String, dynamic> json) {
  return _$_ContactInfo(
    fullname: json['fullname'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    dateOfBirth: json['dateOfBirth'] == null
        ? null
        : DateTime.parse(json['dateOfBirth'] as String),
    gender: json['gender'] as int,
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ContactInfoToJson(_$_ContactInfo instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'phone': instance.phone,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': instance.gender,
      'address': instance.address?.toJson(),
    };

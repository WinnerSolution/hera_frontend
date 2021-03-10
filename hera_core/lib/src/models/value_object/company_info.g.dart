// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyInfo _$_$_CompanyInfoFromJson(Map<String, dynamic> json) {
  return _$_CompanyInfo(
    id: json['id'] as String,
    fullname: json['fullname'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CompanyInfoToJson(_$_CompanyInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address?.toJson(),
    };

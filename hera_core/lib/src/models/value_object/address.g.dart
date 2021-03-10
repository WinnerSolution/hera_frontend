// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$_$_AddressFromJson(Map<String, dynamic> json) {
  return _$_Address(
    description: json['description'] as String,
    location: const CustomLocationConverter()
        .fromJson(json['location'] as Map<String, dynamic>),
    placemark: const CustomPlacemarkConverter()
        .fromJson(json['placemark'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'description': instance.description,
      'location': const CustomLocationConverter().toJson(instance.location),
      'placemark': const CustomPlacemarkConverter().toJson(instance.placemark),
    };

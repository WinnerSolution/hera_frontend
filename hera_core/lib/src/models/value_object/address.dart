import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hera_core/src/models/convertors/location.dart';
import 'package:hera_core/src/models/convertors/placemark.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class Address implements _$Address {
  Address._();

  @CustomPlacemarkConverter()
  @CustomLocationConverter()
  @JsonSerializable(explicitToJson: true)
  factory Address({
    String description,
    Location location,
    Placemark placemark,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

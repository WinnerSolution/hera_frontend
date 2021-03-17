import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/value_object/address.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hera_core/src/models/convertors/location.dart';
import 'package:hera_core/src/models/convertors/placemark.dart';

part 'contact_info.freezed.dart';
part 'contact_info.g.dart';

@freezed
abstract class ContactInfo implements _$ContactInfo {
  ContactInfo._();

  @CustomPlacemarkConverter()
  @CustomLocationConverter()
  @JsonSerializable(explicitToJson: true)
  factory ContactInfo({
    String fullname,
    String phone,
    String email,
    DateTime dateOfBirth,
    int gender, // 0 => Female , 1 => Male, 2 => Other
    Address address,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, dynamic> json) => _$ContactInfoFromJson(json);

  String getDateOfBirth() {
    return dateOfBirth == null ? '' : DateFormat('yyyy-MM-dd').format(dateOfBirth);
  }
}

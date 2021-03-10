import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/value_object/address.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hera_core/src/models/convertors/location.dart';
import 'package:hera_core/src/models/convertors/placemark.dart';

part 'company_info.freezed.dart';
part 'company_info.g.dart';

@freezed
abstract class CompanyInfo implements _$CompanyInfo {
  CompanyInfo._();

  @CustomPlacemarkConverter()
  @CustomLocationConverter()
  @JsonSerializable(explicitToJson: true)
  factory CompanyInfo({
    String id,
    //
    String fullname,
    String phone,
    String email,
    Address address,
  }) = _CompanyInfo;

  factory CompanyInfo.fromJson(Map<String, dynamic> json) => _$CompanyInfoFromJson(json);
}

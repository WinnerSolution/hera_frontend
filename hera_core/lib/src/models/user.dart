import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/value_object/remote_image.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:hera_core/src/models/value_object/company_info.dart';
import 'package:hera_core/src/models/value_object/contact_info.dart';
import 'package:softi_common/resource.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class TUser extends IResourceData with BaseResourceDataMixin implements _$TUser {
  TUser._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TUser({
    String id,
    String fullname,
    DateTime dateOfBirth,
    int gender,
    RemoteImage profileImage, // 0 => Female , 1 => Male, 2 => Other

    // Contacts (Identifiers)
    String email,
    String phone,
    String bio,
    String status,

    //
    ContactInfo contactInfo,
    CompanyInfo companyInfo,
  }) = _TUser;

  factory TUser.fromJson(Map<String, dynamic> json) => _$TUserFromJson(json);

  TUser fromJson(Map<String, dynamic> doc) {
    return TUser.fromJson(doc);
  }
}

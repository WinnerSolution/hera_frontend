import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'variation_option.freezed.dart';
part 'variation_option.g.dart';

@freezed
abstract class TVariationOption extends IResourceData with BaseResourceDataMixin implements _$TVariationOption {
  TVariationOption._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TVariationOption({
    String id,
    @Default('') String name,
    @Default('') String description,
    @Default(1) num minCount,
    @Default(1) int maxCount,
    // @Default([]) List<RemoteImage> image,
    num price,

    // ContactInfo contactInfo,
    // CompanyInfo companyInfo,
  }) = _TVariationOption;

  factory TVariationOption.fromJson(Map<String, dynamic> json) => _$TVariationOptionFromJson(json);

  TVariationOption fromJson(Map<String, dynamic> doc) {
    return TVariationOption.fromJson(doc);
  }
}

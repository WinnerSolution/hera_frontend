import 'package:hera_core/src/models/temp/variation_option.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'variation.freezed.dart';
part 'variation.g.dart';

@freezed
abstract class TVariation extends IResourceData with BaseResourceDataMixin implements _$TVariation {
  TVariation._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TVariation({
    String id,
    @Default('') String name,
    @Default('') String description,
    @Default(0) int minSelectCount,
    @Default(1) int maxSelectCount,
    @Default([]) List<TVariationOption> variations,
  }) = _TVariation;

  factory TVariation.fromJson(Map<String, dynamic> json) => _$TVariationFromJson(json);

  TVariation fromJson(Map<String, dynamic> doc) {
    return TVariation.fromJson(doc);
  }
}

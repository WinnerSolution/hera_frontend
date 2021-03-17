import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/hera_core.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class TProduct extends IResourceData with BaseResourceDataMixin implements _$TProduct {
  TProduct._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TProduct({
    String id,
    String categoryId,
    @Default('') String name,
    @Default('') String description,
    @Default(true) bool inStock,
    @Default([]) List<RemoteImage> image,
    num price,

    // ContactInfo contactInfo,
    // CompanyInfo companyInfo,
  }) = _TProduct;

  factory TProduct.fromJson(Map<String, dynamic> json) => _$TProductFromJson(json);

  TProduct fromJson(Map<String, dynamic> doc) {
    return TProduct.fromJson(doc);
  }

  TProduct toggleInStock() => copyWith(inStock: !inStock);
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:hera_core/src/models/value_object/remote_image.dart';
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
    //
    String title,
    String description,
    List<RemoteImage> images,
    String shopUrl,
    num price,
  }) = _TProduct;

  factory TProduct.fromJson(Map<String, dynamic> json) => _$TProductFromJson(json);

  TProduct fromJson(Map<String, dynamic> doc) {
    return TProduct.fromJson(doc);
  }
}

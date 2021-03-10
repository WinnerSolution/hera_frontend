import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'requestor.freezed.dart';
part 'requestor.g.dart';

@freezed
abstract class TRequestor extends IResourceData with BaseResourceDataMixin implements _$TRequestor {
  TRequestor._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TRequestor({
    String id,
    //
    String fullname,
    String phone,

    //
    @Default(0) double balance,
    @Default([]) List<String> tags,
  }) = _TRequestor;

  factory TRequestor.fromJson(Map<String, dynamic> json) => _$TRequestorFromJson(json);

  TRequestor fromJson(Map<String, dynamic> doc) {
    return TRequestor.fromJson(doc);
  }
}

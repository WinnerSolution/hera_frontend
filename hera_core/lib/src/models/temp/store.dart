import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/hera_core.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
abstract class TStore extends IResourceData with BaseResourceDataMixin implements _$TStore {
  TStore._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TStore({
    String id,
    @Default('') String name,
    @Default('') String phone,
    @Default('') String email,
    @Default('') String description,
    Address address,

    //
    // ContactInfo contactInfo,
    // CompanyInfo companyInfo,
  }) = _TStore;

  factory TStore.fromJson(Map<String, dynamic> json) => _$TStoreFromJson(json);

  TStore fromJson(Map<String, dynamic> doc) {
    return TStore.fromJson(doc);
  }
}

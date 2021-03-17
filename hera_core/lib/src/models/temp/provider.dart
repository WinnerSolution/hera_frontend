import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@freezed
abstract class TProvider extends IResourceData with BaseResourceDataMixin implements _$TProvider {
  TProvider._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TProvider({
    String id,
    //
    String fullname,
    String phone,

    //
    @Default(0) double balance,
    @Default([]) List<String> tags,
  }) = _TProvider;

  factory TProvider.fromJson(Map<String, dynamic> json) => _$TProviderFromJson(json);

  TProvider fromJson(Map<String, dynamic> doc) {
    return TProvider.fromJson(doc);
  }
}

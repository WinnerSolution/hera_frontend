import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'follower.freezed.dart';
part 'follower.g.dart';

@freezed
abstract class TFollower extends IResourceData with BaseResourceDataMixin implements _$TFollower {
  TFollower._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TFollower({
    // String id,
    // String path,

    //
    String followerId,
    String followingId,

    //
    DateTime createdAt,
    DateTime updatedAt,
  }) = _TFollower;

  @override
  String getId() {
    return followerId + '_' + followingId;
  }

  factory TFollower.fromJson(Map<String, dynamic> json) => _$TFollowerFromJson(json);

  TFollower fromJson(Map<String, dynamic> doc) {
    return TFollower.fromJson(doc);
  }
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'like.freezed.dart';
part 'like.g.dart';

@freezed
abstract class TLike extends IResourceData with BaseResourceDataMixin implements _$TLike {
  TLike._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TLike({
    // String id,
    // String path,

    //
    String postId,
    String userId,
    // String commentId,
    // DateTime likeTimestampe,
    // @Default(true) bool like,

    //
    DateTime createdAt,
    DateTime updatedAt,
  }) = _TLike;

  @override
  String getId() {
    return postId + '_' + userId;
  }

  factory TLike.fromJson(Map<String, dynamic> json) => _$TLikeFromJson(json);

  TLike fromJson(Map<String, dynamic> doc) {
    return TLike.fromJson(doc);
  }
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
abstract class TComment extends IResourceData with BaseResourceDataMixin implements _$TComment {
  TComment._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TComment({
    String id,
    String comment,
    String userId,
    String postId,
    String parentId,

    //
    DateTime createdAt,
    DateTime updatedAt,
  }) = _TComment;

  factory TComment.fromJson(Map<String, dynamic> json) => _$TCommentFromJson(json);

  TComment fromJson(Map<String, dynamic> doc) {
    return TComment.fromJson(doc);
  }
}

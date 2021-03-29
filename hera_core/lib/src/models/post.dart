import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:hera_core/src/models/value_object/remote_image.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class TPost extends IResourceData with BaseResourceDataMixin implements _$TPost {
  TPost._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TPost({
    //
    String id,
    String title,
    String description,
    List<RemoteImage> images,
    String shopUrl,
    num price,

    //
    String createdBy,

    //
    DateTime createdAt,
    DateTime updatedAt,
  }) = _TPost;

  factory TPost.fromJson(Map<String, dynamic> json) => _$TPostFromJson(json);

  TPost fromJson(Map<String, dynamic> doc) {
    return TPost.fromJson(doc);
  }
}

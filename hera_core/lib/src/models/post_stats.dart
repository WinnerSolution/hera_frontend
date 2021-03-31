import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'post_stats.freezed.dart';
part 'post_stats.g.dart';

@freezed
abstract class TPostStats extends IResourceData with BaseResourceDataMixin implements _$TPostStats {
  TPostStats._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TPostStats({
    // String id,
    // String path,

    //
    @Default(0) int sharesCount,
    @Default(0) int likesCount,
    @Default(0) int commentsCount,

    //
    DateTime createdAt,
    DateTime updatedAt,
  }) = _TPostStats;

  factory TPostStats.fromJson(Map<String, dynamic> json) => _$TPostStatsFromJson(json);

  TPostStats fromJson(Map<String, dynamic> doc) {
    return TPostStats.fromJson(doc);
  }

  TPostStats incremetLikes(int i) {
    return copyWith(likesCount: likesCount + i)
      ..setId(id)
      ..setPath(path);
  }

  TPostStats incremeComments(int i) {
    return copyWith(commentsCount: commentsCount + i)
      ..setId(id)
      ..setPath(path);
  }

  TPostStats incremetShares(int i) {
    return copyWith(sharesCount: sharesCount + i)
      ..setId(id)
      ..setPath(path);
  }
}

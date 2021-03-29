import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:hera_core/src/models/value_object/presence_state.dart';
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
    String id,
    DateTime lastPostTime,
    @Default(0) int sharesCount,
    @Default(0) int likesCount,
    @Default(0) int commentsCount,
    PresenceState presenceState,

    //
    DateTime createdAt,
    DateTime updatedAt,
  }) = _TPostStats;

  factory TPostStats.fromJson(Map<String, dynamic> json) => _$TPostStatsFromJson(json);

  TPostStats fromJson(Map<String, dynamic> doc) {
    return TPostStats.fromJson(doc);
  }

  TPostStats incremetLikes(int i) {
    return copyWith(likesCount: likesCount + i);
  }
}

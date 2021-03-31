import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:hera_core/src/models/value_object/presence_state.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/resource.dart';

part 'user_stats.freezed.dart';
part 'user_stats.g.dart';

@freezed
abstract class TUserStats extends IResourceData with BaseResourceDataMixin implements _$TUserStats {
  TUserStats._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory TUserStats({
    // String id,
    // String path,

    //
    @Default(0) int commentsCount,
    @Default(0) int likesCount,
    @Default(0) int sharesCount,

    //
    @Default(0) int postsCount,
    @Default(0) int followingCount,
    @Default(0) int followersCount,
    PresenceState presenceState,

    //
    DateTime createdAt,
    DateTime updatedAt,
  }) = _TUserStats;

  factory TUserStats.fromJson(Map<String, dynamic> json) => _$TUserStatsFromJson(json);

  TUserStats fromJson(Map<String, dynamic> doc) {
    return TUserStats.fromJson(doc);
  }
}

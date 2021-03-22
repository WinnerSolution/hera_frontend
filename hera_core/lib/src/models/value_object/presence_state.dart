import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hera_core/src/models/convertors/date.dart';
import 'package:json_annotation/json_annotation.dart';

part 'presence_state.freezed.dart';
part 'presence_state.g.dart';

@freezed
abstract class PresenceState implements _$PresenceState {
  PresenceState._();

  @CustomDateTimeConverter()
  @JsonSerializable(explicitToJson: true)
  factory PresenceState({
    String state,
    DateTime lastChanged,
  }) = _PresenceState;

  factory PresenceState.fromJson(Map<String, dynamic> json) => _$PresenceStateFromJson(json);
}

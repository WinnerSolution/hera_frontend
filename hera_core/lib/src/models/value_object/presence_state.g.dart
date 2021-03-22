// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PresenceState _$_$_PresenceStateFromJson(Map<String, dynamic> json) {
  return _$_PresenceState(
    state: json['state'] as String,
    lastChanged: const CustomDateTimeConverter()
        .fromJson(json['lastChanged'] as DateTime),
  );
}

Map<String, dynamic> _$_$_PresenceStateToJson(_$_PresenceState instance) =>
    <String, dynamic>{
      'state': instance.state,
      'lastChanged':
          const CustomDateTimeConverter().toJson(instance.lastChanged),
    };

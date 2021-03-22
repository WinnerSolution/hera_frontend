// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'presence_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PresenceState _$PresenceStateFromJson(Map<String, dynamic> json) {
  return _PresenceState.fromJson(json);
}

/// @nodoc
class _$PresenceStateTearOff {
  const _$PresenceStateTearOff();

// ignore: unused_element
  _PresenceState call({String state, DateTime lastChanged}) {
    return _PresenceState(
      state: state,
      lastChanged: lastChanged,
    );
  }

// ignore: unused_element
  PresenceState fromJson(Map<String, Object> json) {
    return PresenceState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PresenceState = _$PresenceStateTearOff();

/// @nodoc
mixin _$PresenceState {
  String get state;
  DateTime get lastChanged;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PresenceStateCopyWith<PresenceState> get copyWith;
}

/// @nodoc
abstract class $PresenceStateCopyWith<$Res> {
  factory $PresenceStateCopyWith(
          PresenceState value, $Res Function(PresenceState) then) =
      _$PresenceStateCopyWithImpl<$Res>;
  $Res call({String state, DateTime lastChanged});
}

/// @nodoc
class _$PresenceStateCopyWithImpl<$Res>
    implements $PresenceStateCopyWith<$Res> {
  _$PresenceStateCopyWithImpl(this._value, this._then);

  final PresenceState _value;
  // ignore: unused_field
  final $Res Function(PresenceState) _then;

  @override
  $Res call({
    Object state = freezed,
    Object lastChanged = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as String,
      lastChanged:
          lastChanged == freezed ? _value.lastChanged : lastChanged as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PresenceStateCopyWith<$Res>
    implements $PresenceStateCopyWith<$Res> {
  factory _$PresenceStateCopyWith(
          _PresenceState value, $Res Function(_PresenceState) then) =
      __$PresenceStateCopyWithImpl<$Res>;
  @override
  $Res call({String state, DateTime lastChanged});
}

/// @nodoc
class __$PresenceStateCopyWithImpl<$Res>
    extends _$PresenceStateCopyWithImpl<$Res>
    implements _$PresenceStateCopyWith<$Res> {
  __$PresenceStateCopyWithImpl(
      _PresenceState _value, $Res Function(_PresenceState) _then)
      : super(_value, (v) => _then(v as _PresenceState));

  @override
  _PresenceState get _value => super._value as _PresenceState;

  @override
  $Res call({
    Object state = freezed,
    Object lastChanged = freezed,
  }) {
    return _then(_PresenceState(
      state: state == freezed ? _value.state : state as String,
      lastChanged:
          lastChanged == freezed ? _value.lastChanged : lastChanged as DateTime,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_PresenceState extends _PresenceState with DiagnosticableTreeMixin {
  _$_PresenceState({this.state, this.lastChanged}) : super._();

  factory _$_PresenceState.fromJson(Map<String, dynamic> json) =>
      _$_$_PresenceStateFromJson(json);

  @override
  final String state;
  @override
  final DateTime lastChanged;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PresenceState(state: $state, lastChanged: $lastChanged)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PresenceState'))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('lastChanged', lastChanged));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PresenceState &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.lastChanged, lastChanged) ||
                const DeepCollectionEquality()
                    .equals(other.lastChanged, lastChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(lastChanged);

  @JsonKey(ignore: true)
  @override
  _$PresenceStateCopyWith<_PresenceState> get copyWith =>
      __$PresenceStateCopyWithImpl<_PresenceState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PresenceStateToJson(this);
  }
}

abstract class _PresenceState extends PresenceState {
  _PresenceState._() : super._();
  factory _PresenceState({String state, DateTime lastChanged}) =
      _$_PresenceState;

  factory _PresenceState.fromJson(Map<String, dynamic> json) =
      _$_PresenceState.fromJson;

  @override
  String get state;
  @override
  DateTime get lastChanged;
  @override
  @JsonKey(ignore: true)
  _$PresenceStateCopyWith<_PresenceState> get copyWith;
}

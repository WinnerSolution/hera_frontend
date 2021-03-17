// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TStore _$TStoreFromJson(Map<String, dynamic> json) {
  return _TStore.fromJson(json);
}

/// @nodoc
class _$TStoreTearOff {
  const _$TStoreTearOff();

// ignore: unused_element
  _TStore call(
      {String id,
      String name = '',
      String phone = '',
      String email = '',
      String description = '',
      Address address}) {
    return _TStore(
      id: id,
      name: name,
      phone: phone,
      email: email,
      description: description,
      address: address,
    );
  }

// ignore: unused_element
  TStore fromJson(Map<String, Object> json) {
    return TStore.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TStore = _$TStoreTearOff();

/// @nodoc
mixin _$TStore {
  String get id;
  String get name;
  String get phone;
  String get email;
  String get description;
  Address get address;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TStoreCopyWith<TStore> get copyWith;
}

/// @nodoc
abstract class $TStoreCopyWith<$Res> {
  factory $TStoreCopyWith(TStore value, $Res Function(TStore) then) =
      _$TStoreCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String phone,
      String email,
      String description,
      Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$TStoreCopyWithImpl<$Res> implements $TStoreCopyWith<$Res> {
  _$TStoreCopyWithImpl(this._value, this._then);

  final TStore _value;
  // ignore: unused_field
  final $Res Function(TStore) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object description = freezed,
    Object address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      description:
          description == freezed ? _value.description : description as String,
      address: address == freezed ? _value.address : address as Address,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$TStoreCopyWith<$Res> implements $TStoreCopyWith<$Res> {
  factory _$TStoreCopyWith(_TStore value, $Res Function(_TStore) then) =
      __$TStoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String phone,
      String email,
      String description,
      Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$TStoreCopyWithImpl<$Res> extends _$TStoreCopyWithImpl<$Res>
    implements _$TStoreCopyWith<$Res> {
  __$TStoreCopyWithImpl(_TStore _value, $Res Function(_TStore) _then)
      : super(_value, (v) => _then(v as _TStore));

  @override
  _TStore get _value => super._value as _TStore;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object description = freezed,
    Object address = freezed,
  }) {
    return _then(_TStore(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      description:
          description == freezed ? _value.description : description as String,
      address: address == freezed ? _value.address : address as Address,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TStore extends _TStore with DiagnosticableTreeMixin {
  _$_TStore(
      {this.id,
      this.name = '',
      this.phone = '',
      this.email = '',
      this.description = '',
      this.address})
      : assert(name != null),
        assert(phone != null),
        assert(email != null),
        assert(description != null),
        super._();

  factory _$_TStore.fromJson(Map<String, dynamic> json) =>
      _$_$_TStoreFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String phone;
  @JsonKey(defaultValue: '')
  @override
  final String email;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @override
  final Address address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TStore(id: $id, name: $name, phone: $phone, email: $email, description: $description, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TStore'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TStore &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$TStoreCopyWith<_TStore> get copyWith =>
      __$TStoreCopyWithImpl<_TStore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TStoreToJson(this);
  }
}

abstract class _TStore extends TStore {
  _TStore._() : super._();
  factory _TStore(
      {String id,
      String name,
      String phone,
      String email,
      String description,
      Address address}) = _$_TStore;

  factory _TStore.fromJson(Map<String, dynamic> json) = _$_TStore.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get description;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$TStoreCopyWith<_TStore> get copyWith;
}

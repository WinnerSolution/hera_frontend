// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'company_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CompanyInfo _$CompanyInfoFromJson(Map<String, dynamic> json) {
  return _CompanyInfo.fromJson(json);
}

/// @nodoc
class _$CompanyInfoTearOff {
  const _$CompanyInfoTearOff();

// ignore: unused_element
  _CompanyInfo call(
      {String id,
      String fullname,
      String phone,
      String email,
      Address address}) {
    return _CompanyInfo(
      id: id,
      fullname: fullname,
      phone: phone,
      email: email,
      address: address,
    );
  }

// ignore: unused_element
  CompanyInfo fromJson(Map<String, Object> json) {
    return CompanyInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CompanyInfo = _$CompanyInfoTearOff();

/// @nodoc
mixin _$CompanyInfo {
  String get id; //
  String get fullname;
  String get phone;
  String get email;
  Address get address;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CompanyInfoCopyWith<CompanyInfo> get copyWith;
}

/// @nodoc
abstract class $CompanyInfoCopyWith<$Res> {
  factory $CompanyInfoCopyWith(
          CompanyInfo value, $Res Function(CompanyInfo) then) =
      _$CompanyInfoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String fullname,
      String phone,
      String email,
      Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$CompanyInfoCopyWithImpl<$Res> implements $CompanyInfoCopyWith<$Res> {
  _$CompanyInfoCopyWithImpl(this._value, this._then);

  final CompanyInfo _value;
  // ignore: unused_field
  final $Res Function(CompanyInfo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object fullname = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
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
abstract class _$CompanyInfoCopyWith<$Res>
    implements $CompanyInfoCopyWith<$Res> {
  factory _$CompanyInfoCopyWith(
          _CompanyInfo value, $Res Function(_CompanyInfo) then) =
      __$CompanyInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String fullname,
      String phone,
      String email,
      Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$CompanyInfoCopyWithImpl<$Res> extends _$CompanyInfoCopyWithImpl<$Res>
    implements _$CompanyInfoCopyWith<$Res> {
  __$CompanyInfoCopyWithImpl(
      _CompanyInfo _value, $Res Function(_CompanyInfo) _then)
      : super(_value, (v) => _then(v as _CompanyInfo));

  @override
  _CompanyInfo get _value => super._value as _CompanyInfo;

  @override
  $Res call({
    Object id = freezed,
    Object fullname = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object address = freezed,
  }) {
    return _then(_CompanyInfo(
      id: id == freezed ? _value.id : id as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      address: address == freezed ? _value.address : address as Address,
    ));
  }
}

@CustomPlacemarkConverter()
@CustomLocationConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_CompanyInfo extends _CompanyInfo with DiagnosticableTreeMixin {
  _$_CompanyInfo({this.id, this.fullname, this.phone, this.email, this.address})
      : super._();

  factory _$_CompanyInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_CompanyInfoFromJson(json);

  @override
  final String id;
  @override //
  final String fullname;
  @override
  final String phone;
  @override
  final String email;
  @override
  final Address address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyInfo(id: $id, fullname: $fullname, phone: $phone, email: $email, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompanyInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$CompanyInfoCopyWith<_CompanyInfo> get copyWith =>
      __$CompanyInfoCopyWithImpl<_CompanyInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CompanyInfoToJson(this);
  }
}

abstract class _CompanyInfo extends CompanyInfo {
  _CompanyInfo._() : super._();
  factory _CompanyInfo(
      {String id,
      String fullname,
      String phone,
      String email,
      Address address}) = _$_CompanyInfo;

  factory _CompanyInfo.fromJson(Map<String, dynamic> json) =
      _$_CompanyInfo.fromJson;

  @override
  String get id;
  @override //
  String get fullname;
  @override
  String get phone;
  @override
  String get email;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$CompanyInfoCopyWith<_CompanyInfo> get copyWith;
}

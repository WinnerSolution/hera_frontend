// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
class _$ContactInfoTearOff {
  const _$ContactInfoTearOff();

// ignore: unused_element
  _ContactInfo call(
      {String fullname,
      String phone,
      String email,
      DateTime dateOfBirth,
      int gender,
      Address address}) {
    return _ContactInfo(
      fullname: fullname,
      phone: phone,
      email: email,
      dateOfBirth: dateOfBirth,
      gender: gender,
      address: address,
    );
  }

// ignore: unused_element
  ContactInfo fromJson(Map<String, Object> json) {
    return ContactInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ContactInfo = _$ContactInfoTearOff();

/// @nodoc
mixin _$ContactInfo {
  String get fullname;
  String get phone;
  String get email;
  DateTime get dateOfBirth;
  int get gender; // 0 => Female , 1 => Male, 2 => Other
  Address get address;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ContactInfoCopyWith<ContactInfo> get copyWith;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res>;
  $Res call(
      {String fullname,
      String phone,
      String email,
      DateTime dateOfBirth,
      int gender,
      Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res> implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._value, this._then);

  final ContactInfo _value;
  // ignore: unused_field
  final $Res Function(ContactInfo) _then;

  @override
  $Res call({
    Object fullname = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object dateOfBirth = freezed,
    Object gender = freezed,
    Object address = freezed,
  }) {
    return _then(_value.copyWith(
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as DateTime,
      gender: gender == freezed ? _value.gender : gender as int,
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
abstract class _$ContactInfoCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$ContactInfoCopyWith(
          _ContactInfo value, $Res Function(_ContactInfo) then) =
      __$ContactInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullname,
      String phone,
      String email,
      DateTime dateOfBirth,
      int gender,
      Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ContactInfoCopyWithImpl<$Res> extends _$ContactInfoCopyWithImpl<$Res>
    implements _$ContactInfoCopyWith<$Res> {
  __$ContactInfoCopyWithImpl(
      _ContactInfo _value, $Res Function(_ContactInfo) _then)
      : super(_value, (v) => _then(v as _ContactInfo));

  @override
  _ContactInfo get _value => super._value as _ContactInfo;

  @override
  $Res call({
    Object fullname = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object dateOfBirth = freezed,
    Object gender = freezed,
    Object address = freezed,
  }) {
    return _then(_ContactInfo(
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as DateTime,
      gender: gender == freezed ? _value.gender : gender as int,
      address: address == freezed ? _value.address : address as Address,
    ));
  }
}

@CustomPlacemarkConverter()
@CustomLocationConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_ContactInfo extends _ContactInfo with DiagnosticableTreeMixin {
  _$_ContactInfo(
      {this.fullname,
      this.phone,
      this.email,
      this.dateOfBirth,
      this.gender,
      this.address})
      : super._();

  factory _$_ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactInfoFromJson(json);

  @override
  final String fullname;
  @override
  final String phone;
  @override
  final String email;
  @override
  final DateTime dateOfBirth;
  @override
  final int gender;
  @override // 0 => Female , 1 => Male, 2 => Other
  final Address address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactInfo(fullname: $fullname, phone: $phone, email: $email, dateOfBirth: $dateOfBirth, gender: $gender, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactInfo'))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactInfo &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$ContactInfoCopyWith<_ContactInfo> get copyWith =>
      __$ContactInfoCopyWithImpl<_ContactInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactInfoToJson(this);
  }
}

abstract class _ContactInfo extends ContactInfo {
  _ContactInfo._() : super._();
  factory _ContactInfo(
      {String fullname,
      String phone,
      String email,
      DateTime dateOfBirth,
      int gender,
      Address address}) = _$_ContactInfo;

  factory _ContactInfo.fromJson(Map<String, dynamic> json) =
      _$_ContactInfo.fromJson;

  @override
  String get fullname;
  @override
  String get phone;
  @override
  String get email;
  @override
  DateTime get dateOfBirth;
  @override
  int get gender;
  @override // 0 => Female , 1 => Male, 2 => Other
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$ContactInfoCopyWith<_ContactInfo> get copyWith;
}

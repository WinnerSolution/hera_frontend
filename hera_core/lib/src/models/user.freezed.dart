// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TUser _$TUserFromJson(Map<String, dynamic> json) {
  return _TUser.fromJson(json);
}

/// @nodoc
class _$TUserTearOff {
  const _$TUserTearOff();

// ignore: unused_element
  _TUser call(
      {String id,
      String fullname,
      DateTime dateOfBirth,
      int gender,
      RemoteImage profileImage,
      String email,
      String phone,
      String bio,
      String status,
      bool privateProfile = true,
      bool notifications = true,
      ContactInfo contactInfo,
      CompanyInfo companyInfo}) {
    return _TUser(
      id: id,
      fullname: fullname,
      dateOfBirth: dateOfBirth,
      gender: gender,
      profileImage: profileImage,
      email: email,
      phone: phone,
      bio: bio,
      status: status,
      privateProfile: privateProfile,
      notifications: notifications,
      contactInfo: contactInfo,
      companyInfo: companyInfo,
    );
  }

// ignore: unused_element
  TUser fromJson(Map<String, Object> json) {
    return TUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TUser = _$TUserTearOff();

/// @nodoc
mixin _$TUser {
  String get id;
  String get fullname;
  DateTime get dateOfBirth;
  int get gender;
  RemoteImage get profileImage; // 0 => Female , 1 => Male, 2 => Other
// Contacts (Identifiers)
  String get email;
  String get phone;
  String get bio;
  String get status; // Settings
  bool get privateProfile;
  bool get notifications; //
  ContactInfo get contactInfo;
  CompanyInfo get companyInfo;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TUserCopyWith<TUser> get copyWith;
}

/// @nodoc
abstract class $TUserCopyWith<$Res> {
  factory $TUserCopyWith(TUser value, $Res Function(TUser) then) =
      _$TUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String fullname,
      DateTime dateOfBirth,
      int gender,
      RemoteImage profileImage,
      String email,
      String phone,
      String bio,
      String status,
      bool privateProfile,
      bool notifications,
      ContactInfo contactInfo,
      CompanyInfo companyInfo});

  $RemoteImageCopyWith<$Res> get profileImage;
  $ContactInfoCopyWith<$Res> get contactInfo;
  $CompanyInfoCopyWith<$Res> get companyInfo;
}

/// @nodoc
class _$TUserCopyWithImpl<$Res> implements $TUserCopyWith<$Res> {
  _$TUserCopyWithImpl(this._value, this._then);

  final TUser _value;
  // ignore: unused_field
  final $Res Function(TUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object fullname = freezed,
    Object dateOfBirth = freezed,
    Object gender = freezed,
    Object profileImage = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object bio = freezed,
    Object status = freezed,
    Object privateProfile = freezed,
    Object notifications = freezed,
    Object contactInfo = freezed,
    Object companyInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as DateTime,
      gender: gender == freezed ? _value.gender : gender as int,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage as RemoteImage,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      bio: bio == freezed ? _value.bio : bio as String,
      status: status == freezed ? _value.status : status as String,
      privateProfile: privateProfile == freezed
          ? _value.privateProfile
          : privateProfile as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as bool,
      contactInfo: contactInfo == freezed
          ? _value.contactInfo
          : contactInfo as ContactInfo,
      companyInfo: companyInfo == freezed
          ? _value.companyInfo
          : companyInfo as CompanyInfo,
    ));
  }

  @override
  $RemoteImageCopyWith<$Res> get profileImage {
    if (_value.profileImage == null) {
      return null;
    }
    return $RemoteImageCopyWith<$Res>(_value.profileImage, (value) {
      return _then(_value.copyWith(profileImage: value));
    });
  }

  @override
  $ContactInfoCopyWith<$Res> get contactInfo {
    if (_value.contactInfo == null) {
      return null;
    }
    return $ContactInfoCopyWith<$Res>(_value.contactInfo, (value) {
      return _then(_value.copyWith(contactInfo: value));
    });
  }

  @override
  $CompanyInfoCopyWith<$Res> get companyInfo {
    if (_value.companyInfo == null) {
      return null;
    }
    return $CompanyInfoCopyWith<$Res>(_value.companyInfo, (value) {
      return _then(_value.copyWith(companyInfo: value));
    });
  }
}

/// @nodoc
abstract class _$TUserCopyWith<$Res> implements $TUserCopyWith<$Res> {
  factory _$TUserCopyWith(_TUser value, $Res Function(_TUser) then) =
      __$TUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String fullname,
      DateTime dateOfBirth,
      int gender,
      RemoteImage profileImage,
      String email,
      String phone,
      String bio,
      String status,
      bool privateProfile,
      bool notifications,
      ContactInfo contactInfo,
      CompanyInfo companyInfo});

  @override
  $RemoteImageCopyWith<$Res> get profileImage;
  @override
  $ContactInfoCopyWith<$Res> get contactInfo;
  @override
  $CompanyInfoCopyWith<$Res> get companyInfo;
}

/// @nodoc
class __$TUserCopyWithImpl<$Res> extends _$TUserCopyWithImpl<$Res>
    implements _$TUserCopyWith<$Res> {
  __$TUserCopyWithImpl(_TUser _value, $Res Function(_TUser) _then)
      : super(_value, (v) => _then(v as _TUser));

  @override
  _TUser get _value => super._value as _TUser;

  @override
  $Res call({
    Object id = freezed,
    Object fullname = freezed,
    Object dateOfBirth = freezed,
    Object gender = freezed,
    Object profileImage = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object bio = freezed,
    Object status = freezed,
    Object privateProfile = freezed,
    Object notifications = freezed,
    Object contactInfo = freezed,
    Object companyInfo = freezed,
  }) {
    return _then(_TUser(
      id: id == freezed ? _value.id : id as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as DateTime,
      gender: gender == freezed ? _value.gender : gender as int,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage as RemoteImage,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      bio: bio == freezed ? _value.bio : bio as String,
      status: status == freezed ? _value.status : status as String,
      privateProfile: privateProfile == freezed
          ? _value.privateProfile
          : privateProfile as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as bool,
      contactInfo: contactInfo == freezed
          ? _value.contactInfo
          : contactInfo as ContactInfo,
      companyInfo: companyInfo == freezed
          ? _value.companyInfo
          : companyInfo as CompanyInfo,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TUser extends _TUser with DiagnosticableTreeMixin {
  _$_TUser(
      {this.id,
      this.fullname,
      this.dateOfBirth,
      this.gender,
      this.profileImage,
      this.email,
      this.phone,
      this.bio,
      this.status,
      this.privateProfile = true,
      this.notifications = true,
      this.contactInfo,
      this.companyInfo})
      : assert(privateProfile != null),
        assert(notifications != null),
        super._();

  factory _$_TUser.fromJson(Map<String, dynamic> json) =>
      _$_$_TUserFromJson(json);

  @override
  final String id;
  @override
  final String fullname;
  @override
  final DateTime dateOfBirth;
  @override
  final int gender;
  @override
  final RemoteImage profileImage;
  @override // 0 => Female , 1 => Male, 2 => Other
// Contacts (Identifiers)
  final String email;
  @override
  final String phone;
  @override
  final String bio;
  @override
  final String status;
  @JsonKey(defaultValue: true)
  @override // Settings
  final bool privateProfile;
  @JsonKey(defaultValue: true)
  @override
  final bool notifications;
  @override //
  final ContactInfo contactInfo;
  @override
  final CompanyInfo companyInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TUser(id: $id, fullname: $fullname, dateOfBirth: $dateOfBirth, gender: $gender, profileImage: $profileImage, email: $email, phone: $phone, bio: $bio, status: $status, privateProfile: $privateProfile, notifications: $notifications, contactInfo: $contactInfo, companyInfo: $companyInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('profileImage', profileImage))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('privateProfile', privateProfile))
      ..add(DiagnosticsProperty('notifications', notifications))
      ..add(DiagnosticsProperty('contactInfo', contactInfo))
      ..add(DiagnosticsProperty('companyInfo', companyInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.profileImage, profileImage) ||
                const DeepCollectionEquality()
                    .equals(other.profileImage, profileImage)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.privateProfile, privateProfile) ||
                const DeepCollectionEquality()
                    .equals(other.privateProfile, privateProfile)) &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)) &&
            (identical(other.contactInfo, contactInfo) ||
                const DeepCollectionEquality()
                    .equals(other.contactInfo, contactInfo)) &&
            (identical(other.companyInfo, companyInfo) ||
                const DeepCollectionEquality()
                    .equals(other.companyInfo, companyInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(profileImage) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(privateProfile) ^
      const DeepCollectionEquality().hash(notifications) ^
      const DeepCollectionEquality().hash(contactInfo) ^
      const DeepCollectionEquality().hash(companyInfo);

  @JsonKey(ignore: true)
  @override
  _$TUserCopyWith<_TUser> get copyWith =>
      __$TUserCopyWithImpl<_TUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TUserToJson(this);
  }
}

abstract class _TUser extends TUser {
  _TUser._() : super._();
  factory _TUser(
      {String id,
      String fullname,
      DateTime dateOfBirth,
      int gender,
      RemoteImage profileImage,
      String email,
      String phone,
      String bio,
      String status,
      bool privateProfile,
      bool notifications,
      ContactInfo contactInfo,
      CompanyInfo companyInfo}) = _$_TUser;

  factory _TUser.fromJson(Map<String, dynamic> json) = _$_TUser.fromJson;

  @override
  String get id;
  @override
  String get fullname;
  @override
  DateTime get dateOfBirth;
  @override
  int get gender;
  @override
  RemoteImage get profileImage;
  @override // 0 => Female , 1 => Male, 2 => Other
// Contacts (Identifiers)
  String get email;
  @override
  String get phone;
  @override
  String get bio;
  @override
  String get status;
  @override // Settings
  bool get privateProfile;
  @override
  bool get notifications;
  @override //
  ContactInfo get contactInfo;
  @override
  CompanyInfo get companyInfo;
  @override
  @JsonKey(ignore: true)
  _$TUserCopyWith<_TUser> get copyWith;
}

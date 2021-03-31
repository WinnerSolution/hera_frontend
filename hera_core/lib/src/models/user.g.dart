// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TUser _$_$_TUserFromJson(Map<String, dynamic> json) {
  return _$_TUser(
    fullname: json['fullname'] as String,
    dateOfBirth: const CustomDateTimeConverter()
        .fromJson(json['dateOfBirth'] as DateTime),
    gender: json['gender'] as int,
    profileImage: json['profileImage'] == null
        ? null
        : RemoteImage.fromJson(json['profileImage'] as Map<String, dynamic>),
    email: json['email'] as String,
    phone: json['phone'] as String,
    bio: json['bio'] as String,
    status: json['status'] as String,
    privateProfile: json['privateProfile'] as bool ?? true,
    notifications: json['notifications'] as bool ?? true,
    createdAt:
        const CustomDateTimeConverter().fromJson(json['createdAt'] as DateTime),
    updatedAt:
        const CustomDateTimeConverter().fromJson(json['updatedAt'] as DateTime),
  )
    ..id = json['id'] as String
    ..path = json['path'] as String;
}

Map<String, dynamic> _$_$_TUserToJson(_$_TUser instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'fullname': instance.fullname,
      'dateOfBirth':
          const CustomDateTimeConverter().toJson(instance.dateOfBirth),
      'gender': instance.gender,
      'profileImage': instance.profileImage?.toJson(),
      'email': instance.email,
      'phone': instance.phone,
      'bio': instance.bio,
      'status': instance.status,
      'privateProfile': instance.privateProfile,
      'notifications': instance.notifications,
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
    };

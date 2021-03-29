// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TPost _$TPostFromJson(Map<String, dynamic> json) {
  return _TPost.fromJson(json);
}

/// @nodoc
class _$TPostTearOff {
  const _$TPostTearOff();

// ignore: unused_element
  _TPost call(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy,
      DateTime createdAt,
      DateTime updatedAt}) {
    return _TPost(
      id: id,
      title: title,
      description: description,
      images: images,
      shopUrl: shopUrl,
      price: price,
      createdBy: createdBy,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  TPost fromJson(Map<String, Object> json) {
    return TPost.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TPost = _$TPostTearOff();

/// @nodoc
mixin _$TPost {
//
  String get id;
  String get title;
  String get description;
  List<RemoteImage> get images;
  String get shopUrl;
  num get price; //
  String get createdBy; //
  DateTime get createdAt;
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TPostCopyWith<TPost> get copyWith;
}

/// @nodoc
abstract class $TPostCopyWith<$Res> {
  factory $TPostCopyWith(TPost value, $Res Function(TPost) then) =
      _$TPostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TPostCopyWithImpl<$Res> implements $TPostCopyWith<$Res> {
  _$TPostCopyWithImpl(this._value, this._then);

  final TPost _value;
  // ignore: unused_field
  final $Res Function(TPost) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object images = freezed,
    Object shopUrl = freezed,
    Object price = freezed,
    Object createdBy = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      images: images == freezed ? _value.images : images as List<RemoteImage>,
      shopUrl: shopUrl == freezed ? _value.shopUrl : shopUrl as String,
      price: price == freezed ? _value.price : price as num,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TPostCopyWith<$Res> implements $TPostCopyWith<$Res> {
  factory _$TPostCopyWith(_TPost value, $Res Function(_TPost) then) =
      __$TPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$TPostCopyWithImpl<$Res> extends _$TPostCopyWithImpl<$Res>
    implements _$TPostCopyWith<$Res> {
  __$TPostCopyWithImpl(_TPost _value, $Res Function(_TPost) _then)
      : super(_value, (v) => _then(v as _TPost));

  @override
  _TPost get _value => super._value as _TPost;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object images = freezed,
    Object shopUrl = freezed,
    Object price = freezed,
    Object createdBy = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_TPost(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      images: images == freezed ? _value.images : images as List<RemoteImage>,
      shopUrl: shopUrl == freezed ? _value.shopUrl : shopUrl as String,
      price: price == freezed ? _value.price : price as num,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TPost extends _TPost with DiagnosticableTreeMixin {
  _$_TPost(
      {this.id,
      this.title,
      this.description,
      this.images,
      this.shopUrl,
      this.price,
      this.createdBy,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_TPost.fromJson(Map<String, dynamic> json) =>
      _$_$_TPostFromJson(json);

  @override //
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final List<RemoteImage> images;
  @override
  final String shopUrl;
  @override
  final num price;
  @override //
  final String createdBy;
  @override //
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TPost(id: $id, title: $title, description: $description, images: $images, shopUrl: $shopUrl, price: $price, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TPost'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('shopUrl', shopUrl))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.shopUrl, shopUrl) ||
                const DeepCollectionEquality()
                    .equals(other.shopUrl, shopUrl)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(shopUrl) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TPostCopyWith<_TPost> get copyWith =>
      __$TPostCopyWithImpl<_TPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TPostToJson(this);
  }
}

abstract class _TPost extends TPost {
  _TPost._() : super._();
  factory _TPost(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy,
      DateTime createdAt,
      DateTime updatedAt}) = _$_TPost;

  factory _TPost.fromJson(Map<String, dynamic> json) = _$_TPost.fromJson;

  @override //
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<RemoteImage> get images;
  @override
  String get shopUrl;
  @override
  num get price;
  @override //
  String get createdBy;
  @override //
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$TPostCopyWith<_TPost> get copyWith;
}

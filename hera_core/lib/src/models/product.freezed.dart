// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TProduct _$TProductFromJson(Map<String, dynamic> json) {
  return _TProduct.fromJson(json);
}

/// @nodoc
class _$TProductTearOff {
  const _$TProductTearOff();

// ignore: unused_element
  _TProduct call(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy}) {
    return _TProduct(
      id: id,
      title: title,
      description: description,
      images: images,
      shopUrl: shopUrl,
      price: price,
      createdBy: createdBy,
    );
  }

// ignore: unused_element
  TProduct fromJson(Map<String, Object> json) {
    return TProduct.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TProduct = _$TProductTearOff();

/// @nodoc
mixin _$TProduct {
  String get id; //
  String get title;
  String get description;
  List<RemoteImage> get images;
  String get shopUrl;
  num get price; //
  String get createdBy;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TProductCopyWith<TProduct> get copyWith;
}

/// @nodoc
abstract class $TProductCopyWith<$Res> {
  factory $TProductCopyWith(TProduct value, $Res Function(TProduct) then) =
      _$TProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy});
}

/// @nodoc
class _$TProductCopyWithImpl<$Res> implements $TProductCopyWith<$Res> {
  _$TProductCopyWithImpl(this._value, this._then);

  final TProduct _value;
  // ignore: unused_field
  final $Res Function(TProduct) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object images = freezed,
    Object shopUrl = freezed,
    Object price = freezed,
    Object createdBy = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$TProductCopyWith<$Res> implements $TProductCopyWith<$Res> {
  factory _$TProductCopyWith(_TProduct value, $Res Function(_TProduct) then) =
      __$TProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy});
}

/// @nodoc
class __$TProductCopyWithImpl<$Res> extends _$TProductCopyWithImpl<$Res>
    implements _$TProductCopyWith<$Res> {
  __$TProductCopyWithImpl(_TProduct _value, $Res Function(_TProduct) _then)
      : super(_value, (v) => _then(v as _TProduct));

  @override
  _TProduct get _value => super._value as _TProduct;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object images = freezed,
    Object shopUrl = freezed,
    Object price = freezed,
    Object createdBy = freezed,
  }) {
    return _then(_TProduct(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      images: images == freezed ? _value.images : images as List<RemoteImage>,
      shopUrl: shopUrl == freezed ? _value.shopUrl : shopUrl as String,
      price: price == freezed ? _value.price : price as num,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TProduct extends _TProduct with DiagnosticableTreeMixin {
  _$_TProduct(
      {this.id,
      this.title,
      this.description,
      this.images,
      this.shopUrl,
      this.price,
      this.createdBy})
      : super._();

  factory _$_TProduct.fromJson(Map<String, dynamic> json) =>
      _$_$_TProductFromJson(json);

  @override
  final String id;
  @override //
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TProduct(id: $id, title: $title, description: $description, images: $images, shopUrl: $shopUrl, price: $price, createdBy: $createdBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TProduct'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('shopUrl', shopUrl))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TProduct &&
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
                    .equals(other.createdBy, createdBy)));
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
      const DeepCollectionEquality().hash(createdBy);

  @JsonKey(ignore: true)
  @override
  _$TProductCopyWith<_TProduct> get copyWith =>
      __$TProductCopyWithImpl<_TProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TProductToJson(this);
  }
}

abstract class _TProduct extends TProduct {
  _TProduct._() : super._();
  factory _TProduct(
      {String id,
      String title,
      String description,
      List<RemoteImage> images,
      String shopUrl,
      num price,
      String createdBy}) = _$_TProduct;

  factory _TProduct.fromJson(Map<String, dynamic> json) = _$_TProduct.fromJson;

  @override
  String get id;
  @override //
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
  @override
  @JsonKey(ignore: true)
  _$TProductCopyWith<_TProduct> get copyWith;
}

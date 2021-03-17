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
      String categoryId,
      String name = '',
      String description = '',
      bool inStock = true,
      List<RemoteImage> image = const [],
      num price}) {
    return _TProduct(
      id: id,
      categoryId: categoryId,
      name: name,
      description: description,
      inStock: inStock,
      image: image,
      price: price,
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
  String get id;
  String get categoryId;
  String get name;
  String get description;
  bool get inStock;
  List<RemoteImage> get image;
  num get price;

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
      String categoryId,
      String name,
      String description,
      bool inStock,
      List<RemoteImage> image,
      num price});
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
    Object categoryId = freezed,
    Object name = freezed,
    Object description = freezed,
    Object inStock = freezed,
    Object image = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      inStock: inStock == freezed ? _value.inStock : inStock as bool,
      image: image == freezed ? _value.image : image as List<RemoteImage>,
      price: price == freezed ? _value.price : price as num,
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
      String categoryId,
      String name,
      String description,
      bool inStock,
      List<RemoteImage> image,
      num price});
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
    Object categoryId = freezed,
    Object name = freezed,
    Object description = freezed,
    Object inStock = freezed,
    Object image = freezed,
    Object price = freezed,
  }) {
    return _then(_TProduct(
      id: id == freezed ? _value.id : id as String,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      inStock: inStock == freezed ? _value.inStock : inStock as bool,
      image: image == freezed ? _value.image : image as List<RemoteImage>,
      price: price == freezed ? _value.price : price as num,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TProduct extends _TProduct with DiagnosticableTreeMixin {
  _$_TProduct(
      {this.id,
      this.categoryId,
      this.name = '',
      this.description = '',
      this.inStock = true,
      this.image = const [],
      this.price})
      : assert(name != null),
        assert(description != null),
        assert(inStock != null),
        assert(image != null),
        super._();

  factory _$_TProduct.fromJson(Map<String, dynamic> json) =>
      _$_$_TProductFromJson(json);

  @override
  final String id;
  @override
  final String categoryId;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: true)
  @override
  final bool inStock;
  @JsonKey(defaultValue: const [])
  @override
  final List<RemoteImage> image;
  @override
  final num price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TProduct(id: $id, categoryId: $categoryId, name: $name, description: $description, inStock: $inStock, image: $image, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TProduct'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('inStock', inStock))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TProduct &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.inStock, inStock) ||
                const DeepCollectionEquality()
                    .equals(other.inStock, inStock)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(inStock) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(price);

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
      String categoryId,
      String name,
      String description,
      bool inStock,
      List<RemoteImage> image,
      num price}) = _$_TProduct;

  factory _TProduct.fromJson(Map<String, dynamic> json) = _$_TProduct.fromJson;

  @override
  String get id;
  @override
  String get categoryId;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get inStock;
  @override
  List<RemoteImage> get image;
  @override
  num get price;
  @override
  @JsonKey(ignore: true)
  _$TProductCopyWith<_TProduct> get copyWith;
}

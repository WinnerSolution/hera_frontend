// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'variation_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TVariationOption _$TVariationOptionFromJson(Map<String, dynamic> json) {
  return _TVariationOption.fromJson(json);
}

/// @nodoc
class _$TVariationOptionTearOff {
  const _$TVariationOptionTearOff();

// ignore: unused_element
  _TVariationOption call(
      {String id,
      String name = '',
      String description = '',
      num minCount = 1,
      int maxCount = 1,
      num price}) {
    return _TVariationOption(
      id: id,
      name: name,
      description: description,
      minCount: minCount,
      maxCount: maxCount,
      price: price,
    );
  }

// ignore: unused_element
  TVariationOption fromJson(Map<String, Object> json) {
    return TVariationOption.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TVariationOption = _$TVariationOptionTearOff();

/// @nodoc
mixin _$TVariationOption {
  String get id;
  String get name;
  String get description;
  num get minCount;
  int get maxCount; // @Default([]) List<RemoteImage> image,
  num get price;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TVariationOptionCopyWith<TVariationOption> get copyWith;
}

/// @nodoc
abstract class $TVariationOptionCopyWith<$Res> {
  factory $TVariationOptionCopyWith(
          TVariationOption value, $Res Function(TVariationOption) then) =
      _$TVariationOptionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      num minCount,
      int maxCount,
      num price});
}

/// @nodoc
class _$TVariationOptionCopyWithImpl<$Res>
    implements $TVariationOptionCopyWith<$Res> {
  _$TVariationOptionCopyWithImpl(this._value, this._then);

  final TVariationOption _value;
  // ignore: unused_field
  final $Res Function(TVariationOption) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object minCount = freezed,
    Object maxCount = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      minCount: minCount == freezed ? _value.minCount : minCount as num,
      maxCount: maxCount == freezed ? _value.maxCount : maxCount as int,
      price: price == freezed ? _value.price : price as num,
    ));
  }
}

/// @nodoc
abstract class _$TVariationOptionCopyWith<$Res>
    implements $TVariationOptionCopyWith<$Res> {
  factory _$TVariationOptionCopyWith(
          _TVariationOption value, $Res Function(_TVariationOption) then) =
      __$TVariationOptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      num minCount,
      int maxCount,
      num price});
}

/// @nodoc
class __$TVariationOptionCopyWithImpl<$Res>
    extends _$TVariationOptionCopyWithImpl<$Res>
    implements _$TVariationOptionCopyWith<$Res> {
  __$TVariationOptionCopyWithImpl(
      _TVariationOption _value, $Res Function(_TVariationOption) _then)
      : super(_value, (v) => _then(v as _TVariationOption));

  @override
  _TVariationOption get _value => super._value as _TVariationOption;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object minCount = freezed,
    Object maxCount = freezed,
    Object price = freezed,
  }) {
    return _then(_TVariationOption(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      minCount: minCount == freezed ? _value.minCount : minCount as num,
      maxCount: maxCount == freezed ? _value.maxCount : maxCount as int,
      price: price == freezed ? _value.price : price as num,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TVariationOption extends _TVariationOption
    with DiagnosticableTreeMixin {
  _$_TVariationOption(
      {this.id,
      this.name = '',
      this.description = '',
      this.minCount = 1,
      this.maxCount = 1,
      this.price})
      : assert(name != null),
        assert(description != null),
        assert(minCount != null),
        assert(maxCount != null),
        super._();

  factory _$_TVariationOption.fromJson(Map<String, dynamic> json) =>
      _$_$_TVariationOptionFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: 1)
  @override
  final num minCount;
  @JsonKey(defaultValue: 1)
  @override
  final int maxCount;
  @override // @Default([]) List<RemoteImage> image,
  final num price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TVariationOption(id: $id, name: $name, description: $description, minCount: $minCount, maxCount: $maxCount, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TVariationOption'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('minCount', minCount))
      ..add(DiagnosticsProperty('maxCount', maxCount))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TVariationOption &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.minCount, minCount) ||
                const DeepCollectionEquality()
                    .equals(other.minCount, minCount)) &&
            (identical(other.maxCount, maxCount) ||
                const DeepCollectionEquality()
                    .equals(other.maxCount, maxCount)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(minCount) ^
      const DeepCollectionEquality().hash(maxCount) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$TVariationOptionCopyWith<_TVariationOption> get copyWith =>
      __$TVariationOptionCopyWithImpl<_TVariationOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TVariationOptionToJson(this);
  }
}

abstract class _TVariationOption extends TVariationOption {
  _TVariationOption._() : super._();
  factory _TVariationOption(
      {String id,
      String name,
      String description,
      num minCount,
      int maxCount,
      num price}) = _$_TVariationOption;

  factory _TVariationOption.fromJson(Map<String, dynamic> json) =
      _$_TVariationOption.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  num get minCount;
  @override
  int get maxCount;
  @override // @Default([]) List<RemoteImage> image,
  num get price;
  @override
  @JsonKey(ignore: true)
  _$TVariationOptionCopyWith<_TVariationOption> get copyWith;
}

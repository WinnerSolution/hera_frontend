// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'variation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TVariation _$TVariationFromJson(Map<String, dynamic> json) {
  return _TVariation.fromJson(json);
}

/// @nodoc
class _$TVariationTearOff {
  const _$TVariationTearOff();

// ignore: unused_element
  _TVariation call(
      {String id,
      String name = '',
      String description = '',
      int minSelectCount = 0,
      int maxSelectCount = 1,
      List<TVariationOption> variations = const []}) {
    return _TVariation(
      id: id,
      name: name,
      description: description,
      minSelectCount: minSelectCount,
      maxSelectCount: maxSelectCount,
      variations: variations,
    );
  }

// ignore: unused_element
  TVariation fromJson(Map<String, Object> json) {
    return TVariation.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TVariation = _$TVariationTearOff();

/// @nodoc
mixin _$TVariation {
  String get id;
  String get name;
  String get description;
  int get minSelectCount;
  int get maxSelectCount;
  List<TVariationOption> get variations;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TVariationCopyWith<TVariation> get copyWith;
}

/// @nodoc
abstract class $TVariationCopyWith<$Res> {
  factory $TVariationCopyWith(
          TVariation value, $Res Function(TVariation) then) =
      _$TVariationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      int minSelectCount,
      int maxSelectCount,
      List<TVariationOption> variations});
}

/// @nodoc
class _$TVariationCopyWithImpl<$Res> implements $TVariationCopyWith<$Res> {
  _$TVariationCopyWithImpl(this._value, this._then);

  final TVariation _value;
  // ignore: unused_field
  final $Res Function(TVariation) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object minSelectCount = freezed,
    Object maxSelectCount = freezed,
    Object variations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      minSelectCount: minSelectCount == freezed
          ? _value.minSelectCount
          : minSelectCount as int,
      maxSelectCount: maxSelectCount == freezed
          ? _value.maxSelectCount
          : maxSelectCount as int,
      variations: variations == freezed
          ? _value.variations
          : variations as List<TVariationOption>,
    ));
  }
}

/// @nodoc
abstract class _$TVariationCopyWith<$Res> implements $TVariationCopyWith<$Res> {
  factory _$TVariationCopyWith(
          _TVariation value, $Res Function(_TVariation) then) =
      __$TVariationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      int minSelectCount,
      int maxSelectCount,
      List<TVariationOption> variations});
}

/// @nodoc
class __$TVariationCopyWithImpl<$Res> extends _$TVariationCopyWithImpl<$Res>
    implements _$TVariationCopyWith<$Res> {
  __$TVariationCopyWithImpl(
      _TVariation _value, $Res Function(_TVariation) _then)
      : super(_value, (v) => _then(v as _TVariation));

  @override
  _TVariation get _value => super._value as _TVariation;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object minSelectCount = freezed,
    Object maxSelectCount = freezed,
    Object variations = freezed,
  }) {
    return _then(_TVariation(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      minSelectCount: minSelectCount == freezed
          ? _value.minSelectCount
          : minSelectCount as int,
      maxSelectCount: maxSelectCount == freezed
          ? _value.maxSelectCount
          : maxSelectCount as int,
      variations: variations == freezed
          ? _value.variations
          : variations as List<TVariationOption>,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TVariation extends _TVariation with DiagnosticableTreeMixin {
  _$_TVariation(
      {this.id,
      this.name = '',
      this.description = '',
      this.minSelectCount = 0,
      this.maxSelectCount = 1,
      this.variations = const []})
      : assert(name != null),
        assert(description != null),
        assert(minSelectCount != null),
        assert(maxSelectCount != null),
        assert(variations != null),
        super._();

  factory _$_TVariation.fromJson(Map<String, dynamic> json) =>
      _$_$_TVariationFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: 0)
  @override
  final int minSelectCount;
  @JsonKey(defaultValue: 1)
  @override
  final int maxSelectCount;
  @JsonKey(defaultValue: const [])
  @override
  final List<TVariationOption> variations;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TVariation(id: $id, name: $name, description: $description, minSelectCount: $minSelectCount, maxSelectCount: $maxSelectCount, variations: $variations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TVariation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('minSelectCount', minSelectCount))
      ..add(DiagnosticsProperty('maxSelectCount', maxSelectCount))
      ..add(DiagnosticsProperty('variations', variations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TVariation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.minSelectCount, minSelectCount) ||
                const DeepCollectionEquality()
                    .equals(other.minSelectCount, minSelectCount)) &&
            (identical(other.maxSelectCount, maxSelectCount) ||
                const DeepCollectionEquality()
                    .equals(other.maxSelectCount, maxSelectCount)) &&
            (identical(other.variations, variations) ||
                const DeepCollectionEquality()
                    .equals(other.variations, variations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(minSelectCount) ^
      const DeepCollectionEquality().hash(maxSelectCount) ^
      const DeepCollectionEquality().hash(variations);

  @JsonKey(ignore: true)
  @override
  _$TVariationCopyWith<_TVariation> get copyWith =>
      __$TVariationCopyWithImpl<_TVariation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TVariationToJson(this);
  }
}

abstract class _TVariation extends TVariation {
  _TVariation._() : super._();
  factory _TVariation(
      {String id,
      String name,
      String description,
      int minSelectCount,
      int maxSelectCount,
      List<TVariationOption> variations}) = _$_TVariation;

  factory _TVariation.fromJson(Map<String, dynamic> json) =
      _$_TVariation.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get minSelectCount;
  @override
  int get maxSelectCount;
  @override
  List<TVariationOption> get variations;
  @override
  @JsonKey(ignore: true)
  _$TVariationCopyWith<_TVariation> get copyWith;
}

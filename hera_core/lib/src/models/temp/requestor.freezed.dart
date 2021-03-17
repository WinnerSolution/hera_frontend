// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'requestor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TRequestor _$TRequestorFromJson(Map<String, dynamic> json) {
  return _TRequestor.fromJson(json);
}

/// @nodoc
class _$TRequestorTearOff {
  const _$TRequestorTearOff();

// ignore: unused_element
  _TRequestor call(
      {String id,
      String fullname,
      String phone,
      double balance = 0,
      List<String> tags = const []}) {
    return _TRequestor(
      id: id,
      fullname: fullname,
      phone: phone,
      balance: balance,
      tags: tags,
    );
  }

// ignore: unused_element
  TRequestor fromJson(Map<String, Object> json) {
    return TRequestor.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TRequestor = _$TRequestorTearOff();

/// @nodoc
mixin _$TRequestor {
  String get id; //
  String get fullname;
  String get phone; //
  double get balance;
  List<String> get tags;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TRequestorCopyWith<TRequestor> get copyWith;
}

/// @nodoc
abstract class $TRequestorCopyWith<$Res> {
  factory $TRequestorCopyWith(
          TRequestor value, $Res Function(TRequestor) then) =
      _$TRequestorCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String fullname,
      String phone,
      double balance,
      List<String> tags});
}

/// @nodoc
class _$TRequestorCopyWithImpl<$Res> implements $TRequestorCopyWith<$Res> {
  _$TRequestorCopyWithImpl(this._value, this._then);

  final TRequestor _value;
  // ignore: unused_field
  final $Res Function(TRequestor) _then;

  @override
  $Res call({
    Object id = freezed,
    Object fullname = freezed,
    Object phone = freezed,
    Object balance = freezed,
    Object tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      phone: phone == freezed ? _value.phone : phone as String,
      balance: balance == freezed ? _value.balance : balance as double,
      tags: tags == freezed ? _value.tags : tags as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TRequestorCopyWith<$Res> implements $TRequestorCopyWith<$Res> {
  factory _$TRequestorCopyWith(
          _TRequestor value, $Res Function(_TRequestor) then) =
      __$TRequestorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String fullname,
      String phone,
      double balance,
      List<String> tags});
}

/// @nodoc
class __$TRequestorCopyWithImpl<$Res> extends _$TRequestorCopyWithImpl<$Res>
    implements _$TRequestorCopyWith<$Res> {
  __$TRequestorCopyWithImpl(
      _TRequestor _value, $Res Function(_TRequestor) _then)
      : super(_value, (v) => _then(v as _TRequestor));

  @override
  _TRequestor get _value => super._value as _TRequestor;

  @override
  $Res call({
    Object id = freezed,
    Object fullname = freezed,
    Object phone = freezed,
    Object balance = freezed,
    Object tags = freezed,
  }) {
    return _then(_TRequestor(
      id: id == freezed ? _value.id : id as String,
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      phone: phone == freezed ? _value.phone : phone as String,
      balance: balance == freezed ? _value.balance : balance as double,
      tags: tags == freezed ? _value.tags : tags as List<String>,
    ));
  }
}

@CustomDateTimeConverter()
@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_TRequestor extends _TRequestor with DiagnosticableTreeMixin {
  _$_TRequestor(
      {this.id,
      this.fullname,
      this.phone,
      this.balance = 0,
      this.tags = const []})
      : assert(balance != null),
        assert(tags != null),
        super._();

  factory _$_TRequestor.fromJson(Map<String, dynamic> json) =>
      _$_$_TRequestorFromJson(json);

  @override
  final String id;
  @override //
  final String fullname;
  @override
  final String phone;
  @JsonKey(defaultValue: 0)
  @override //
  final double balance;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> tags;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TRequestor(id: $id, fullname: $fullname, phone: $phone, balance: $balance, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TRequestor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TRequestor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(tags);

  @JsonKey(ignore: true)
  @override
  _$TRequestorCopyWith<_TRequestor> get copyWith =>
      __$TRequestorCopyWithImpl<_TRequestor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TRequestorToJson(this);
  }
}

abstract class _TRequestor extends TRequestor {
  _TRequestor._() : super._();
  factory _TRequestor(
      {String id,
      String fullname,
      String phone,
      double balance,
      List<String> tags}) = _$_TRequestor;

  factory _TRequestor.fromJson(Map<String, dynamic> json) =
      _$_TRequestor.fromJson;

  @override
  String get id;
  @override //
  String get fullname;
  @override
  String get phone;
  @override //
  double get balance;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$TRequestorCopyWith<_TRequestor> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remote_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RemoteImage _$RemoteImageFromJson(Map<String, dynamic> json) {
  return _RemoteImage.fromJson(json);
}

/// @nodoc
class _$RemoteImageTearOff {
  const _$RemoteImageTearOff();

// ignore: unused_element
  _RemoteImage call({String title, String url}) {
    return _RemoteImage(
      title: title,
      url: url,
    );
  }

// ignore: unused_element
  RemoteImage fromJson(Map<String, Object> json) {
    return RemoteImage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoteImage = _$RemoteImageTearOff();

/// @nodoc
mixin _$RemoteImage {
  String get title;
  String get url;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RemoteImageCopyWith<RemoteImage> get copyWith;
}

/// @nodoc
abstract class $RemoteImageCopyWith<$Res> {
  factory $RemoteImageCopyWith(
          RemoteImage value, $Res Function(RemoteImage) then) =
      _$RemoteImageCopyWithImpl<$Res>;
  $Res call({String title, String url});
}

/// @nodoc
class _$RemoteImageCopyWithImpl<$Res> implements $RemoteImageCopyWith<$Res> {
  _$RemoteImageCopyWithImpl(this._value, this._then);

  final RemoteImage _value;
  // ignore: unused_field
  final $Res Function(RemoteImage) _then;

  @override
  $Res call({
    Object title = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$RemoteImageCopyWith<$Res>
    implements $RemoteImageCopyWith<$Res> {
  factory _$RemoteImageCopyWith(
          _RemoteImage value, $Res Function(_RemoteImage) then) =
      __$RemoteImageCopyWithImpl<$Res>;
  @override
  $Res call({String title, String url});
}

/// @nodoc
class __$RemoteImageCopyWithImpl<$Res> extends _$RemoteImageCopyWithImpl<$Res>
    implements _$RemoteImageCopyWith<$Res> {
  __$RemoteImageCopyWithImpl(
      _RemoteImage _value, $Res Function(_RemoteImage) _then)
      : super(_value, (v) => _then(v as _RemoteImage));

  @override
  _RemoteImage get _value => super._value as _RemoteImage;

  @override
  $Res call({
    Object title = freezed,
    Object url = freezed,
  }) {
    return _then(_RemoteImage(
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_RemoteImage extends _RemoteImage with DiagnosticableTreeMixin {
  _$_RemoteImage({this.title, this.url}) : super._();

  factory _$_RemoteImage.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoteImageFromJson(json);

  @override
  final String title;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteImage(title: $title, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteImage'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteImage &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$RemoteImageCopyWith<_RemoteImage> get copyWith =>
      __$RemoteImageCopyWithImpl<_RemoteImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoteImageToJson(this);
  }
}

abstract class _RemoteImage extends RemoteImage {
  _RemoteImage._() : super._();
  factory _RemoteImage({String title, String url}) = _$_RemoteImage;

  factory _RemoteImage.fromJson(Map<String, dynamic> json) =
      _$_RemoteImage.fromJson;

  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$RemoteImageCopyWith<_RemoteImage> get copyWith;
}

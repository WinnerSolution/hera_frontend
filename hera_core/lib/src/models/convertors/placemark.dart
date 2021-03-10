import 'package:geocoding/geocoding.dart';
import 'package:json_annotation/json_annotation.dart';

/// Placemark converter
class CustomPlacemarkConverter implements JsonConverter<Placemark, Map<String, dynamic>> {
  const CustomPlacemarkConverter();

  @override
  Placemark fromJson(Map<String, dynamic> json) => Placemark.fromMap(json ?? {});

  @override
  Map<String, dynamic> toJson(Placemark json) => json?.toJson() ?? Placemark().toJson();
}

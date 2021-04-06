import 'package:geocoding/geocoding.dart';
import 'package:json_annotation/json_annotation.dart';

/// Location converter
class CustomLocationConverter implements JsonConverter<Location, Map<String, dynamic>> {
  const CustomLocationConverter();

  @override
  Location fromJson(Map<String, dynamic> json) => Location.fromMap(json ?? {});

  @override
  Map<String, dynamic> toJson(Location json) =>
      json?.toJson() ??
      Location(
        latitude: null,
        longitude: null,
        timestamp: null,
      ).toJson();
}

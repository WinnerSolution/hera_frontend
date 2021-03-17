import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:softi_common/services.dart';

part 'remote_image.freezed.dart';
part 'remote_image.g.dart';

@freezed
abstract class RemoteImage implements _$RemoteImage {
  RemoteImage._();

  @JsonSerializable(explicitToJson: true)
  factory RemoteImage({
    String title,
    String url,
  }) = _RemoteImage;

  factory RemoteImage.fromJson(Map<String, dynamic> json) => _$RemoteImageFromJson(json);

  // RemoteImage fromJson(Map<String, dynamic> doc) => RemoteImage.fromJson(doc);

  factory RemoteImage.fromNetworAsset(NetworkMediaAsset media) {
    return RemoteImage(
      title: media.title,
      url: media.url,
    );
  }

  NetworkMediaAsset toNetworAsset() {
    return NetworkMediaAsset(
      title: title,
      url: url,
    );
  }
}

// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart' show Uint8List, kIsWeb;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:wo_form/src/model/json_converter/duration.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

export 'package:cross_file/cross_file.dart' show XFile;
export 'package:image_picker/image_picker.dart' show ImageSource;

part 'media.freezed.dart';
part 'media.g.dart';

@Freezed(fromJson: false, toJson: false)
sealed class Media with _$Media {
  Media._();
  factory Media.url({required String url, String? name}) = MediaUrl;
  factory Media.file({required XFile file, String? name}) = MediaFile;

  // While in block body, freezed won't generate _*MediaFromJson
  factory Media.fromJson(Json json) {
    return json.containsKey('url')
        ? MediaUrl.fromJson(json)
        : throw Exception("Can't deserialize an XFile");
  }

  Json toJson() => switch (this) {
    final MediaUrl media => media.toJson(),
    final MediaFile _ => throw Exception("Can't serialize an XFile"),
  };

  String get name;

  // --

  String get urlOrPath => switch (this) {
    final MediaUrl media => media.url,
    final MediaFile media => media.file.path,
  };
  Uri get uri => switch (this) {
    final MediaUrl media => Uri.parse(media.url),
    final MediaFile media =>
      kIsWeb ? Uri.parse(media.file.path) : Uri.file(media.file.path),
  };

  // TODO : cache http.get(uri)

  Future<Uint8List> get bytes => switch (this) {
    MediaFile(file: final file) => file.readAsBytes(),
    MediaUrl(uri: final uri) =>
      http.get(uri).then((response) => response.bodyBytes),
  };

  Future<int> get length => switch (this) {
    MediaFile(file: final file) => file.length(),
    MediaUrl(uri: final uri) =>
      http.get(uri).then((response) => response.bodyBytes.length),
  };

  Future<String?> get mimeType async => switch (this) {
    MediaFile(file: final file) => file.mimeType,
    MediaUrl(uri: final uri) => http.get(uri).then(
      (response) {
        if (response.statusCode != 200) return null;
        return response.headers['content-type'];
      },
    ),
  };

  Future<bool> get isVideo async {
    final mimeType = await this.mimeType;
    if (mimeType?.contains('video') ?? false) return true;

    final extension = mimeType?.split('/') ?? name.split('.').lastOrNull;
    if (extension == null) return false;

    return [
      'mp4',
      'mkv',
      'avi',
      'mov',
      'wmv',
      'flv',
      'webm',
      '3gp',
      'mpeg',
      'ogv',
    ].contains(extension);
  }

  Future<MediaUrl> uploaded({
    required MediaService mediaService,
    required String path,
    int? maxSize,
    bool addFileNameToPath = false,
  }) async => switch (this) {
    final MediaUrl media => media,
    final MediaFile media => await mediaService.upload(
      media: media,
      path: path,
      maxSize: maxSize,
      addFileNameToPath: addFileNameToPath,
    ),
  };
}

@freezed
class MediaUrl extends Media with _$MediaUrl {
  MediaUrl({required this.url, String? name})
    : name = name ?? url.split('/').last,
      super._();

  factory MediaUrl.fromJson(Json json) => MediaUrl(url: json['url'] as String);
  Json toJson() => {'url': url};

  final String url;
  final String name;
}

@Freezed(fromJson: false, toJson: false)
class MediaFile extends Media with _$MediaFile {
  MediaFile({required this.file, String? name})
    : name = name ?? file.name,
      super._();

  final XFile file;
  final String name;
}

enum MediaType {
  imageOrVideo,
  image,
  video;

  bool get includeImages => switch (this) {
    imageOrVideo || image => true,
    video => false,
  };
  bool get includeVideos => switch (this) {
    imageOrVideo || video => true,
    image => false,
  };
}

@freezed
abstract class MediaImportSettings with _$MediaImportSettings {
  // @Assert(
  //   'quality >= 0 && quality <= 100',
  //   'quality must be between 0 and 100 (both included).',
  // )
  const factory MediaImportSettings({
    required MediaType type,
    required List<MediaImportMethod> methods,
    double? imageMaxHeight,
    double? imageMaxWidth,
    int? imageQuality,
    @Default(true) bool imageRequestFullMetadata,
    @DurationNullableConverter() Duration? videoMaxDuration,

    /// Supported on all iPhones/iPads and some Android devices.
    @Default(false) bool preferFrontCamera,
  }) = _MediaImportSettings;

  const MediaImportSettings._();

  factory MediaImportSettings.fromJson(Json json) =>
      _$MediaImportSettingsFromJson(json);
}

@freezed
sealed class MediaImportMethod with _$MediaImportMethod {
  const factory MediaImportMethod.pickMedias({
    required ImageSource source,

    /// If null, importSettings.type will be used instead.
    MediaType? type,
  }) = MediaImportMethodPickMedias;

  const factory MediaImportMethod.url() = MediaImportMethodUrl;

  const factory MediaImportMethod.custom({required String id}) =
      MediaImportMethodCustom;

  const MediaImportMethod._();

  factory MediaImportMethod.fromJson(Json json) =>
      _$MediaImportMethodFromJson(json);
}

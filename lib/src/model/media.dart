import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:wo_form/src/model/json_converter/duration.dart';
import 'package:wo_form/src/model/json_converter/xfile.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

export 'package:cross_file/cross_file.dart' show XFile;
export 'package:image_picker/image_picker.dart' show ImageSource;

part 'media.freezed.dart';
part 'media.g.dart';

/// A media is either an image or a video. For audio and other files,
/// see [FileInput].
@freezed
sealed class Media with _$Media {
  const factory Media.url({required String url}) = MediaUrl;

  const factory Media.file({@XFileConverter() required XFile file}) = MediaFile;

  /// Required for the override getter
  const Media._();

  factory Media.fromJson(Json json) => _$MediaFromJson(json);

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
  String? get name => switch (this) {
    final MediaUrl media => media.url.split('/').lastOrNull,
    final MediaFile media => media.file.name,
  };
  Future<Uint8List> get bytes => switch (this) {
    MediaFile(file: final file) => file.readAsBytes(),
    MediaUrl(uri: final uri) =>
      http.get(uri).then((response) => response.bodyBytes),
  };

  Future<MediaType> getType(BuildContext context) async => switch (this) {
    MediaUrl() => await context.read<MediaService>().typeOfMediaUrl(
      this as MediaUrl,
    ),
    MediaFile(file: final file) =>
      file.isVideo ? MediaType.video : MediaType.image,
  };

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

extension XFileX on XFile {
  bool get isVideo {
    if (mimeType?.contains('video') ?? false) return true;

    final extension = name.split('.').lastOrNull;
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
}

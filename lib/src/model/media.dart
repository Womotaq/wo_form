import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/duration.dart';
import 'package:wo_form/src/model/json_converter/media_list.dart';
import 'package:wo_form/src/model/json_converter/xfile.dart';
import 'package:wo_form/wo_form.dart';

part 'media.freezed.dart';
part 'media.g.dart';

/// A media is either an image or a video. For audio and other files,
/// see [FileInput].
@freezed
sealed class Media with _$Media {
  const factory Media.url({
    required String url,
  }) = MediaUrl;

  const factory Media.file({
    @XFileConverter() required XFile file,
  }) = MediaFile;

  /// Required for the override getter
  const Media._();

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  static Map<String, dynamic> staticToJson(Media object) => object.toJson();

  // --

  String get urlOrPath => switch (this) {
        final MediaUrl media => media.url,
        final MediaFile media => media.file.path,
      };

  Future<MediaType> getType(BuildContext context) async => switch (this) {
        MediaUrl() =>
          await context.read<MediaService>().typeOfMediaUrl(this as MediaUrl),
        MediaFile(file: final file) =>
          file.mimeType?.startsWith('video') ?? false
              ? MediaType.video
              : MediaType.image,
      };

  Future<MediaUrl> uploaded({
    required MediaService mediaService,
    required String path,
  }) async =>
      switch (this) {
        final MediaUrl media => media,
        final MediaFile media =>
          await mediaService.upload(media: media, path: path),
      };
}

enum MediaType { image, video }

@freezed
class MediaImportSettings with _$MediaImportSettings {
  // @Assert(
  //   'quality >= 0 && quality <= 100',
  //   'quality must be between 0 and 100 (both included).',
  // )
  const factory MediaImportSettings({
    required Set<MediaType> types,
    @MediaImportMethodListConverter() required List<MediaImportMethod> methods,
    double? imageMaxHeight,
    double? imageMaxWidth,
    int? imageQuality,
    @Default(true) bool imageRequestFullMetadata,
    @DurationNullableConverter() Duration? videoMaxDuration,
    @Default(false) bool preferRearCamera,
  }) = _MediaImportSettings;

  const MediaImportSettings._();

  factory MediaImportSettings.fromJson(Map<String, dynamic> json) =>
      _$MediaImportSettingsFromJson(json);

  static Map<String, dynamic>? staticToJson(MediaImportSettings object) =>
      object.toJson();
}

@freezed
sealed class MediaImportMethod with _$MediaImportMethod {
  const factory MediaImportMethod.pickMedias({
    required MediaPickSource source,

    /// If null, importSettings.types will be used instead
    Set<MediaType>? types,
  }) = MediaImportMethodPickMedias;

  const factory MediaImportMethod.url() = MediaImportMethodUrl;

  const MediaImportMethod._();

  factory MediaImportMethod.fromJson(Map<String, dynamic> json) =>
      _$MediaImportMethodFromJson(json);

  static Map<String, dynamic> staticToJson(MediaImportMethod object) =>
      object.toJson();
}

enum MediaPickSource { gallery, camera }

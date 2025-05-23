// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaUrl _$MediaUrlFromJson(Map<String, dynamic> json) => MediaUrl(
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MediaUrlToJson(MediaUrl instance) => <String, dynamic>{
      'url': instance.url,
      'runtimeType': instance.$type,
    };

MediaFile _$MediaFileFromJson(Map<String, dynamic> json) => MediaFile(
      file:
          const XFileConverter().fromJson(json['file'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MediaFileToJson(MediaFile instance) => <String, dynamic>{
      'file': const XFileConverter().toJson(instance.file),
      'runtimeType': instance.$type,
    };

_MediaImportSettings _$MediaImportSettingsFromJson(Map<String, dynamic> json) =>
    _MediaImportSettings(
      type: $enumDecode(_$MediaTypeEnumMap, json['type']),
      methods: const MediaImportMethodListConverter()
          .fromJson(json['methods'] as List),
      imageMaxHeight: (json['imageMaxHeight'] as num?)?.toDouble(),
      imageMaxWidth: (json['imageMaxWidth'] as num?)?.toDouble(),
      imageQuality: (json['imageQuality'] as num?)?.toInt(),
      imageRequestFullMetadata:
          json['imageRequestFullMetadata'] as bool? ?? true,
      videoMaxDuration: const DurationNullableConverter()
          .fromJson((json['videoMaxDuration'] as num?)?.toInt()),
      preferFrontCamera: json['preferFrontCamera'] as bool? ?? false,
    );

Map<String, dynamic> _$MediaImportSettingsToJson(
        _MediaImportSettings instance) =>
    <String, dynamic>{
      'type': _$MediaTypeEnumMap[instance.type]!,
      'methods':
          const MediaImportMethodListConverter().toJson(instance.methods),
      'imageMaxHeight': instance.imageMaxHeight,
      'imageMaxWidth': instance.imageMaxWidth,
      'imageQuality': instance.imageQuality,
      'imageRequestFullMetadata': instance.imageRequestFullMetadata,
      'videoMaxDuration':
          const DurationNullableConverter().toJson(instance.videoMaxDuration),
      'preferFrontCamera': instance.preferFrontCamera,
    };

const _$MediaTypeEnumMap = {
  MediaType.imageOrVideo: 'imageOrVideo',
  MediaType.image: 'image',
  MediaType.video: 'video',
};

MediaImportMethodPickMedias _$MediaImportMethodPickMediasFromJson(
        Map<String, dynamic> json) =>
    MediaImportMethodPickMedias(
      source: $enumDecode(_$MediaPickSourceEnumMap, json['source']),
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MediaImportMethodPickMediasToJson(
        MediaImportMethodPickMedias instance) =>
    <String, dynamic>{
      'source': _$MediaPickSourceEnumMap[instance.source]!,
      'type': _$MediaTypeEnumMap[instance.type],
      'runtimeType': instance.$type,
    };

const _$MediaPickSourceEnumMap = {
  MediaPickSource.gallery: 'gallery',
  MediaPickSource.camera: 'camera',
};

MediaImportMethodUrl _$MediaImportMethodUrlFromJson(
        Map<String, dynamic> json) =>
    MediaImportMethodUrl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MediaImportMethodUrlToJson(
        MediaImportMethodUrl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

MediaImportMethodCustom _$MediaImportMethodCustomFromJson(
        Map<String, dynamic> json) =>
    MediaImportMethodCustom(
      id: json['id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MediaImportMethodCustomToJson(
        MediaImportMethodCustom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaUrlImpl _$$MediaUrlImplFromJson(Map<String, dynamic> json) =>
    _$MediaUrlImpl(
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MediaUrlImplToJson(_$MediaUrlImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'runtimeType': instance.$type,
    };

_$MediaFileImpl _$$MediaFileImplFromJson(Map<String, dynamic> json) =>
    _$MediaFileImpl(
      file:
          const XFileConverter().fromJson(json['file'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MediaFileImplToJson(_$MediaFileImpl instance) =>
    <String, dynamic>{
      'file': const XFileConverter().toJson(instance.file),
      'runtimeType': instance.$type,
    };

_$MediaImportSettingsImpl _$$MediaImportSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaImportSettingsImpl(
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

Map<String, dynamic> _$$MediaImportSettingsImplToJson(
        _$MediaImportSettingsImpl instance) =>
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

_$MediaImportMethodPickMediasImpl _$$MediaImportMethodPickMediasImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaImportMethodPickMediasImpl(
      source: $enumDecode(_$MediaPickSourceEnumMap, json['source']),
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MediaImportMethodPickMediasImplToJson(
        _$MediaImportMethodPickMediasImpl instance) =>
    <String, dynamic>{
      'source': _$MediaPickSourceEnumMap[instance.source]!,
      'type': _$MediaTypeEnumMap[instance.type],
      'runtimeType': instance.$type,
    };

const _$MediaPickSourceEnumMap = {
  MediaPickSource.gallery: 'gallery',
  MediaPickSource.camera: 'camera',
};

_$MediaImportMethodUrlImpl _$$MediaImportMethodUrlImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaImportMethodUrlImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MediaImportMethodUrlImplToJson(
        _$MediaImportMethodUrlImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

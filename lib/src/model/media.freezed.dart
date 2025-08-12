// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Media _$MediaFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'url':
          return MediaUrl.fromJson(
            json
          );
                case 'file':
          return MediaFile.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Media',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Media implements DiagnosticableTreeMixin {



  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Media'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Media);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Media()';
}


}

/// @nodoc
class $MediaCopyWith<$Res>  {
$MediaCopyWith(Media _, $Res Function(Media) __);
}



/// @nodoc
@JsonSerializable()

class MediaUrl extends Media with DiagnosticableTreeMixin {
  const MediaUrl({required this.url, final  String? $type}): $type = $type ?? 'url',super._();
  factory MediaUrl.fromJson(Map<String, dynamic> json) => _$MediaUrlFromJson(json);

 final  String url;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaUrlCopyWith<MediaUrl> get copyWith => _$MediaUrlCopyWithImpl<MediaUrl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaUrlToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Media.url'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUrl&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Media.url(url: $url)';
}


}

/// @nodoc
abstract mixin class $MediaUrlCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory $MediaUrlCopyWith(MediaUrl value, $Res Function(MediaUrl) _then) = _$MediaUrlCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$MediaUrlCopyWithImpl<$Res>
    implements $MediaUrlCopyWith<$Res> {
  _$MediaUrlCopyWithImpl(this._self, this._then);

  final MediaUrl _self;
  final $Res Function(MediaUrl) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(MediaUrl(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class MediaFile extends Media with DiagnosticableTreeMixin {
  const MediaFile({@XFileConverter() required this.file, final  String? $type}): $type = $type ?? 'file',super._();
  factory MediaFile.fromJson(Map<String, dynamic> json) => _$MediaFileFromJson(json);

@XFileConverter() final  XFile file;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaFileCopyWith<MediaFile> get copyWith => _$MediaFileCopyWithImpl<MediaFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaFileToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Media.file'))
    ..add(DiagnosticsProperty('file', file));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaFile&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Media.file(file: $file)';
}


}

/// @nodoc
abstract mixin class $MediaFileCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory $MediaFileCopyWith(MediaFile value, $Res Function(MediaFile) _then) = _$MediaFileCopyWithImpl;
@useResult
$Res call({
@XFileConverter() XFile file
});




}
/// @nodoc
class _$MediaFileCopyWithImpl<$Res>
    implements $MediaFileCopyWith<$Res> {
  _$MediaFileCopyWithImpl(this._self, this._then);

  final MediaFile _self;
  final $Res Function(MediaFile) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(MediaFile(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as XFile,
  ));
}


}


/// @nodoc
mixin _$MediaImportSettings implements DiagnosticableTreeMixin {

 MediaType get type; List<MediaImportMethod> get methods; double? get imageMaxHeight; double? get imageMaxWidth; int? get imageQuality; bool get imageRequestFullMetadata;@DurationNullableConverter() Duration? get videoMaxDuration; bool get preferFrontCamera;
/// Create a copy of MediaImportSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaImportSettingsCopyWith<MediaImportSettings> get copyWith => _$MediaImportSettingsCopyWithImpl<MediaImportSettings>(this as MediaImportSettings, _$identity);

  /// Serializes this MediaImportSettings to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MediaImportSettings'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('methods', methods))..add(DiagnosticsProperty('imageMaxHeight', imageMaxHeight))..add(DiagnosticsProperty('imageMaxWidth', imageMaxWidth))..add(DiagnosticsProperty('imageQuality', imageQuality))..add(DiagnosticsProperty('imageRequestFullMetadata', imageRequestFullMetadata))..add(DiagnosticsProperty('videoMaxDuration', videoMaxDuration))..add(DiagnosticsProperty('preferFrontCamera', preferFrontCamera));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaImportSettings&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.methods, methods)&&(identical(other.imageMaxHeight, imageMaxHeight) || other.imageMaxHeight == imageMaxHeight)&&(identical(other.imageMaxWidth, imageMaxWidth) || other.imageMaxWidth == imageMaxWidth)&&(identical(other.imageQuality, imageQuality) || other.imageQuality == imageQuality)&&(identical(other.imageRequestFullMetadata, imageRequestFullMetadata) || other.imageRequestFullMetadata == imageRequestFullMetadata)&&(identical(other.videoMaxDuration, videoMaxDuration) || other.videoMaxDuration == videoMaxDuration)&&(identical(other.preferFrontCamera, preferFrontCamera) || other.preferFrontCamera == preferFrontCamera));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(methods),imageMaxHeight,imageMaxWidth,imageQuality,imageRequestFullMetadata,videoMaxDuration,preferFrontCamera);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MediaImportSettings(type: $type, methods: $methods, imageMaxHeight: $imageMaxHeight, imageMaxWidth: $imageMaxWidth, imageQuality: $imageQuality, imageRequestFullMetadata: $imageRequestFullMetadata, videoMaxDuration: $videoMaxDuration, preferFrontCamera: $preferFrontCamera)';
}


}

/// @nodoc
abstract mixin class $MediaImportSettingsCopyWith<$Res>  {
  factory $MediaImportSettingsCopyWith(MediaImportSettings value, $Res Function(MediaImportSettings) _then) = _$MediaImportSettingsCopyWithImpl;
@useResult
$Res call({
 MediaType type, List<MediaImportMethod> methods, double? imageMaxHeight, double? imageMaxWidth, int? imageQuality, bool imageRequestFullMetadata,@DurationNullableConverter() Duration? videoMaxDuration, bool preferFrontCamera
});




}
/// @nodoc
class _$MediaImportSettingsCopyWithImpl<$Res>
    implements $MediaImportSettingsCopyWith<$Res> {
  _$MediaImportSettingsCopyWithImpl(this._self, this._then);

  final MediaImportSettings _self;
  final $Res Function(MediaImportSettings) _then;

/// Create a copy of MediaImportSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? methods = null,Object? imageMaxHeight = freezed,Object? imageMaxWidth = freezed,Object? imageQuality = freezed,Object? imageRequestFullMetadata = null,Object? videoMaxDuration = freezed,Object? preferFrontCamera = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MediaType,methods: null == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<MediaImportMethod>,imageMaxHeight: freezed == imageMaxHeight ? _self.imageMaxHeight : imageMaxHeight // ignore: cast_nullable_to_non_nullable
as double?,imageMaxWidth: freezed == imageMaxWidth ? _self.imageMaxWidth : imageMaxWidth // ignore: cast_nullable_to_non_nullable
as double?,imageQuality: freezed == imageQuality ? _self.imageQuality : imageQuality // ignore: cast_nullable_to_non_nullable
as int?,imageRequestFullMetadata: null == imageRequestFullMetadata ? _self.imageRequestFullMetadata : imageRequestFullMetadata // ignore: cast_nullable_to_non_nullable
as bool,videoMaxDuration: freezed == videoMaxDuration ? _self.videoMaxDuration : videoMaxDuration // ignore: cast_nullable_to_non_nullable
as Duration?,preferFrontCamera: null == preferFrontCamera ? _self.preferFrontCamera : preferFrontCamera // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _MediaImportSettings extends MediaImportSettings with DiagnosticableTreeMixin {
  const _MediaImportSettings({required this.type, required final  List<MediaImportMethod> methods, this.imageMaxHeight, this.imageMaxWidth, this.imageQuality, this.imageRequestFullMetadata = true, @DurationNullableConverter() this.videoMaxDuration, this.preferFrontCamera = false}): _methods = methods,super._();
  factory _MediaImportSettings.fromJson(Map<String, dynamic> json) => _$MediaImportSettingsFromJson(json);

@override final  MediaType type;
 final  List<MediaImportMethod> _methods;
@override List<MediaImportMethod> get methods {
  if (_methods is EqualUnmodifiableListView) return _methods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_methods);
}

@override final  double? imageMaxHeight;
@override final  double? imageMaxWidth;
@override final  int? imageQuality;
@override@JsonKey() final  bool imageRequestFullMetadata;
@override@DurationNullableConverter() final  Duration? videoMaxDuration;
@override@JsonKey() final  bool preferFrontCamera;

/// Create a copy of MediaImportSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaImportSettingsCopyWith<_MediaImportSettings> get copyWith => __$MediaImportSettingsCopyWithImpl<_MediaImportSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaImportSettingsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MediaImportSettings'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('methods', methods))..add(DiagnosticsProperty('imageMaxHeight', imageMaxHeight))..add(DiagnosticsProperty('imageMaxWidth', imageMaxWidth))..add(DiagnosticsProperty('imageQuality', imageQuality))..add(DiagnosticsProperty('imageRequestFullMetadata', imageRequestFullMetadata))..add(DiagnosticsProperty('videoMaxDuration', videoMaxDuration))..add(DiagnosticsProperty('preferFrontCamera', preferFrontCamera));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaImportSettings&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._methods, _methods)&&(identical(other.imageMaxHeight, imageMaxHeight) || other.imageMaxHeight == imageMaxHeight)&&(identical(other.imageMaxWidth, imageMaxWidth) || other.imageMaxWidth == imageMaxWidth)&&(identical(other.imageQuality, imageQuality) || other.imageQuality == imageQuality)&&(identical(other.imageRequestFullMetadata, imageRequestFullMetadata) || other.imageRequestFullMetadata == imageRequestFullMetadata)&&(identical(other.videoMaxDuration, videoMaxDuration) || other.videoMaxDuration == videoMaxDuration)&&(identical(other.preferFrontCamera, preferFrontCamera) || other.preferFrontCamera == preferFrontCamera));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_methods),imageMaxHeight,imageMaxWidth,imageQuality,imageRequestFullMetadata,videoMaxDuration,preferFrontCamera);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MediaImportSettings(type: $type, methods: $methods, imageMaxHeight: $imageMaxHeight, imageMaxWidth: $imageMaxWidth, imageQuality: $imageQuality, imageRequestFullMetadata: $imageRequestFullMetadata, videoMaxDuration: $videoMaxDuration, preferFrontCamera: $preferFrontCamera)';
}


}

/// @nodoc
abstract mixin class _$MediaImportSettingsCopyWith<$Res> implements $MediaImportSettingsCopyWith<$Res> {
  factory _$MediaImportSettingsCopyWith(_MediaImportSettings value, $Res Function(_MediaImportSettings) _then) = __$MediaImportSettingsCopyWithImpl;
@override @useResult
$Res call({
 MediaType type, List<MediaImportMethod> methods, double? imageMaxHeight, double? imageMaxWidth, int? imageQuality, bool imageRequestFullMetadata,@DurationNullableConverter() Duration? videoMaxDuration, bool preferFrontCamera
});




}
/// @nodoc
class __$MediaImportSettingsCopyWithImpl<$Res>
    implements _$MediaImportSettingsCopyWith<$Res> {
  __$MediaImportSettingsCopyWithImpl(this._self, this._then);

  final _MediaImportSettings _self;
  final $Res Function(_MediaImportSettings) _then;

/// Create a copy of MediaImportSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? methods = null,Object? imageMaxHeight = freezed,Object? imageMaxWidth = freezed,Object? imageQuality = freezed,Object? imageRequestFullMetadata = null,Object? videoMaxDuration = freezed,Object? preferFrontCamera = null,}) {
  return _then(_MediaImportSettings(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MediaType,methods: null == methods ? _self._methods : methods // ignore: cast_nullable_to_non_nullable
as List<MediaImportMethod>,imageMaxHeight: freezed == imageMaxHeight ? _self.imageMaxHeight : imageMaxHeight // ignore: cast_nullable_to_non_nullable
as double?,imageMaxWidth: freezed == imageMaxWidth ? _self.imageMaxWidth : imageMaxWidth // ignore: cast_nullable_to_non_nullable
as double?,imageQuality: freezed == imageQuality ? _self.imageQuality : imageQuality // ignore: cast_nullable_to_non_nullable
as int?,imageRequestFullMetadata: null == imageRequestFullMetadata ? _self.imageRequestFullMetadata : imageRequestFullMetadata // ignore: cast_nullable_to_non_nullable
as bool,videoMaxDuration: freezed == videoMaxDuration ? _self.videoMaxDuration : videoMaxDuration // ignore: cast_nullable_to_non_nullable
as Duration?,preferFrontCamera: null == preferFrontCamera ? _self.preferFrontCamera : preferFrontCamera // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

MediaImportMethod _$MediaImportMethodFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'pickMedias':
          return MediaImportMethodPickMedias.fromJson(
            json
          );
                case 'url':
          return MediaImportMethodUrl.fromJson(
            json
          );
                case 'custom':
          return MediaImportMethodCustom.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'MediaImportMethod',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$MediaImportMethod implements DiagnosticableTreeMixin {



  /// Serializes this MediaImportMethod to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MediaImportMethod'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaImportMethod);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MediaImportMethod()';
}


}

/// @nodoc
class $MediaImportMethodCopyWith<$Res>  {
$MediaImportMethodCopyWith(MediaImportMethod _, $Res Function(MediaImportMethod) __);
}



/// @nodoc
@JsonSerializable()

class MediaImportMethodPickMedias extends MediaImportMethod with DiagnosticableTreeMixin {
  const MediaImportMethodPickMedias({required this.source, this.type, final  String? $type}): $type = $type ?? 'pickMedias',super._();
  factory MediaImportMethodPickMedias.fromJson(Map<String, dynamic> json) => _$MediaImportMethodPickMediasFromJson(json);

 final  ImageSource source;
/// If null, importSettings.type will be used instead.
 final  MediaType? type;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of MediaImportMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaImportMethodPickMediasCopyWith<MediaImportMethodPickMedias> get copyWith => _$MediaImportMethodPickMediasCopyWithImpl<MediaImportMethodPickMedias>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaImportMethodPickMediasToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MediaImportMethod.pickMedias'))
    ..add(DiagnosticsProperty('source', source))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaImportMethodPickMedias&&(identical(other.source, source) || other.source == source)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MediaImportMethod.pickMedias(source: $source, type: $type)';
}


}

/// @nodoc
abstract mixin class $MediaImportMethodPickMediasCopyWith<$Res> implements $MediaImportMethodCopyWith<$Res> {
  factory $MediaImportMethodPickMediasCopyWith(MediaImportMethodPickMedias value, $Res Function(MediaImportMethodPickMedias) _then) = _$MediaImportMethodPickMediasCopyWithImpl;
@useResult
$Res call({
 ImageSource source, MediaType? type
});




}
/// @nodoc
class _$MediaImportMethodPickMediasCopyWithImpl<$Res>
    implements $MediaImportMethodPickMediasCopyWith<$Res> {
  _$MediaImportMethodPickMediasCopyWithImpl(this._self, this._then);

  final MediaImportMethodPickMedias _self;
  final $Res Function(MediaImportMethodPickMedias) _then;

/// Create a copy of MediaImportMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? source = null,Object? type = freezed,}) {
  return _then(MediaImportMethodPickMedias(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ImageSource,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MediaType?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class MediaImportMethodUrl extends MediaImportMethod with DiagnosticableTreeMixin {
  const MediaImportMethodUrl({final  String? $type}): $type = $type ?? 'url',super._();
  factory MediaImportMethodUrl.fromJson(Map<String, dynamic> json) => _$MediaImportMethodUrlFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$MediaImportMethodUrlToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MediaImportMethod.url'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaImportMethodUrl);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MediaImportMethod.url()';
}


}




/// @nodoc
@JsonSerializable()

class MediaImportMethodCustom extends MediaImportMethod with DiagnosticableTreeMixin {
  const MediaImportMethodCustom({required this.id, final  String? $type}): $type = $type ?? 'custom',super._();
  factory MediaImportMethodCustom.fromJson(Map<String, dynamic> json) => _$MediaImportMethodCustomFromJson(json);

 final  String id;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of MediaImportMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaImportMethodCustomCopyWith<MediaImportMethodCustom> get copyWith => _$MediaImportMethodCustomCopyWithImpl<MediaImportMethodCustom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaImportMethodCustomToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MediaImportMethod.custom'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaImportMethodCustom&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MediaImportMethod.custom(id: $id)';
}


}

/// @nodoc
abstract mixin class $MediaImportMethodCustomCopyWith<$Res> implements $MediaImportMethodCopyWith<$Res> {
  factory $MediaImportMethodCustomCopyWith(MediaImportMethodCustom value, $Res Function(MediaImportMethodCustom) _then) = _$MediaImportMethodCustomCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$MediaImportMethodCustomCopyWithImpl<$Res>
    implements $MediaImportMethodCustomCopyWith<$Res> {
  _$MediaImportMethodCustomCopyWithImpl(this._self, this._then);

  final MediaImportMethodCustom _self;
  final $Res Function(MediaImportMethodCustom) _then;

/// Create a copy of MediaImportMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(MediaImportMethodCustom(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

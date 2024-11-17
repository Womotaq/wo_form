// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Media _$MediaFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'url':
      return MediaUrl.fromJson(json);
    case 'file':
      return MediaFile.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Media',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Media {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) url,
    required TResult Function(@XFileConverter() XFile file) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? url,
    TResult? Function(@XFileConverter() XFile file)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? url,
    TResult Function(@XFileConverter() XFile file)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUrl value) url,
    required TResult Function(MediaFile value) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUrl value)? url,
    TResult? Function(MediaFile value)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUrl value)? url,
    TResult Function(MediaFile value)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MediaUrlImplCopyWith<$Res> {
  factory _$$MediaUrlImplCopyWith(
          _$MediaUrlImpl value, $Res Function(_$MediaUrlImpl) then) =
      __$$MediaUrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$MediaUrlImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaUrlImpl>
    implements _$$MediaUrlImplCopyWith<$Res> {
  __$$MediaUrlImplCopyWithImpl(
      _$MediaUrlImpl _value, $Res Function(_$MediaUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$MediaUrlImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaUrlImpl extends MediaUrl {
  const _$MediaUrlImpl({required this.url, final String? $type})
      : $type = $type ?? 'url',
        super._();

  factory _$MediaUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaUrlImplFromJson(json);

  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Media.url(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaUrlImplCopyWith<_$MediaUrlImpl> get copyWith =>
      __$$MediaUrlImplCopyWithImpl<_$MediaUrlImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) url,
    required TResult Function(@XFileConverter() XFile file) file,
  }) {
    return url(this.url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? url,
    TResult? Function(@XFileConverter() XFile file)? file,
  }) {
    return url?.call(this.url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? url,
    TResult Function(@XFileConverter() XFile file)? file,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUrl value) url,
    required TResult Function(MediaFile value) file,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUrl value)? url,
    TResult? Function(MediaFile value)? file,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUrl value)? url,
    TResult Function(MediaFile value)? file,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaUrlImplToJson(
      this,
    );
  }
}

abstract class MediaUrl extends Media {
  const factory MediaUrl({required final String url}) = _$MediaUrlImpl;
  const MediaUrl._() : super._();

  factory MediaUrl.fromJson(Map<String, dynamic> json) =
      _$MediaUrlImpl.fromJson;

  String get url;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaUrlImplCopyWith<_$MediaUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaFileImplCopyWith<$Res> {
  factory _$$MediaFileImplCopyWith(
          _$MediaFileImpl value, $Res Function(_$MediaFileImpl) then) =
      __$$MediaFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@XFileConverter() XFile file});
}

/// @nodoc
class __$$MediaFileImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaFileImpl>
    implements _$$MediaFileImplCopyWith<$Res> {
  __$$MediaFileImplCopyWithImpl(
      _$MediaFileImpl _value, $Res Function(_$MediaFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$MediaFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaFileImpl extends MediaFile {
  const _$MediaFileImpl(
      {@XFileConverter() required this.file, final String? $type})
      : $type = $type ?? 'file',
        super._();

  factory _$MediaFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaFileImplFromJson(json);

  @override
  @XFileConverter()
  final XFile file;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Media.file(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaFileImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaFileImplCopyWith<_$MediaFileImpl> get copyWith =>
      __$$MediaFileImplCopyWithImpl<_$MediaFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) url,
    required TResult Function(@XFileConverter() XFile file) file,
  }) {
    return file(this.file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? url,
    TResult? Function(@XFileConverter() XFile file)? file,
  }) {
    return file?.call(this.file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? url,
    TResult Function(@XFileConverter() XFile file)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this.file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaUrl value) url,
    required TResult Function(MediaFile value) file,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaUrl value)? url,
    TResult? Function(MediaFile value)? file,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaUrl value)? url,
    TResult Function(MediaFile value)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaFileImplToJson(
      this,
    );
  }
}

abstract class MediaFile extends Media {
  const factory MediaFile({@XFileConverter() required final XFile file}) =
      _$MediaFileImpl;
  const MediaFile._() : super._();

  factory MediaFile.fromJson(Map<String, dynamic> json) =
      _$MediaFileImpl.fromJson;

  @XFileConverter()
  XFile get file;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaFileImplCopyWith<_$MediaFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaImportSettings _$MediaImportSettingsFromJson(Map<String, dynamic> json) {
  return _MediaImportSettings.fromJson(json);
}

/// @nodoc
mixin _$MediaImportSettings {
  Set<MediaType> get types => throw _privateConstructorUsedError;
  @MediaImportMethodListConverter()
  List<MediaImportMethod> get methods => throw _privateConstructorUsedError;
  double? get imageMaxHeight => throw _privateConstructorUsedError;
  double? get imageMaxWidth => throw _privateConstructorUsedError;
  int? get imageQuality => throw _privateConstructorUsedError;
  bool get imageRequestFullMetadata => throw _privateConstructorUsedError;
  @DurationNullableConverter()
  Duration? get videoMaxDuration => throw _privateConstructorUsedError;
  bool get preferRearCamera => throw _privateConstructorUsedError;

  /// Serializes this MediaImportSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaImportSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaImportSettingsCopyWith<MediaImportSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaImportSettingsCopyWith<$Res> {
  factory $MediaImportSettingsCopyWith(
          MediaImportSettings value, $Res Function(MediaImportSettings) then) =
      _$MediaImportSettingsCopyWithImpl<$Res, MediaImportSettings>;
  @useResult
  $Res call(
      {Set<MediaType> types,
      @MediaImportMethodListConverter() List<MediaImportMethod> methods,
      double? imageMaxHeight,
      double? imageMaxWidth,
      int? imageQuality,
      bool imageRequestFullMetadata,
      @DurationNullableConverter() Duration? videoMaxDuration,
      bool preferRearCamera});
}

/// @nodoc
class _$MediaImportSettingsCopyWithImpl<$Res, $Val extends MediaImportSettings>
    implements $MediaImportSettingsCopyWith<$Res> {
  _$MediaImportSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaImportSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? methods = null,
    Object? imageMaxHeight = freezed,
    Object? imageMaxWidth = freezed,
    Object? imageQuality = freezed,
    Object? imageRequestFullMetadata = null,
    Object? videoMaxDuration = freezed,
    Object? preferRearCamera = null,
  }) {
    return _then(_value.copyWith(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as Set<MediaType>,
      methods: null == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MediaImportMethod>,
      imageMaxHeight: freezed == imageMaxHeight
          ? _value.imageMaxHeight
          : imageMaxHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      imageMaxWidth: freezed == imageMaxWidth
          ? _value.imageMaxWidth
          : imageMaxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      imageQuality: freezed == imageQuality
          ? _value.imageQuality
          : imageQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      imageRequestFullMetadata: null == imageRequestFullMetadata
          ? _value.imageRequestFullMetadata
          : imageRequestFullMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      videoMaxDuration: freezed == videoMaxDuration
          ? _value.videoMaxDuration
          : videoMaxDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      preferRearCamera: null == preferRearCamera
          ? _value.preferRearCamera
          : preferRearCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaImportSettingsImplCopyWith<$Res>
    implements $MediaImportSettingsCopyWith<$Res> {
  factory _$$MediaImportSettingsImplCopyWith(_$MediaImportSettingsImpl value,
          $Res Function(_$MediaImportSettingsImpl) then) =
      __$$MediaImportSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<MediaType> types,
      @MediaImportMethodListConverter() List<MediaImportMethod> methods,
      double? imageMaxHeight,
      double? imageMaxWidth,
      int? imageQuality,
      bool imageRequestFullMetadata,
      @DurationNullableConverter() Duration? videoMaxDuration,
      bool preferRearCamera});
}

/// @nodoc
class __$$MediaImportSettingsImplCopyWithImpl<$Res>
    extends _$MediaImportSettingsCopyWithImpl<$Res, _$MediaImportSettingsImpl>
    implements _$$MediaImportSettingsImplCopyWith<$Res> {
  __$$MediaImportSettingsImplCopyWithImpl(_$MediaImportSettingsImpl _value,
      $Res Function(_$MediaImportSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaImportSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? methods = null,
    Object? imageMaxHeight = freezed,
    Object? imageMaxWidth = freezed,
    Object? imageQuality = freezed,
    Object? imageRequestFullMetadata = null,
    Object? videoMaxDuration = freezed,
    Object? preferRearCamera = null,
  }) {
    return _then(_$MediaImportSettingsImpl(
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as Set<MediaType>,
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MediaImportMethod>,
      imageMaxHeight: freezed == imageMaxHeight
          ? _value.imageMaxHeight
          : imageMaxHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      imageMaxWidth: freezed == imageMaxWidth
          ? _value.imageMaxWidth
          : imageMaxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      imageQuality: freezed == imageQuality
          ? _value.imageQuality
          : imageQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      imageRequestFullMetadata: null == imageRequestFullMetadata
          ? _value.imageRequestFullMetadata
          : imageRequestFullMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      videoMaxDuration: freezed == videoMaxDuration
          ? _value.videoMaxDuration
          : videoMaxDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      preferRearCamera: null == preferRearCamera
          ? _value.preferRearCamera
          : preferRearCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImportSettingsImpl extends _MediaImportSettings {
  const _$MediaImportSettingsImpl(
      {required final Set<MediaType> types,
      @MediaImportMethodListConverter()
      required final List<MediaImportMethod> methods,
      this.imageMaxHeight,
      this.imageMaxWidth,
      this.imageQuality,
      this.imageRequestFullMetadata = true,
      @DurationNullableConverter() this.videoMaxDuration,
      this.preferRearCamera = false})
      : _types = types,
        _methods = methods,
        super._();

  factory _$MediaImportSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImportSettingsImplFromJson(json);

  final Set<MediaType> _types;
  @override
  Set<MediaType> get types {
    if (_types is EqualUnmodifiableSetView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_types);
  }

  final List<MediaImportMethod> _methods;
  @override
  @MediaImportMethodListConverter()
  List<MediaImportMethod> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  @override
  final double? imageMaxHeight;
  @override
  final double? imageMaxWidth;
  @override
  final int? imageQuality;
  @override
  @JsonKey()
  final bool imageRequestFullMetadata;
  @override
  @DurationNullableConverter()
  final Duration? videoMaxDuration;
  @override
  @JsonKey()
  final bool preferRearCamera;

  @override
  String toString() {
    return 'MediaImportSettings(types: $types, methods: $methods, imageMaxHeight: $imageMaxHeight, imageMaxWidth: $imageMaxWidth, imageQuality: $imageQuality, imageRequestFullMetadata: $imageRequestFullMetadata, videoMaxDuration: $videoMaxDuration, preferRearCamera: $preferRearCamera)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImportSettingsImpl &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            (identical(other.imageMaxHeight, imageMaxHeight) ||
                other.imageMaxHeight == imageMaxHeight) &&
            (identical(other.imageMaxWidth, imageMaxWidth) ||
                other.imageMaxWidth == imageMaxWidth) &&
            (identical(other.imageQuality, imageQuality) ||
                other.imageQuality == imageQuality) &&
            (identical(
                    other.imageRequestFullMetadata, imageRequestFullMetadata) ||
                other.imageRequestFullMetadata == imageRequestFullMetadata) &&
            (identical(other.videoMaxDuration, videoMaxDuration) ||
                other.videoMaxDuration == videoMaxDuration) &&
            (identical(other.preferRearCamera, preferRearCamera) ||
                other.preferRearCamera == preferRearCamera));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_methods),
      imageMaxHeight,
      imageMaxWidth,
      imageQuality,
      imageRequestFullMetadata,
      videoMaxDuration,
      preferRearCamera);

  /// Create a copy of MediaImportSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImportSettingsImplCopyWith<_$MediaImportSettingsImpl> get copyWith =>
      __$$MediaImportSettingsImplCopyWithImpl<_$MediaImportSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImportSettingsImplToJson(
      this,
    );
  }
}

abstract class _MediaImportSettings extends MediaImportSettings {
  const factory _MediaImportSettings(
      {required final Set<MediaType> types,
      @MediaImportMethodListConverter()
      required final List<MediaImportMethod> methods,
      final double? imageMaxHeight,
      final double? imageMaxWidth,
      final int? imageQuality,
      final bool imageRequestFullMetadata,
      @DurationNullableConverter() final Duration? videoMaxDuration,
      final bool preferRearCamera}) = _$MediaImportSettingsImpl;
  const _MediaImportSettings._() : super._();

  factory _MediaImportSettings.fromJson(Map<String, dynamic> json) =
      _$MediaImportSettingsImpl.fromJson;

  @override
  Set<MediaType> get types;
  @override
  @MediaImportMethodListConverter()
  List<MediaImportMethod> get methods;
  @override
  double? get imageMaxHeight;
  @override
  double? get imageMaxWidth;
  @override
  int? get imageQuality;
  @override
  bool get imageRequestFullMetadata;
  @override
  @DurationNullableConverter()
  Duration? get videoMaxDuration;
  @override
  bool get preferRearCamera;

  /// Create a copy of MediaImportSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImportSettingsImplCopyWith<_$MediaImportSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaImportMethod _$MediaImportMethodFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pickMedias':
      return MediaImportMethodPickMedias.fromJson(json);
    case 'url':
      return MediaImportMethodUrl.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MediaImportMethod',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MediaImportMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MediaPickSource source, Set<MediaType>? types)
        pickMedias,
    required TResult Function() url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MediaPickSource source, Set<MediaType>? types)?
        pickMedias,
    TResult? Function()? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MediaPickSource source, Set<MediaType>? types)? pickMedias,
    TResult Function()? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaImportMethodPickMedias value) pickMedias,
    required TResult Function(MediaImportMethodUrl value) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaImportMethodPickMedias value)? pickMedias,
    TResult? Function(MediaImportMethodUrl value)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaImportMethodPickMedias value)? pickMedias,
    TResult Function(MediaImportMethodUrl value)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MediaImportMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaImportMethodCopyWith<$Res> {
  factory $MediaImportMethodCopyWith(
          MediaImportMethod value, $Res Function(MediaImportMethod) then) =
      _$MediaImportMethodCopyWithImpl<$Res, MediaImportMethod>;
}

/// @nodoc
class _$MediaImportMethodCopyWithImpl<$Res, $Val extends MediaImportMethod>
    implements $MediaImportMethodCopyWith<$Res> {
  _$MediaImportMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaImportMethod
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MediaImportMethodPickMediasImplCopyWith<$Res> {
  factory _$$MediaImportMethodPickMediasImplCopyWith(
          _$MediaImportMethodPickMediasImpl value,
          $Res Function(_$MediaImportMethodPickMediasImpl) then) =
      __$$MediaImportMethodPickMediasImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MediaPickSource source, Set<MediaType>? types});
}

/// @nodoc
class __$$MediaImportMethodPickMediasImplCopyWithImpl<$Res>
    extends _$MediaImportMethodCopyWithImpl<$Res,
        _$MediaImportMethodPickMediasImpl>
    implements _$$MediaImportMethodPickMediasImplCopyWith<$Res> {
  __$$MediaImportMethodPickMediasImplCopyWithImpl(
      _$MediaImportMethodPickMediasImpl _value,
      $Res Function(_$MediaImportMethodPickMediasImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaImportMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? types = freezed,
  }) {
    return _then(_$MediaImportMethodPickMediasImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as MediaPickSource,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as Set<MediaType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImportMethodPickMediasImpl extends MediaImportMethodPickMedias {
  const _$MediaImportMethodPickMediasImpl(
      {required this.source, final Set<MediaType>? types, final String? $type})
      : _types = types,
        $type = $type ?? 'pickMedias',
        super._();

  factory _$MediaImportMethodPickMediasImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MediaImportMethodPickMediasImplFromJson(json);

  @override
  final MediaPickSource source;

  /// If null, importSettings.types will be used instead
  final Set<MediaType>? _types;

  /// If null, importSettings.types will be used instead
  @override
  Set<MediaType>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableSetView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MediaImportMethod.pickMedias(source: $source, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImportMethodPickMediasImpl &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, source, const DeepCollectionEquality().hash(_types));

  /// Create a copy of MediaImportMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImportMethodPickMediasImplCopyWith<_$MediaImportMethodPickMediasImpl>
      get copyWith => __$$MediaImportMethodPickMediasImplCopyWithImpl<
          _$MediaImportMethodPickMediasImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MediaPickSource source, Set<MediaType>? types)
        pickMedias,
    required TResult Function() url,
  }) {
    return pickMedias(source, types);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MediaPickSource source, Set<MediaType>? types)?
        pickMedias,
    TResult? Function()? url,
  }) {
    return pickMedias?.call(source, types);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MediaPickSource source, Set<MediaType>? types)? pickMedias,
    TResult Function()? url,
    required TResult orElse(),
  }) {
    if (pickMedias != null) {
      return pickMedias(source, types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaImportMethodPickMedias value) pickMedias,
    required TResult Function(MediaImportMethodUrl value) url,
  }) {
    return pickMedias(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaImportMethodPickMedias value)? pickMedias,
    TResult? Function(MediaImportMethodUrl value)? url,
  }) {
    return pickMedias?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaImportMethodPickMedias value)? pickMedias,
    TResult Function(MediaImportMethodUrl value)? url,
    required TResult orElse(),
  }) {
    if (pickMedias != null) {
      return pickMedias(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImportMethodPickMediasImplToJson(
      this,
    );
  }
}

abstract class MediaImportMethodPickMedias extends MediaImportMethod {
  const factory MediaImportMethodPickMedias(
      {required final MediaPickSource source,
      final Set<MediaType>? types}) = _$MediaImportMethodPickMediasImpl;
  const MediaImportMethodPickMedias._() : super._();

  factory MediaImportMethodPickMedias.fromJson(Map<String, dynamic> json) =
      _$MediaImportMethodPickMediasImpl.fromJson;

  MediaPickSource get source;

  /// If null, importSettings.types will be used instead
  Set<MediaType>? get types;

  /// Create a copy of MediaImportMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImportMethodPickMediasImplCopyWith<_$MediaImportMethodPickMediasImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaImportMethodUrlImplCopyWith<$Res> {
  factory _$$MediaImportMethodUrlImplCopyWith(_$MediaImportMethodUrlImpl value,
          $Res Function(_$MediaImportMethodUrlImpl) then) =
      __$$MediaImportMethodUrlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediaImportMethodUrlImplCopyWithImpl<$Res>
    extends _$MediaImportMethodCopyWithImpl<$Res, _$MediaImportMethodUrlImpl>
    implements _$$MediaImportMethodUrlImplCopyWith<$Res> {
  __$$MediaImportMethodUrlImplCopyWithImpl(_$MediaImportMethodUrlImpl _value,
      $Res Function(_$MediaImportMethodUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaImportMethod
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$MediaImportMethodUrlImpl extends MediaImportMethodUrl {
  const _$MediaImportMethodUrlImpl({final String? $type})
      : $type = $type ?? 'url',
        super._();

  factory _$MediaImportMethodUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImportMethodUrlImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MediaImportMethod.url()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImportMethodUrlImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MediaPickSource source, Set<MediaType>? types)
        pickMedias,
    required TResult Function() url,
  }) {
    return url();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MediaPickSource source, Set<MediaType>? types)?
        pickMedias,
    TResult? Function()? url,
  }) {
    return url?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MediaPickSource source, Set<MediaType>? types)? pickMedias,
    TResult Function()? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaImportMethodPickMedias value) pickMedias,
    required TResult Function(MediaImportMethodUrl value) url,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaImportMethodPickMedias value)? pickMedias,
    TResult? Function(MediaImportMethodUrl value)? url,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaImportMethodPickMedias value)? pickMedias,
    TResult Function(MediaImportMethodUrl value)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImportMethodUrlImplToJson(
      this,
    );
  }
}

abstract class MediaImportMethodUrl extends MediaImportMethod {
  const factory MediaImportMethodUrl() = _$MediaImportMethodUrlImpl;
  const MediaImportMethodUrl._() : super._();

  factory MediaImportMethodUrl.fromJson(Map<String, dynamic> json) =
      _$MediaImportMethodUrlImpl.fromJson;
}

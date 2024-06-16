// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExportSettings _$ExportSettingsFromJson(Map<String, dynamic> json) {
  return _ExportSettings.fromJson(json);
}

/// @nodoc
mixin _$ExportSettings {
  Map<String, dynamic>? get exportedMetadata =>
      throw _privateConstructorUsedError;
  ExportType get exportType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExportSettingsCopyWith<ExportSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExportSettingsCopyWith<$Res> {
  factory $ExportSettingsCopyWith(
          ExportSettings value, $Res Function(ExportSettings) then) =
      _$ExportSettingsCopyWithImpl<$Res, ExportSettings>;
  @useResult
  $Res call({Map<String, dynamic>? exportedMetadata, ExportType exportType});
}

/// @nodoc
class _$ExportSettingsCopyWithImpl<$Res, $Val extends ExportSettings>
    implements $ExportSettingsCopyWith<$Res> {
  _$ExportSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exportedMetadata = freezed,
    Object? exportType = null,
  }) {
    return _then(_value.copyWith(
      exportedMetadata: freezed == exportedMetadata
          ? _value.exportedMetadata
          : exportedMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exportType: null == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as ExportType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExportSettingsImplCopyWith<$Res>
    implements $ExportSettingsCopyWith<$Res> {
  factory _$$ExportSettingsImplCopyWith(_$ExportSettingsImpl value,
          $Res Function(_$ExportSettingsImpl) then) =
      __$$ExportSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? exportedMetadata, ExportType exportType});
}

/// @nodoc
class __$$ExportSettingsImplCopyWithImpl<$Res>
    extends _$ExportSettingsCopyWithImpl<$Res, _$ExportSettingsImpl>
    implements _$$ExportSettingsImplCopyWith<$Res> {
  __$$ExportSettingsImplCopyWithImpl(
      _$ExportSettingsImpl _value, $Res Function(_$ExportSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exportedMetadata = freezed,
    Object? exportType = null,
  }) {
    return _then(_$ExportSettingsImpl(
      exportedMetadata: freezed == exportedMetadata
          ? _value._exportedMetadata
          : exportedMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      exportType: null == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as ExportType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExportSettingsImpl extends _ExportSettings {
  const _$ExportSettingsImpl(
      {final Map<String, dynamic>? exportedMetadata,
      this.exportType = ExportType.map})
      : _exportedMetadata = exportedMetadata,
        super._();

  factory _$ExportSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExportSettingsImplFromJson(json);

  final Map<String, dynamic>? _exportedMetadata;
  @override
  Map<String, dynamic>? get exportedMetadata {
    final value = _exportedMetadata;
    if (value == null) return null;
    if (_exportedMetadata is EqualUnmodifiableMapView) return _exportedMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final ExportType exportType;

  @override
  String toString() {
    return 'ExportSettings(exportedMetadata: $exportedMetadata, exportType: $exportType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other._exportedMetadata, _exportedMetadata) &&
            (identical(other.exportType, exportType) ||
                other.exportType == exportType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_exportedMetadata), exportType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportSettingsImplCopyWith<_$ExportSettingsImpl> get copyWith =>
      __$$ExportSettingsImplCopyWithImpl<_$ExportSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExportSettingsImplToJson(
      this,
    );
  }
}

abstract class _ExportSettings extends ExportSettings {
  const factory _ExportSettings(
      {final Map<String, dynamic>? exportedMetadata,
      final ExportType exportType}) = _$ExportSettingsImpl;
  const _ExportSettings._() : super._();

  factory _ExportSettings.fromJson(Map<String, dynamic> json) =
      _$ExportSettingsImpl.fromJson;

  @override
  Map<String, dynamic>? get exportedMetadata;
  @override
  ExportType get exportType;
  @override
  @JsonKey(ignore: true)
  _$$ExportSettingsImplCopyWith<_$ExportSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

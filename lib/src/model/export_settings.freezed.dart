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
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  ExportType get type => throw _privateConstructorUsedError;

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
  $Res call({Map<String, dynamic> metadata, ExportType type});
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
    Object? metadata = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
  $Res call({Map<String, dynamic> metadata, ExportType type});
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
    Object? metadata = null,
    Object? type = null,
  }) {
    return _then(_$ExportSettingsImpl(
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExportType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExportSettingsImpl extends _ExportSettings {
  const _$ExportSettingsImpl(
      {final Map<String, dynamic> metadata = const {},
      this.type = ExportType.map})
      : _metadata = metadata,
        super._();

  factory _$ExportSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExportSettingsImplFromJson(json);

  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  @JsonKey()
  final ExportType type;

  @override
  String toString() {
    return 'ExportSettings(metadata: $metadata, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportSettingsImpl &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_metadata), type);

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
      {final Map<String, dynamic> metadata,
      final ExportType type}) = _$ExportSettingsImpl;
  const _ExportSettings._() : super._();

  factory _ExportSettings.fromJson(Map<String, dynamic> json) =
      _$ExportSettingsImpl.fromJson;

  @override
  Map<String, dynamic> get metadata;
  @override
  ExportType get type;
  @override
  @JsonKey(ignore: true)
  _$$ExportSettingsImplCopyWith<_$ExportSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

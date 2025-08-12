// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExportSettings {

 Json get metadata; ExportType get type;
/// Create a copy of ExportSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExportSettingsCopyWith<ExportSettings> get copyWith => _$ExportSettingsCopyWithImpl<ExportSettings>(this as ExportSettings, _$identity);

  /// Serializes this ExportSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExportSettings&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(metadata),type);

@override
String toString() {
  return 'ExportSettings(metadata: $metadata, type: $type)';
}


}

/// @nodoc
abstract mixin class $ExportSettingsCopyWith<$Res>  {
  factory $ExportSettingsCopyWith(ExportSettings value, $Res Function(ExportSettings) _then) = _$ExportSettingsCopyWithImpl;
@useResult
$Res call({
 Json metadata, ExportType type
});




}
/// @nodoc
class _$ExportSettingsCopyWithImpl<$Res>
    implements $ExportSettingsCopyWith<$Res> {
  _$ExportSettingsCopyWithImpl(this._self, this._then);

  final ExportSettings _self;
  final $Res Function(ExportSettings) _then;

/// Create a copy of ExportSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? type = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Json,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ExportType,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _ExportSettings extends ExportSettings {
  const _ExportSettings({final  Json metadata = const {}, this.type = ExportType.map}): _metadata = metadata,super._();
  factory _ExportSettings.fromJson(Map<String, dynamic> json) => _$ExportSettingsFromJson(json);

 final  Json _metadata;
@override@JsonKey() Json get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override@JsonKey() final  ExportType type;

/// Create a copy of ExportSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExportSettingsCopyWith<_ExportSettings> get copyWith => __$ExportSettingsCopyWithImpl<_ExportSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExportSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExportSettings&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_metadata),type);

@override
String toString() {
  return 'ExportSettings(metadata: $metadata, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ExportSettingsCopyWith<$Res> implements $ExportSettingsCopyWith<$Res> {
  factory _$ExportSettingsCopyWith(_ExportSettings value, $Res Function(_ExportSettings) _then) = __$ExportSettingsCopyWithImpl;
@override @useResult
$Res call({
 Json metadata, ExportType type
});




}
/// @nodoc
class __$ExportSettingsCopyWithImpl<$Res>
    implements _$ExportSettingsCopyWith<$Res> {
  __$ExportSettingsCopyWithImpl(this._self, this._then);

  final _ExportSettings _self;
  final $Res Function(_ExportSettings) _then;

/// Create a copy of ExportSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? type = null,}) {
  return _then(_ExportSettings(
metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Json,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ExportType,
  ));
}


}

// dart format on

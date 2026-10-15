// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persistence_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersistenceSettings {

/// The storage key of the saved values. Forms sharing the same key share
/// the same saved values.
 String get key;/// If true, the saved values are deleted once the form is submitted
/// successfully. The form then stops saving until it is opened again.
 bool get clearOnSubmit;
/// Create a copy of PersistenceSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersistenceSettingsCopyWith<PersistenceSettings> get copyWith => _$PersistenceSettingsCopyWithImpl<PersistenceSettings>(this as PersistenceSettings, _$identity);

  /// Serializes this PersistenceSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersistenceSettings&&(identical(other.key, key) || other.key == key)&&(identical(other.clearOnSubmit, clearOnSubmit) || other.clearOnSubmit == clearOnSubmit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,clearOnSubmit);

@override
String toString() {
  return 'PersistenceSettings(key: $key, clearOnSubmit: $clearOnSubmit)';
}


}

/// @nodoc
abstract mixin class $PersistenceSettingsCopyWith<$Res>  {
  factory $PersistenceSettingsCopyWith(PersistenceSettings value, $Res Function(PersistenceSettings) _then) = _$PersistenceSettingsCopyWithImpl;
@useResult
$Res call({
 String key, bool clearOnSubmit
});




}
/// @nodoc
class _$PersistenceSettingsCopyWithImpl<$Res>
    implements $PersistenceSettingsCopyWith<$Res> {
  _$PersistenceSettingsCopyWithImpl(this._self, this._then);

  final PersistenceSettings _self;
  final $Res Function(PersistenceSettings) _then;

/// Create a copy of PersistenceSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? clearOnSubmit = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,clearOnSubmit: null == clearOnSubmit ? _self.clearOnSubmit : clearOnSubmit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _PersistenceSettings extends PersistenceSettings {
  const _PersistenceSettings({required this.key, this.clearOnSubmit = true}): assert(key != '', 'PersistenceSettings.key must not be empty'),super._();
  factory _PersistenceSettings.fromJson(Map<String, dynamic> json) => _$PersistenceSettingsFromJson(json);

/// The storage key of the saved values. Forms sharing the same key share
/// the same saved values.
@override final  String key;
/// If true, the saved values are deleted once the form is submitted
/// successfully. The form then stops saving until it is opened again.
@override@JsonKey() final  bool clearOnSubmit;

/// Create a copy of PersistenceSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersistenceSettingsCopyWith<_PersistenceSettings> get copyWith => __$PersistenceSettingsCopyWithImpl<_PersistenceSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersistenceSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersistenceSettings&&(identical(other.key, key) || other.key == key)&&(identical(other.clearOnSubmit, clearOnSubmit) || other.clearOnSubmit == clearOnSubmit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,clearOnSubmit);

@override
String toString() {
  return 'PersistenceSettings(key: $key, clearOnSubmit: $clearOnSubmit)';
}


}

/// @nodoc
abstract mixin class _$PersistenceSettingsCopyWith<$Res> implements $PersistenceSettingsCopyWith<$Res> {
  factory _$PersistenceSettingsCopyWith(_PersistenceSettings value, $Res Function(_PersistenceSettings) _then) = __$PersistenceSettingsCopyWithImpl;
@override @useResult
$Res call({
 String key, bool clearOnSubmit
});




}
/// @nodoc
class __$PersistenceSettingsCopyWithImpl<$Res>
    implements _$PersistenceSettingsCopyWith<$Res> {
  __$PersistenceSettingsCopyWithImpl(this._self, this._then);

  final _PersistenceSettings _self;
  final $Res Function(_PersistenceSettings) _then;

/// Create a copy of PersistenceSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? clearOnSubmit = null,}) {
  return _then(_PersistenceSettings(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,clearOnSubmit: null == clearOnSubmit ? _self.clearOnSubmit : clearOnSubmit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_date_ui_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickDateUiSettings {

/// Defaults to [defaultDateFormat].
 String? get dateFormat;/// Defaults to [defaultPresentationMode].
 PickDatePresentationMode? get presentationMode;/// By default, no wrapper is included.
@notSerializable Widget Function(BuildContext context, Widget body)? get bodyWrapper;
/// Create a copy of PickDateUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickDateUiSettingsCopyWith<PickDateUiSettings> get copyWith => _$PickDateUiSettingsCopyWithImpl<PickDateUiSettings>(this as PickDateUiSettings, _$identity);

  /// Serializes this PickDateUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickDateUiSettings&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.presentationMode, presentationMode) || other.presentationMode == presentationMode)&&(identical(other.bodyWrapper, bodyWrapper) || other.bodyWrapper == bodyWrapper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateFormat,presentationMode,bodyWrapper);

@override
String toString() {
  return 'PickDateUiSettings(dateFormat: $dateFormat, presentationMode: $presentationMode, bodyWrapper: $bodyWrapper)';
}


}

/// @nodoc
abstract mixin class $PickDateUiSettingsCopyWith<$Res>  {
  factory $PickDateUiSettingsCopyWith(PickDateUiSettings value, $Res Function(PickDateUiSettings) _then) = _$PickDateUiSettingsCopyWithImpl;
@useResult
$Res call({
 String? dateFormat, PickDatePresentationMode? presentationMode,@notSerializable Widget Function(BuildContext context, Widget body)? bodyWrapper
});




}
/// @nodoc
class _$PickDateUiSettingsCopyWithImpl<$Res>
    implements $PickDateUiSettingsCopyWith<$Res> {
  _$PickDateUiSettingsCopyWithImpl(this._self, this._then);

  final PickDateUiSettings _self;
  final $Res Function(PickDateUiSettings) _then;

/// Create a copy of PickDateUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateFormat = freezed,Object? presentationMode = freezed,Object? bodyWrapper = freezed,}) {
  return _then(_self.copyWith(
dateFormat: freezed == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String?,presentationMode: freezed == presentationMode ? _self.presentationMode : presentationMode // ignore: cast_nullable_to_non_nullable
as PickDatePresentationMode?,bodyWrapper: freezed == bodyWrapper ? _self.bodyWrapper : bodyWrapper // ignore: cast_nullable_to_non_nullable
as Widget Function(BuildContext context, Widget body)?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _PickDateUiSettings extends PickDateUiSettings {
  const _PickDateUiSettings({this.dateFormat, this.presentationMode, @notSerializable this.bodyWrapper}): super._();
  factory _PickDateUiSettings.fromJson(Map<String, dynamic> json) => _$PickDateUiSettingsFromJson(json);

/// Defaults to [defaultDateFormat].
@override final  String? dateFormat;
/// Defaults to [defaultPresentationMode].
@override final  PickDatePresentationMode? presentationMode;
/// By default, no wrapper is included.
@override@notSerializable final  Widget Function(BuildContext context, Widget body)? bodyWrapper;

/// Create a copy of PickDateUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickDateUiSettingsCopyWith<_PickDateUiSettings> get copyWith => __$PickDateUiSettingsCopyWithImpl<_PickDateUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickDateUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickDateUiSettings&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.presentationMode, presentationMode) || other.presentationMode == presentationMode)&&(identical(other.bodyWrapper, bodyWrapper) || other.bodyWrapper == bodyWrapper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateFormat,presentationMode,bodyWrapper);

@override
String toString() {
  return 'PickDateUiSettings(dateFormat: $dateFormat, presentationMode: $presentationMode, bodyWrapper: $bodyWrapper)';
}


}

/// @nodoc
abstract mixin class _$PickDateUiSettingsCopyWith<$Res> implements $PickDateUiSettingsCopyWith<$Res> {
  factory _$PickDateUiSettingsCopyWith(_PickDateUiSettings value, $Res Function(_PickDateUiSettings) _then) = __$PickDateUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? dateFormat, PickDatePresentationMode? presentationMode,@notSerializable Widget Function(BuildContext context, Widget body)? bodyWrapper
});




}
/// @nodoc
class __$PickDateUiSettingsCopyWithImpl<$Res>
    implements _$PickDateUiSettingsCopyWith<$Res> {
  __$PickDateUiSettingsCopyWithImpl(this._self, this._then);

  final _PickDateUiSettings _self;
  final $Res Function(_PickDateUiSettings) _then;

/// Create a copy of PickDateUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateFormat = freezed,Object? presentationMode = freezed,Object? bodyWrapper = freezed,}) {
  return _then(_PickDateUiSettings(
dateFormat: freezed == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String?,presentationMode: freezed == presentationMode ? _self.presentationMode : presentationMode // ignore: cast_nullable_to_non_nullable
as PickDatePresentationMode?,bodyWrapper: freezed == bodyWrapper ? _self.bodyWrapper : bodyWrapper // ignore: cast_nullable_to_non_nullable
as Widget Function(BuildContext context, Widget body)?,
  ));
}


}

// dart format on

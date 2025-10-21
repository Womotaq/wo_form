// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceAutocompleteSettings {

 PlaceType? get type;/// The list of countries in which restrict the research.
 List<IsoCode>? get countries;/// Time before a text entry triggers an API call to [PlaceRepositoryMixin].
///
/// Defaults to [WoFormTheme.DEBOUNCE_DURATION].
 Duration? get debounceDuration;
/// Create a copy of PlaceAutocompleteSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceAutocompleteSettingsCopyWith<PlaceAutocompleteSettings> get copyWith => _$PlaceAutocompleteSettingsCopyWithImpl<PlaceAutocompleteSettings>(this as PlaceAutocompleteSettings, _$identity);

  /// Serializes this PlaceAutocompleteSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceAutocompleteSettings&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.countries, countries)&&(identical(other.debounceDuration, debounceDuration) || other.debounceDuration == debounceDuration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(countries),debounceDuration);

@override
String toString() {
  return 'PlaceAutocompleteSettings(type: $type, countries: $countries, debounceDuration: $debounceDuration)';
}


}

/// @nodoc
abstract mixin class $PlaceAutocompleteSettingsCopyWith<$Res>  {
  factory $PlaceAutocompleteSettingsCopyWith(PlaceAutocompleteSettings value, $Res Function(PlaceAutocompleteSettings) _then) = _$PlaceAutocompleteSettingsCopyWithImpl;
@useResult
$Res call({
 PlaceType? type, List<IsoCode>? countries, Duration? debounceDuration
});




}
/// @nodoc
class _$PlaceAutocompleteSettingsCopyWithImpl<$Res>
    implements $PlaceAutocompleteSettingsCopyWith<$Res> {
  _$PlaceAutocompleteSettingsCopyWithImpl(this._self, this._then);

  final PlaceAutocompleteSettings _self;
  final $Res Function(PlaceAutocompleteSettings) _then;

/// Create a copy of PlaceAutocompleteSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? countries = freezed,Object? debounceDuration = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PlaceType?,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<IsoCode>?,debounceDuration: freezed == debounceDuration ? _self.debounceDuration : debounceDuration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _PlaceAutocompleteSettings extends PlaceAutocompleteSettings {
  const _PlaceAutocompleteSettings({this.type, final  List<IsoCode>? countries, this.debounceDuration}): _countries = countries,super._();
  factory _PlaceAutocompleteSettings.fromJson(Map<String, dynamic> json) => _$PlaceAutocompleteSettingsFromJson(json);

@override final  PlaceType? type;
/// The list of countries in which restrict the research.
 final  List<IsoCode>? _countries;
/// The list of countries in which restrict the research.
@override List<IsoCode>? get countries {
  final value = _countries;
  if (value == null) return null;
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Time before a text entry triggers an API call to [PlaceRepositoryMixin].
///
/// Defaults to [WoFormTheme.DEBOUNCE_DURATION].
@override final  Duration? debounceDuration;

/// Create a copy of PlaceAutocompleteSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceAutocompleteSettingsCopyWith<_PlaceAutocompleteSettings> get copyWith => __$PlaceAutocompleteSettingsCopyWithImpl<_PlaceAutocompleteSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceAutocompleteSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceAutocompleteSettings&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._countries, _countries)&&(identical(other.debounceDuration, debounceDuration) || other.debounceDuration == debounceDuration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_countries),debounceDuration);

@override
String toString() {
  return 'PlaceAutocompleteSettings(type: $type, countries: $countries, debounceDuration: $debounceDuration)';
}


}

/// @nodoc
abstract mixin class _$PlaceAutocompleteSettingsCopyWith<$Res> implements $PlaceAutocompleteSettingsCopyWith<$Res> {
  factory _$PlaceAutocompleteSettingsCopyWith(_PlaceAutocompleteSettings value, $Res Function(_PlaceAutocompleteSettings) _then) = __$PlaceAutocompleteSettingsCopyWithImpl;
@override @useResult
$Res call({
 PlaceType? type, List<IsoCode>? countries, Duration? debounceDuration
});




}
/// @nodoc
class __$PlaceAutocompleteSettingsCopyWithImpl<$Res>
    implements _$PlaceAutocompleteSettingsCopyWith<$Res> {
  __$PlaceAutocompleteSettingsCopyWithImpl(this._self, this._then);

  final _PlaceAutocompleteSettings _self;
  final $Res Function(_PlaceAutocompleteSettings) _then;

/// Create a copy of PlaceAutocompleteSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? countries = freezed,Object? debounceDuration = freezed,}) {
  return _then(_PlaceAutocompleteSettings(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PlaceType?,countries: freezed == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<IsoCode>?,debounceDuration: freezed == debounceDuration ? _self.debounceDuration : debounceDuration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}


}

// dart format on

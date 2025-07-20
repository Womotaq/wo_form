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
  PlaceType? get type;

  /// If empty, uses intl package to get the device's locale.
  /// TODO : true ? why ? not useful ??
  ///
  /// Format : 2 letters, uppercase. Ex : FR
  List<String>? get countries; // TODO : IsoCode ?
  /// Longitude & latitude can be found at
  /// '{pinputPath}+longitude' and '{pinputPath}+latitude'.
  /// Extra data are also availible at '{pinputPath}+prediction'.
  bool get includeLatLng;

  /// Create a copy of PlaceAutocompleteSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceAutocompleteSettingsCopyWith<PlaceAutocompleteSettings> get copyWith =>
      _$PlaceAutocompleteSettingsCopyWithImpl<PlaceAutocompleteSettings>(
          this as PlaceAutocompleteSettings, _$identity);

  /// Serializes this PlaceAutocompleteSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceAutocompleteSettings &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            (identical(other.includeLatLng, includeLatLng) ||
                other.includeLatLng == includeLatLng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(countries), includeLatLng);

  @override
  String toString() {
    return 'PlaceAutocompleteSettings(type: $type, countries: $countries, includeLatLng: $includeLatLng)';
  }
}

/// @nodoc
abstract mixin class $PlaceAutocompleteSettingsCopyWith<$Res> {
  factory $PlaceAutocompleteSettingsCopyWith(PlaceAutocompleteSettings value,
          $Res Function(PlaceAutocompleteSettings) _then) =
      _$PlaceAutocompleteSettingsCopyWithImpl;
  @useResult
  $Res call({PlaceType? type, List<String>? countries, bool includeLatLng});
}

/// @nodoc
class _$PlaceAutocompleteSettingsCopyWithImpl<$Res>
    implements $PlaceAutocompleteSettingsCopyWith<$Res> {
  _$PlaceAutocompleteSettingsCopyWithImpl(this._self, this._then);

  final PlaceAutocompleteSettings _self;
  final $Res Function(PlaceAutocompleteSettings) _then;

  /// Create a copy of PlaceAutocompleteSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? countries = freezed,
    Object? includeLatLng = null,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaceType?,
      countries: freezed == countries
          ? _self.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      includeLatLng: null == includeLatLng
          ? _self.includeLatLng
          : includeLatLng // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceAutocompleteSettings extends PlaceAutocompleteSettings {
  const _PlaceAutocompleteSettings(
      {this.type, final List<String>? countries, this.includeLatLng = true})
      : _countries = countries,
        super._();
  factory _PlaceAutocompleteSettings.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompleteSettingsFromJson(json);

  @override
  final PlaceType? type;

  /// If empty, uses intl package to get the device's locale.
  /// TODO : true ? why ? not useful ??
  ///
  /// Format : 2 letters, uppercase. Ex : FR
  final List<String>? _countries;

  /// If empty, uses intl package to get the device's locale.
  /// TODO : true ? why ? not useful ??
  ///
  /// Format : 2 letters, uppercase. Ex : FR
  @override
  List<String>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// TODO : IsoCode ?
  /// Longitude & latitude can be found at
  /// '{pinputPath}+longitude' and '{pinputPath}+latitude'.
  /// Extra data are also availible at '{pinputPath}+prediction'.
  @override
  @JsonKey()
  final bool includeLatLng;

  /// Create a copy of PlaceAutocompleteSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceAutocompleteSettingsCopyWith<_PlaceAutocompleteSettings>
      get copyWith =>
          __$PlaceAutocompleteSettingsCopyWithImpl<_PlaceAutocompleteSettings>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceAutocompleteSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceAutocompleteSettings &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.includeLatLng, includeLatLng) ||
                other.includeLatLng == includeLatLng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_countries), includeLatLng);

  @override
  String toString() {
    return 'PlaceAutocompleteSettings(type: $type, countries: $countries, includeLatLng: $includeLatLng)';
  }
}

/// @nodoc
abstract mixin class _$PlaceAutocompleteSettingsCopyWith<$Res>
    implements $PlaceAutocompleteSettingsCopyWith<$Res> {
  factory _$PlaceAutocompleteSettingsCopyWith(_PlaceAutocompleteSettings value,
          $Res Function(_PlaceAutocompleteSettings) _then) =
      __$PlaceAutocompleteSettingsCopyWithImpl;
  @override
  @useResult
  $Res call({PlaceType? type, List<String>? countries, bool includeLatLng});
}

/// @nodoc
class __$PlaceAutocompleteSettingsCopyWithImpl<$Res>
    implements _$PlaceAutocompleteSettingsCopyWith<$Res> {
  __$PlaceAutocompleteSettingsCopyWithImpl(this._self, this._then);

  final _PlaceAutocompleteSettings _self;
  final $Res Function(_PlaceAutocompleteSettings) _then;

  /// Create a copy of PlaceAutocompleteSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? countries = freezed,
    Object? includeLatLng = null,
  }) {
    return _then(_PlaceAutocompleteSettings(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaceType?,
      countries: freezed == countries
          ? _self._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      includeLatLng: null == includeLatLng
          ? _self.includeLatLng
          : includeLatLng // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on

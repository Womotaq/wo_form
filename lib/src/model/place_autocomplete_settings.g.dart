// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceAutocompleteSettings _$PlaceAutocompleteSettingsFromJson(
        Map<String, dynamic> json) =>
    _PlaceAutocompleteSettings(
      type: $enumDecodeNullable(_$PlaceTypeEnumMap, json['type']),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      includeLatLng: json['includeLatLng'] as bool? ?? true,
    );

Map<String, dynamic> _$PlaceAutocompleteSettingsToJson(
        _PlaceAutocompleteSettings instance) =>
    <String, dynamic>{
      'type': _$PlaceTypeEnumMap[instance.type],
      'countries': instance.countries,
      'includeLatLng': instance.includeLatLng,
    };

const _$PlaceTypeEnumMap = {
  PlaceType.geocode: 'geocode',
  PlaceType.address: 'address',
  PlaceType.establishment: 'establishment',
  PlaceType.region: 'region',
  PlaceType.cities: 'cities',
};

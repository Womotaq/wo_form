import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'place_autocomplete_settings.freezed.dart';
part 'place_autocomplete_settings.g.dart';

@freezed
abstract class PlaceAutocompleteSettings with _$PlaceAutocompleteSettings {
  const factory PlaceAutocompleteSettings({
    PlaceType? type,

    /// If empty, uses intl package to get the device's locale.
    /// TODO : true ? why ? not useful ??
    ///
    /// Format : 2 letters, uppercase. Ex : FR
    List<String>? countries, // TODO : IsoCode ?

    /// Longitude & latitude can be found at
    /// '{pinputPath}+longitude' and '{pinputPath}+latitude'.
    /// Extra data are also availible at '{pinputPath}+prediction'.
    @Default(true) bool includeLatLng,
  }) = _PlaceAutocompleteSettings;

  /// Required for the override getter
  const PlaceAutocompleteSettings._();

  factory PlaceAutocompleteSettings.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompleteSettingsFromJson(json);

  static Map<String, dynamic>? staticToJson(
          PlaceAutocompleteSettings? object) =>
      object?.toJson();
}

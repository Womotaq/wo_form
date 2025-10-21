import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

part 'place_autocomplete_settings.freezed.dart';
part 'place_autocomplete_settings.g.dart';

@freezed
abstract class PlaceAutocompleteSettings with _$PlaceAutocompleteSettings {
  const factory PlaceAutocompleteSettings({
    PlaceType? type,

    /// The list of countries in which restrict the research.
    List<IsoCode>? countries,
  }) = _PlaceAutocompleteSettings;

  /// Required for the override getter
  const PlaceAutocompleteSettings._();

  factory PlaceAutocompleteSettings.fromJson(Json json) =>
      _$PlaceAutocompleteSettingsFromJson(json);
}

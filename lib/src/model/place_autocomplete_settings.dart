import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

part 'place_autocomplete_settings.freezed.dart';
part 'place_autocomplete_settings.g.dart';

/// You need to provide a PlaceRepository for address autocompletion :
///
/// ```dart
/// RepositoryProvider<PlaceRepositoryMixin>
///   create: (context) => YourPlaceRepository(),
/// )
/// ```
@freezed
abstract class PlaceAutocompleteSettings with _$PlaceAutocompleteSettings {
  const factory PlaceAutocompleteSettings({
    PlaceType? type,

    /// The list of countries in which restrict the research.
    List<IsoCode>? countries,

    /// Time before a text entry triggers an API call to [PlaceRepositoryMixin].
    ///
    /// Defaults to [WoFormTheme.DEBOUNCE_DURATION].
    Duration? debounceDuration,
  }) = _PlaceAutocompleteSettings;

  /// Required for the override getter
  const PlaceAutocompleteSettings._();

  factory PlaceAutocompleteSettings.fromJson(Json json) =>
      _$PlaceAutocompleteSettingsFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'search_settings.freezed.dart';

@freezed
abstract class SearchSettings<T> with _$SearchSettings<T> {
  const factory SearchSettings({
    /// A function that calculates how well a [value] matches the search.
    ///
    /// This function must return a score between 0.0 (no match) and 1.0
    /// (perfect match).
    ///
    /// The [query] passed to this function is guaranteed to be lowercase and
    /// without diacritics (e.g., accents, umlauts).
    required double Function(WoFormQuery query, T value) searchScore,

    /// Called each time the query changes.
    LoadDataDef<T>? loadAvailibleData,

    // TODO : debounceTime
  }) = _SearchSettings<T>;

  /// Required for the override getter
  const SearchSettings._();

  // --
}

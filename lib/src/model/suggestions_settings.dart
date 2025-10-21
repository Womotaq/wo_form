import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'suggestions_settings.freezed.dart';

@freezed
abstract class SuggestionsSettings<T> with _$SuggestionsSettings<T> {
  const factory SuggestionsSettings({
    required Future<List<T>> Function(String? text) loadSuggestions,

    /// How the suggestion should be converted to text in the text field.
    ///
    /// Defaults to suggestion.toString()
    ///
    /// IMPORTANT : When using this field, enforce the StringInput's data type :
    /// ```dart
    /// StringInput<String>(...
    /// ```
    String Function(T suggesstion)? suggestionToText,

    /// IMPORTANT : When using this field, enforce the StringInput's data type :
    /// ```dart
    /// StringInput<String>(...
    /// ```
    Widget Function(T suggestion)? suggestionTileBuilder,

    /// Time before a text entry triggers [loadSuggestions].
    ///
    /// Defaults to [WoFormTheme.DEBOUNCE_DURATION].
    Duration? debounceDuration,
  }) = _SuggestionsSettings<T>;

  /// Required for the override getter
  const SuggestionsSettings._();
}

// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';

part 'place_prediction.freezed.dart';
part 'place_prediction.g.dart';

@freezed
abstract class PlacesAutocompleteResponse with _$PlacesAutocompleteResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PlacesAutocompleteResponse({
    // Contains an array of predictions.
    required List<PlacePrediction> predictions,

    /// Contains the status of the request, and may contain debugging
    /// information to help you track down why the request failed.
    required PlacesAutocompleteStatus status,

    // When the service returns a status code other than OK, there may be an
    // additional error_message field within the response object. This field
    // contains more detailed information about thereasons behind the given
    // status code. This field is not always returned, and its content is
    // subject to change.
    @JsonKey(name: 'error_message') String? errorMessage,

    /// When the service returns additional information about the request
    /// specification, there may be an additional info_messages field within the
    ///  response object. This field is only returned for successful requests.
    ///  It may not always be returned, and its content is subject to change.
    @JsonKey(name: 'info_messages') List<String>? infoMessages,
  }) = _PlacesAutocompleteResponse;

  /// Required for the override getter
  const PlacesAutocompleteResponse._();

  factory PlacesAutocompleteResponse.fromJson(Json json) =>
      _$PlacesAutocompleteResponseFromJson(json);
}

enum PlacesAutocompleteStatus {
  /// The API request was successful.
  OK,

  /// The search was successful but returned no results.
  /// This may occur if the search was passed a bounds in a remote location.
  ZERO_RESULTS,

  /// The API request was malformed, generally due to the missing input
  /// parameter.
  INVALID_REQUEST,

  /// Indicates any of the following:
  /// - You have exceeded the QPS limits.
  /// - Billing has not been enabled on your account.
  /// - The monthly $200 credit, or a self-imposed usage cap, has been exceeded.
  /// - The provided method of payment is no longer valid
  ///   (for example, a credit card has expired).
  OVER_QUERY_LIMIT,

  /// Your request was denied, generally because:
  /// - The request is missing an API key.
  /// - The key parameter is invalid.
  REQUEST_DENIED,

  /// Indicates an unknown error.
  UNKNOWN_ERROR,
}

@freezed
abstract class PlacePrediction with _$PlacePrediction {
  @JsonSerializable(explicitToJson: true)
  const factory PlacePrediction({
    /// Contains the human-readable name for the returned result.
    /// For establishment results, this is usually the business name.
    /// This content is meant to be read as-is.
    /// Do not programmatically parse the formatted address.
    required String description,

    /// A list of substrings that describe the location of the entered term
    /// in the prediction result text, so that the term can be highlighted
    /// if desired.
    @JsonKey(name: 'matched_substrings')
    required List<MatchedSubstrings> matchedSubstrings,

    /// Provides pre-formatted text that can be shown in your autocomplete
    /// results. This content is meant to be read as-is.
    /// Do not programmatically parse the formatted address.
    @JsonKey(name: 'structured_formatting')
    required StructuredFormatting structuredFormatting,

    /// Contains an array of terms identifying each section of the returned
    /// description (a section of the description is generally terminated with
    /// a comma). Each entry in the array has a value field, containing the
    /// text of the term, and an offset field, defining the start position of
    /// this term in the description, measured in Unicode characters.
    required List<Term> terms,

    /// The straight-line distance in meters from the origin.
    /// This field is only returned for requests made with an origin.
    @JsonKey(name: 'distance_meters') int? distanceMeters,

    /// A textual identifier that uniquely identifies a place.
    @JsonKey(name: 'place_id') String? placeId,

    /// Contains an array of types that apply to this place.
    ///
    /// For example: [ "political", "locality" ] or [ "establishment",
    /// "geocode", "beauty_salon" ]. The array can contain multiple values.
    List<String>? types,
  }) = _PlacePrediction;

  /// Required for the override getter
  const PlacePrediction._();

  factory PlacePrediction.fromJson(dynamic json) =>
      _$PlacePredictionFromJson((json as Map).cast());
}

@freezed
abstract class MatchedSubstrings with _$MatchedSubstrings {
  const factory MatchedSubstrings({
    /// Length of the matched substring in the prediction result text.
    required int length,

    /// Start location of the matched substring in the prediction result text.
    required int offset,
  }) = _MatchedSubstrings;

  /// Required for the override getter
  const MatchedSubstrings._();

  factory MatchedSubstrings.fromJson(dynamic json) =>
      _$MatchedSubstringsFromJson((json as Map).cast());
}

@freezed
abstract class StructuredFormatting with _$StructuredFormatting {
  @JsonSerializable(explicitToJson: true)
  const factory StructuredFormatting({
    // Contains the main text of a prediction, usually the name of the place.
    @JsonKey(name: 'main_text') required String mainText,

    // Contains an array with offset value and length. These describe the
    // location of the entered term in the prediction result text, so that
    // the term can be highlighted if desired.
    @JsonKey(name: 'main_text_matched_substrings')
    required List<MatchedSubstrings> mainTextMatchedSubstrings,

    /// Contains the secondary text of a prediction, usually the location of
    /// the place.
    @JsonKey(name: 'secondary_text') String? secondaryText,

    // Contains an array with offset value and length. These describe the
    // location of the entered term in the prediction result text, so that
    //the term can be highlighted if desired.
    @JsonKey(name: 'secondary_text_matched_substrings')
    List<MatchedSubstrings>? secondaryTextMatchedSubstrings,
  }) = _StructuredFormatting;

  /// Required for the override getter
  const StructuredFormatting._();

  factory StructuredFormatting.fromJson(dynamic json) =>
      _$StructuredFormattingFromJson((json as Map).cast());
}

@freezed
abstract class Term with _$Term {
  const factory Term({
    // Defines the start position of this term in the description,
    // measured in Unicode characters.
    required int offset,

    // The text of the term.
    required String value,
  }) = _Term;

  /// Required for the override getter
  const Term._();

  factory Term.fromJson(dynamic json) => _$TermFromJson((json as Map).cast());
}

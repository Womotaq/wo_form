// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlacesAutocompleteResponse _$PlacesAutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    _PlacesAutocompleteResponse(
      predictions: (json['predictions'] as List<dynamic>)
          .map(PlacePrediction.fromJson)
          .toList(),
      status: $enumDecode(_$PlacesAutocompleteStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      infoMessages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlacesAutocompleteResponseToJson(
        _PlacesAutocompleteResponse instance) =>
    <String, dynamic>{
      'predictions': instance.predictions.map((e) => e.toJson()).toList(),
      'status': _$PlacesAutocompleteStatusEnumMap[instance.status]!,
      'error_message': instance.errorMessage,
      'info_messages': instance.infoMessages,
    };

const _$PlacesAutocompleteStatusEnumMap = {
  PlacesAutocompleteStatus.OK: 'OK',
  PlacesAutocompleteStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  PlacesAutocompleteStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  PlacesAutocompleteStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  PlacesAutocompleteStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  PlacesAutocompleteStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};

_PlacePrediction _$PlacePredictionFromJson(Map<String, dynamic> json) =>
    _PlacePrediction(
      description: json['description'] as String,
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>)
          .map(MatchedSubstrings.fromJson)
          .toList(),
      structuredFormatting:
          StructuredFormatting.fromJson(json['structured_formatting']),
      terms: (json['terms'] as List<dynamic>).map(Term.fromJson).toList(),
      distanceMeters: (json['distance_meters'] as num?)?.toInt(),
      placeId: json['place_id'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PlacePredictionToJson(_PlacePrediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matched_substrings':
          instance.matchedSubstrings.map((e) => e.toJson()).toList(),
      'structured_formatting': instance.structuredFormatting.toJson(),
      'terms': instance.terms.map((e) => e.toJson()).toList(),
      'distance_meters': instance.distanceMeters,
      'place_id': instance.placeId,
      'types': instance.types,
    };

_MatchedSubstrings _$MatchedSubstringsFromJson(Map<String, dynamic> json) =>
    _MatchedSubstrings(
      length: (json['length'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$MatchedSubstringsToJson(_MatchedSubstrings instance) =>
    <String, dynamic>{
      'length': instance.length,
      'offset': instance.offset,
    };

_StructuredFormatting _$StructuredFormattingFromJson(
        Map<String, dynamic> json) =>
    _StructuredFormatting(
      mainText: json['main_text'] as String,
      mainTextMatchedSubstrings:
          (json['main_text_matched_substrings'] as List<dynamic>)
              .map(MatchedSubstrings.fromJson)
              .toList(),
      secondaryText: json['secondary_text'] as String?,
      secondaryTextMatchedSubstrings:
          (json['secondary_text_matched_substrings'] as List<dynamic>?)
              ?.map(MatchedSubstrings.fromJson)
              .toList(),
    );

Map<String, dynamic> _$StructuredFormattingToJson(
        _StructuredFormatting instance) =>
    <String, dynamic>{
      'main_text': instance.mainText,
      'main_text_matched_substrings':
          instance.mainTextMatchedSubstrings.map((e) => e.toJson()).toList(),
      'secondary_text': instance.secondaryText,
      'secondary_text_matched_substrings': instance
          .secondaryTextMatchedSubstrings
          ?.map((e) => e.toJson())
          .toList(),
    };

_Term _$TermFromJson(Map<String, dynamic> json) => _Term(
      offset: (json['offset'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$TermToJson(_Term instance) => <String, dynamic>{
      'offset': instance.offset,
      'value': instance.value,
    };

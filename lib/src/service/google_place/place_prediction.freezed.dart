// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlacesAutocompleteResponse {

// Contains an array of predictions.
 List<PlacePrediction> get predictions;/// Contains the status of the request, and may contain debugging
/// information to help you track down why the request failed.
 PlacesAutocompleteStatus get status;// When the service returns a status code other than OK, there may be an
// additional error_message field within the response object. This field
// contains more detailed information about thereasons behind the given
// status code. This field is not always returned, and its content is
// subject to change.
@JsonKey(name: 'error_message') String? get errorMessage;/// When the service returns additional information about the request
/// specification, there may be an additional info_messages field within the
///  response object. This field is only returned for successful requests.
///  It may not always be returned, and its content is subject to change.
@JsonKey(name: 'info_messages') List<String>? get infoMessages;
/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacesAutocompleteResponseCopyWith<PlacesAutocompleteResponse> get copyWith => _$PlacesAutocompleteResponseCopyWithImpl<PlacesAutocompleteResponse>(this as PlacesAutocompleteResponse, _$identity);

  /// Serializes this PlacesAutocompleteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesAutocompleteResponse&&const DeepCollectionEquality().equals(other.predictions, predictions)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.infoMessages, infoMessages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(predictions),status,errorMessage,const DeepCollectionEquality().hash(infoMessages));

@override
String toString() {
  return 'PlacesAutocompleteResponse(predictions: $predictions, status: $status, errorMessage: $errorMessage, infoMessages: $infoMessages)';
}


}

/// @nodoc
abstract mixin class $PlacesAutocompleteResponseCopyWith<$Res>  {
  factory $PlacesAutocompleteResponseCopyWith(PlacesAutocompleteResponse value, $Res Function(PlacesAutocompleteResponse) _then) = _$PlacesAutocompleteResponseCopyWithImpl;
@useResult
$Res call({
 List<PlacePrediction> predictions, PlacesAutocompleteStatus status,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'info_messages') List<String>? infoMessages
});




}
/// @nodoc
class _$PlacesAutocompleteResponseCopyWithImpl<$Res>
    implements $PlacesAutocompleteResponseCopyWith<$Res> {
  _$PlacesAutocompleteResponseCopyWithImpl(this._self, this._then);

  final PlacesAutocompleteResponse _self;
  final $Res Function(PlacesAutocompleteResponse) _then;

/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? predictions = null,Object? status = null,Object? errorMessage = freezed,Object? infoMessages = freezed,}) {
  return _then(_self.copyWith(
predictions: null == predictions ? _self.predictions : predictions // ignore: cast_nullable_to_non_nullable
as List<PlacePrediction>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PlacesAutocompleteStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,infoMessages: freezed == infoMessages ? _self.infoMessages : infoMessages // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}



/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PlacesAutocompleteResponse extends PlacesAutocompleteResponse {
  const _PlacesAutocompleteResponse({required final  List<PlacePrediction> predictions, required this.status, @JsonKey(name: 'error_message') this.errorMessage, @JsonKey(name: 'info_messages') final  List<String>? infoMessages}): _predictions = predictions,_infoMessages = infoMessages,super._();
  factory _PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) => _$PlacesAutocompleteResponseFromJson(json);

// Contains an array of predictions.
 final  List<PlacePrediction> _predictions;
// Contains an array of predictions.
@override List<PlacePrediction> get predictions {
  if (_predictions is EqualUnmodifiableListView) return _predictions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_predictions);
}

/// Contains the status of the request, and may contain debugging
/// information to help you track down why the request failed.
@override final  PlacesAutocompleteStatus status;
// When the service returns a status code other than OK, there may be an
// additional error_message field within the response object. This field
// contains more detailed information about thereasons behind the given
// status code. This field is not always returned, and its content is
// subject to change.
@override@JsonKey(name: 'error_message') final  String? errorMessage;
/// When the service returns additional information about the request
/// specification, there may be an additional info_messages field within the
///  response object. This field is only returned for successful requests.
///  It may not always be returned, and its content is subject to change.
 final  List<String>? _infoMessages;
/// When the service returns additional information about the request
/// specification, there may be an additional info_messages field within the
///  response object. This field is only returned for successful requests.
///  It may not always be returned, and its content is subject to change.
@override@JsonKey(name: 'info_messages') List<String>? get infoMessages {
  final value = _infoMessages;
  if (value == null) return null;
  if (_infoMessages is EqualUnmodifiableListView) return _infoMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesAutocompleteResponseCopyWith<_PlacesAutocompleteResponse> get copyWith => __$PlacesAutocompleteResponseCopyWithImpl<_PlacesAutocompleteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacesAutocompleteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesAutocompleteResponse&&const DeepCollectionEquality().equals(other._predictions, _predictions)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._infoMessages, _infoMessages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_predictions),status,errorMessage,const DeepCollectionEquality().hash(_infoMessages));

@override
String toString() {
  return 'PlacesAutocompleteResponse(predictions: $predictions, status: $status, errorMessage: $errorMessage, infoMessages: $infoMessages)';
}


}

/// @nodoc
abstract mixin class _$PlacesAutocompleteResponseCopyWith<$Res> implements $PlacesAutocompleteResponseCopyWith<$Res> {
  factory _$PlacesAutocompleteResponseCopyWith(_PlacesAutocompleteResponse value, $Res Function(_PlacesAutocompleteResponse) _then) = __$PlacesAutocompleteResponseCopyWithImpl;
@override @useResult
$Res call({
 List<PlacePrediction> predictions, PlacesAutocompleteStatus status,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'info_messages') List<String>? infoMessages
});




}
/// @nodoc
class __$PlacesAutocompleteResponseCopyWithImpl<$Res>
    implements _$PlacesAutocompleteResponseCopyWith<$Res> {
  __$PlacesAutocompleteResponseCopyWithImpl(this._self, this._then);

  final _PlacesAutocompleteResponse _self;
  final $Res Function(_PlacesAutocompleteResponse) _then;

/// Create a copy of PlacesAutocompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? predictions = null,Object? status = null,Object? errorMessage = freezed,Object? infoMessages = freezed,}) {
  return _then(_PlacesAutocompleteResponse(
predictions: null == predictions ? _self._predictions : predictions // ignore: cast_nullable_to_non_nullable
as List<PlacePrediction>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PlacesAutocompleteStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,infoMessages: freezed == infoMessages ? _self._infoMessages : infoMessages // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$PlacePrediction {

/// Contains the human-readable name for the returned result.
/// For establishment results, this is usually the business name.
/// This content is meant to be read as-is.
/// Do not programmatically parse the formatted address.
 String get description;/// A list of substrings that describe the location of the entered term
/// in the prediction result text, so that the term can be highlighted
/// if desired.
@JsonKey(name: 'matched_substrings') List<MatchedSubstrings> get matchedSubstrings;/// Provides pre-formatted text that can be shown in your autocomplete
/// results. This content is meant to be read as-is.
/// Do not programmatically parse the formatted address.
@JsonKey(name: 'structured_formatting') StructuredFormatting get structuredFormatting;/// Contains an array of terms identifying each section of the returned
/// description (a section of the description is generally terminated with
/// a comma). Each entry in the array has a value field, containing the
/// text of the term, and an offset field, defining the start position of
/// this term in the description, measured in Unicode characters.
 List<Term> get terms;/// The straight-line distance in meters from the origin.
/// This field is only returned for requests made with an origin.
@JsonKey(name: 'distance_meters') int? get distanceMeters;/// A textual identifier that uniquely identifies a place.
@JsonKey(name: 'place_id') String? get placeId;/// Contains an array of types that apply to this place.
///
/// For example: [ "political", "locality" ] or [ "establishment",
/// "geocode", "beauty_salon" ]. The array can contain multiple values.
 List<String>? get types;
/// Create a copy of PlacePrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacePredictionCopyWith<PlacePrediction> get copyWith => _$PlacePredictionCopyWithImpl<PlacePrediction>(this as PlacePrediction, _$identity);

  /// Serializes this PlacePrediction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacePrediction&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.matchedSubstrings, matchedSubstrings)&&(identical(other.structuredFormatting, structuredFormatting) || other.structuredFormatting == structuredFormatting)&&const DeepCollectionEquality().equals(other.terms, terms)&&(identical(other.distanceMeters, distanceMeters) || other.distanceMeters == distanceMeters)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(matchedSubstrings),structuredFormatting,const DeepCollectionEquality().hash(terms),distanceMeters,placeId,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'PlacePrediction(description: $description, matchedSubstrings: $matchedSubstrings, structuredFormatting: $structuredFormatting, terms: $terms, distanceMeters: $distanceMeters, placeId: $placeId, types: $types)';
}


}

/// @nodoc
abstract mixin class $PlacePredictionCopyWith<$Res>  {
  factory $PlacePredictionCopyWith(PlacePrediction value, $Res Function(PlacePrediction) _then) = _$PlacePredictionCopyWithImpl;
@useResult
$Res call({
 String description,@JsonKey(name: 'matched_substrings') List<MatchedSubstrings> matchedSubstrings,@JsonKey(name: 'structured_formatting') StructuredFormatting structuredFormatting, List<Term> terms,@JsonKey(name: 'distance_meters') int? distanceMeters,@JsonKey(name: 'place_id') String? placeId, List<String>? types
});


$StructuredFormattingCopyWith<$Res> get structuredFormatting;

}
/// @nodoc
class _$PlacePredictionCopyWithImpl<$Res>
    implements $PlacePredictionCopyWith<$Res> {
  _$PlacePredictionCopyWithImpl(this._self, this._then);

  final PlacePrediction _self;
  final $Res Function(PlacePrediction) _then;

/// Create a copy of PlacePrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? matchedSubstrings = null,Object? structuredFormatting = null,Object? terms = null,Object? distanceMeters = freezed,Object? placeId = freezed,Object? types = freezed,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchedSubstrings: null == matchedSubstrings ? _self.matchedSubstrings : matchedSubstrings // ignore: cast_nullable_to_non_nullable
as List<MatchedSubstrings>,structuredFormatting: null == structuredFormatting ? _self.structuredFormatting : structuredFormatting // ignore: cast_nullable_to_non_nullable
as StructuredFormatting,terms: null == terms ? _self.terms : terms // ignore: cast_nullable_to_non_nullable
as List<Term>,distanceMeters: freezed == distanceMeters ? _self.distanceMeters : distanceMeters // ignore: cast_nullable_to_non_nullable
as int?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of PlacePrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StructuredFormattingCopyWith<$Res> get structuredFormatting {
  
  return $StructuredFormattingCopyWith<$Res>(_self.structuredFormatting, (value) {
    return _then(_self.copyWith(structuredFormatting: value));
  });
}
}



/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PlacePrediction extends PlacePrediction {
  const _PlacePrediction({required this.description, @JsonKey(name: 'matched_substrings') required final  List<MatchedSubstrings> matchedSubstrings, @JsonKey(name: 'structured_formatting') required this.structuredFormatting, required final  List<Term> terms, @JsonKey(name: 'distance_meters') this.distanceMeters, @JsonKey(name: 'place_id') this.placeId, final  List<String>? types}): _matchedSubstrings = matchedSubstrings,_terms = terms,_types = types,super._();
  factory _PlacePrediction.fromJson(Map<String, dynamic> json) => _$PlacePredictionFromJson(json);

/// Contains the human-readable name for the returned result.
/// For establishment results, this is usually the business name.
/// This content is meant to be read as-is.
/// Do not programmatically parse the formatted address.
@override final  String description;
/// A list of substrings that describe the location of the entered term
/// in the prediction result text, so that the term can be highlighted
/// if desired.
 final  List<MatchedSubstrings> _matchedSubstrings;
/// A list of substrings that describe the location of the entered term
/// in the prediction result text, so that the term can be highlighted
/// if desired.
@override@JsonKey(name: 'matched_substrings') List<MatchedSubstrings> get matchedSubstrings {
  if (_matchedSubstrings is EqualUnmodifiableListView) return _matchedSubstrings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matchedSubstrings);
}

/// Provides pre-formatted text that can be shown in your autocomplete
/// results. This content is meant to be read as-is.
/// Do not programmatically parse the formatted address.
@override@JsonKey(name: 'structured_formatting') final  StructuredFormatting structuredFormatting;
/// Contains an array of terms identifying each section of the returned
/// description (a section of the description is generally terminated with
/// a comma). Each entry in the array has a value field, containing the
/// text of the term, and an offset field, defining the start position of
/// this term in the description, measured in Unicode characters.
 final  List<Term> _terms;
/// Contains an array of terms identifying each section of the returned
/// description (a section of the description is generally terminated with
/// a comma). Each entry in the array has a value field, containing the
/// text of the term, and an offset field, defining the start position of
/// this term in the description, measured in Unicode characters.
@override List<Term> get terms {
  if (_terms is EqualUnmodifiableListView) return _terms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_terms);
}

/// The straight-line distance in meters from the origin.
/// This field is only returned for requests made with an origin.
@override@JsonKey(name: 'distance_meters') final  int? distanceMeters;
/// A textual identifier that uniquely identifies a place.
@override@JsonKey(name: 'place_id') final  String? placeId;
/// Contains an array of types that apply to this place.
///
/// For example: [ "political", "locality" ] or [ "establishment",
/// "geocode", "beauty_salon" ]. The array can contain multiple values.
 final  List<String>? _types;
/// Contains an array of types that apply to this place.
///
/// For example: [ "political", "locality" ] or [ "establishment",
/// "geocode", "beauty_salon" ]. The array can contain multiple values.
@override List<String>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PlacePrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacePredictionCopyWith<_PlacePrediction> get copyWith => __$PlacePredictionCopyWithImpl<_PlacePrediction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacePredictionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacePrediction&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._matchedSubstrings, _matchedSubstrings)&&(identical(other.structuredFormatting, structuredFormatting) || other.structuredFormatting == structuredFormatting)&&const DeepCollectionEquality().equals(other._terms, _terms)&&(identical(other.distanceMeters, distanceMeters) || other.distanceMeters == distanceMeters)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_matchedSubstrings),structuredFormatting,const DeepCollectionEquality().hash(_terms),distanceMeters,placeId,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'PlacePrediction(description: $description, matchedSubstrings: $matchedSubstrings, structuredFormatting: $structuredFormatting, terms: $terms, distanceMeters: $distanceMeters, placeId: $placeId, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PlacePredictionCopyWith<$Res> implements $PlacePredictionCopyWith<$Res> {
  factory _$PlacePredictionCopyWith(_PlacePrediction value, $Res Function(_PlacePrediction) _then) = __$PlacePredictionCopyWithImpl;
@override @useResult
$Res call({
 String description,@JsonKey(name: 'matched_substrings') List<MatchedSubstrings> matchedSubstrings,@JsonKey(name: 'structured_formatting') StructuredFormatting structuredFormatting, List<Term> terms,@JsonKey(name: 'distance_meters') int? distanceMeters,@JsonKey(name: 'place_id') String? placeId, List<String>? types
});


@override $StructuredFormattingCopyWith<$Res> get structuredFormatting;

}
/// @nodoc
class __$PlacePredictionCopyWithImpl<$Res>
    implements _$PlacePredictionCopyWith<$Res> {
  __$PlacePredictionCopyWithImpl(this._self, this._then);

  final _PlacePrediction _self;
  final $Res Function(_PlacePrediction) _then;

/// Create a copy of PlacePrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? matchedSubstrings = null,Object? structuredFormatting = null,Object? terms = null,Object? distanceMeters = freezed,Object? placeId = freezed,Object? types = freezed,}) {
  return _then(_PlacePrediction(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchedSubstrings: null == matchedSubstrings ? _self._matchedSubstrings : matchedSubstrings // ignore: cast_nullable_to_non_nullable
as List<MatchedSubstrings>,structuredFormatting: null == structuredFormatting ? _self.structuredFormatting : structuredFormatting // ignore: cast_nullable_to_non_nullable
as StructuredFormatting,terms: null == terms ? _self._terms : terms // ignore: cast_nullable_to_non_nullable
as List<Term>,distanceMeters: freezed == distanceMeters ? _self.distanceMeters : distanceMeters // ignore: cast_nullable_to_non_nullable
as int?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of PlacePrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StructuredFormattingCopyWith<$Res> get structuredFormatting {
  
  return $StructuredFormattingCopyWith<$Res>(_self.structuredFormatting, (value) {
    return _then(_self.copyWith(structuredFormatting: value));
  });
}
}


/// @nodoc
mixin _$MatchedSubstrings {

/// Length of the matched substring in the prediction result text.
 int get length;/// Start location of the matched substring in the prediction result text.
 int get offset;
/// Create a copy of MatchedSubstrings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchedSubstringsCopyWith<MatchedSubstrings> get copyWith => _$MatchedSubstringsCopyWithImpl<MatchedSubstrings>(this as MatchedSubstrings, _$identity);

  /// Serializes this MatchedSubstrings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchedSubstrings&&(identical(other.length, length) || other.length == length)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,length,offset);

@override
String toString() {
  return 'MatchedSubstrings(length: $length, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $MatchedSubstringsCopyWith<$Res>  {
  factory $MatchedSubstringsCopyWith(MatchedSubstrings value, $Res Function(MatchedSubstrings) _then) = _$MatchedSubstringsCopyWithImpl;
@useResult
$Res call({
 int length, int offset
});




}
/// @nodoc
class _$MatchedSubstringsCopyWithImpl<$Res>
    implements $MatchedSubstringsCopyWith<$Res> {
  _$MatchedSubstringsCopyWithImpl(this._self, this._then);

  final MatchedSubstrings _self;
  final $Res Function(MatchedSubstrings) _then;

/// Create a copy of MatchedSubstrings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? length = null,Object? offset = null,}) {
  return _then(_self.copyWith(
length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _MatchedSubstrings extends MatchedSubstrings {
  const _MatchedSubstrings({required this.length, required this.offset}): super._();
  factory _MatchedSubstrings.fromJson(Map<String, dynamic> json) => _$MatchedSubstringsFromJson(json);

/// Length of the matched substring in the prediction result text.
@override final  int length;
/// Start location of the matched substring in the prediction result text.
@override final  int offset;

/// Create a copy of MatchedSubstrings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchedSubstringsCopyWith<_MatchedSubstrings> get copyWith => __$MatchedSubstringsCopyWithImpl<_MatchedSubstrings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchedSubstringsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchedSubstrings&&(identical(other.length, length) || other.length == length)&&(identical(other.offset, offset) || other.offset == offset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,length,offset);

@override
String toString() {
  return 'MatchedSubstrings(length: $length, offset: $offset)';
}


}

/// @nodoc
abstract mixin class _$MatchedSubstringsCopyWith<$Res> implements $MatchedSubstringsCopyWith<$Res> {
  factory _$MatchedSubstringsCopyWith(_MatchedSubstrings value, $Res Function(_MatchedSubstrings) _then) = __$MatchedSubstringsCopyWithImpl;
@override @useResult
$Res call({
 int length, int offset
});




}
/// @nodoc
class __$MatchedSubstringsCopyWithImpl<$Res>
    implements _$MatchedSubstringsCopyWith<$Res> {
  __$MatchedSubstringsCopyWithImpl(this._self, this._then);

  final _MatchedSubstrings _self;
  final $Res Function(_MatchedSubstrings) _then;

/// Create a copy of MatchedSubstrings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? length = null,Object? offset = null,}) {
  return _then(_MatchedSubstrings(
length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StructuredFormatting {

// Contains the main text of a prediction, usually the name of the place.
@JsonKey(name: 'main_text') String get mainText;// Contains an array with offset value and length. These describe the
// location of the entered term in the prediction result text, so that
// the term can be highlighted if desired.
@JsonKey(name: 'main_text_matched_substrings') List<MatchedSubstrings> get mainTextMatchedSubstrings;/// Contains the secondary text of a prediction, usually the location of
/// the place.
@JsonKey(name: 'secondary_text') String? get secondaryText;// Contains an array with offset value and length. These describe the
// location of the entered term in the prediction result text, so that
//the term can be highlighted if desired.
@JsonKey(name: 'secondary_text_matched_substrings') List<MatchedSubstrings>? get secondaryTextMatchedSubstrings;
/// Create a copy of StructuredFormatting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StructuredFormattingCopyWith<StructuredFormatting> get copyWith => _$StructuredFormattingCopyWithImpl<StructuredFormatting>(this as StructuredFormatting, _$identity);

  /// Serializes this StructuredFormatting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StructuredFormatting&&(identical(other.mainText, mainText) || other.mainText == mainText)&&const DeepCollectionEquality().equals(other.mainTextMatchedSubstrings, mainTextMatchedSubstrings)&&(identical(other.secondaryText, secondaryText) || other.secondaryText == secondaryText)&&const DeepCollectionEquality().equals(other.secondaryTextMatchedSubstrings, secondaryTextMatchedSubstrings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainText,const DeepCollectionEquality().hash(mainTextMatchedSubstrings),secondaryText,const DeepCollectionEquality().hash(secondaryTextMatchedSubstrings));

@override
String toString() {
  return 'StructuredFormatting(mainText: $mainText, mainTextMatchedSubstrings: $mainTextMatchedSubstrings, secondaryText: $secondaryText, secondaryTextMatchedSubstrings: $secondaryTextMatchedSubstrings)';
}


}

/// @nodoc
abstract mixin class $StructuredFormattingCopyWith<$Res>  {
  factory $StructuredFormattingCopyWith(StructuredFormatting value, $Res Function(StructuredFormatting) _then) = _$StructuredFormattingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'main_text') String mainText,@JsonKey(name: 'main_text_matched_substrings') List<MatchedSubstrings> mainTextMatchedSubstrings,@JsonKey(name: 'secondary_text') String? secondaryText,@JsonKey(name: 'secondary_text_matched_substrings') List<MatchedSubstrings>? secondaryTextMatchedSubstrings
});




}
/// @nodoc
class _$StructuredFormattingCopyWithImpl<$Res>
    implements $StructuredFormattingCopyWith<$Res> {
  _$StructuredFormattingCopyWithImpl(this._self, this._then);

  final StructuredFormatting _self;
  final $Res Function(StructuredFormatting) _then;

/// Create a copy of StructuredFormatting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainText = null,Object? mainTextMatchedSubstrings = null,Object? secondaryText = freezed,Object? secondaryTextMatchedSubstrings = freezed,}) {
  return _then(_self.copyWith(
mainText: null == mainText ? _self.mainText : mainText // ignore: cast_nullable_to_non_nullable
as String,mainTextMatchedSubstrings: null == mainTextMatchedSubstrings ? _self.mainTextMatchedSubstrings : mainTextMatchedSubstrings // ignore: cast_nullable_to_non_nullable
as List<MatchedSubstrings>,secondaryText: freezed == secondaryText ? _self.secondaryText : secondaryText // ignore: cast_nullable_to_non_nullable
as String?,secondaryTextMatchedSubstrings: freezed == secondaryTextMatchedSubstrings ? _self.secondaryTextMatchedSubstrings : secondaryTextMatchedSubstrings // ignore: cast_nullable_to_non_nullable
as List<MatchedSubstrings>?,
  ));
}

}



/// @nodoc

@JsonSerializable(explicitToJson: true)
class _StructuredFormatting extends StructuredFormatting {
  const _StructuredFormatting({@JsonKey(name: 'main_text') required this.mainText, @JsonKey(name: 'main_text_matched_substrings') required final  List<MatchedSubstrings> mainTextMatchedSubstrings, @JsonKey(name: 'secondary_text') this.secondaryText, @JsonKey(name: 'secondary_text_matched_substrings') final  List<MatchedSubstrings>? secondaryTextMatchedSubstrings}): _mainTextMatchedSubstrings = mainTextMatchedSubstrings,_secondaryTextMatchedSubstrings = secondaryTextMatchedSubstrings,super._();
  factory _StructuredFormatting.fromJson(Map<String, dynamic> json) => _$StructuredFormattingFromJson(json);

// Contains the main text of a prediction, usually the name of the place.
@override@JsonKey(name: 'main_text') final  String mainText;
// Contains an array with offset value and length. These describe the
// location of the entered term in the prediction result text, so that
// the term can be highlighted if desired.
 final  List<MatchedSubstrings> _mainTextMatchedSubstrings;
// Contains an array with offset value and length. These describe the
// location of the entered term in the prediction result text, so that
// the term can be highlighted if desired.
@override@JsonKey(name: 'main_text_matched_substrings') List<MatchedSubstrings> get mainTextMatchedSubstrings {
  if (_mainTextMatchedSubstrings is EqualUnmodifiableListView) return _mainTextMatchedSubstrings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mainTextMatchedSubstrings);
}

/// Contains the secondary text of a prediction, usually the location of
/// the place.
@override@JsonKey(name: 'secondary_text') final  String? secondaryText;
// Contains an array with offset value and length. These describe the
// location of the entered term in the prediction result text, so that
//the term can be highlighted if desired.
 final  List<MatchedSubstrings>? _secondaryTextMatchedSubstrings;
// Contains an array with offset value and length. These describe the
// location of the entered term in the prediction result text, so that
//the term can be highlighted if desired.
@override@JsonKey(name: 'secondary_text_matched_substrings') List<MatchedSubstrings>? get secondaryTextMatchedSubstrings {
  final value = _secondaryTextMatchedSubstrings;
  if (value == null) return null;
  if (_secondaryTextMatchedSubstrings is EqualUnmodifiableListView) return _secondaryTextMatchedSubstrings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StructuredFormatting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StructuredFormattingCopyWith<_StructuredFormatting> get copyWith => __$StructuredFormattingCopyWithImpl<_StructuredFormatting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StructuredFormattingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StructuredFormatting&&(identical(other.mainText, mainText) || other.mainText == mainText)&&const DeepCollectionEquality().equals(other._mainTextMatchedSubstrings, _mainTextMatchedSubstrings)&&(identical(other.secondaryText, secondaryText) || other.secondaryText == secondaryText)&&const DeepCollectionEquality().equals(other._secondaryTextMatchedSubstrings, _secondaryTextMatchedSubstrings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mainText,const DeepCollectionEquality().hash(_mainTextMatchedSubstrings),secondaryText,const DeepCollectionEquality().hash(_secondaryTextMatchedSubstrings));

@override
String toString() {
  return 'StructuredFormatting(mainText: $mainText, mainTextMatchedSubstrings: $mainTextMatchedSubstrings, secondaryText: $secondaryText, secondaryTextMatchedSubstrings: $secondaryTextMatchedSubstrings)';
}


}

/// @nodoc
abstract mixin class _$StructuredFormattingCopyWith<$Res> implements $StructuredFormattingCopyWith<$Res> {
  factory _$StructuredFormattingCopyWith(_StructuredFormatting value, $Res Function(_StructuredFormatting) _then) = __$StructuredFormattingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'main_text') String mainText,@JsonKey(name: 'main_text_matched_substrings') List<MatchedSubstrings> mainTextMatchedSubstrings,@JsonKey(name: 'secondary_text') String? secondaryText,@JsonKey(name: 'secondary_text_matched_substrings') List<MatchedSubstrings>? secondaryTextMatchedSubstrings
});




}
/// @nodoc
class __$StructuredFormattingCopyWithImpl<$Res>
    implements _$StructuredFormattingCopyWith<$Res> {
  __$StructuredFormattingCopyWithImpl(this._self, this._then);

  final _StructuredFormatting _self;
  final $Res Function(_StructuredFormatting) _then;

/// Create a copy of StructuredFormatting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainText = null,Object? mainTextMatchedSubstrings = null,Object? secondaryText = freezed,Object? secondaryTextMatchedSubstrings = freezed,}) {
  return _then(_StructuredFormatting(
mainText: null == mainText ? _self.mainText : mainText // ignore: cast_nullable_to_non_nullable
as String,mainTextMatchedSubstrings: null == mainTextMatchedSubstrings ? _self._mainTextMatchedSubstrings : mainTextMatchedSubstrings // ignore: cast_nullable_to_non_nullable
as List<MatchedSubstrings>,secondaryText: freezed == secondaryText ? _self.secondaryText : secondaryText // ignore: cast_nullable_to_non_nullable
as String?,secondaryTextMatchedSubstrings: freezed == secondaryTextMatchedSubstrings ? _self._secondaryTextMatchedSubstrings : secondaryTextMatchedSubstrings // ignore: cast_nullable_to_non_nullable
as List<MatchedSubstrings>?,
  ));
}


}


/// @nodoc
mixin _$Term {

// Defines the start position of this term in the description,
// measured in Unicode characters.
 int get offset;// The text of the term.
 String get value;
/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermCopyWith<Term> get copyWith => _$TermCopyWithImpl<Term>(this as Term, _$identity);

  /// Serializes this Term to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Term&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,value);

@override
String toString() {
  return 'Term(offset: $offset, value: $value)';
}


}

/// @nodoc
abstract mixin class $TermCopyWith<$Res>  {
  factory $TermCopyWith(Term value, $Res Function(Term) _then) = _$TermCopyWithImpl;
@useResult
$Res call({
 int offset, String value
});




}
/// @nodoc
class _$TermCopyWithImpl<$Res>
    implements $TermCopyWith<$Res> {
  _$TermCopyWithImpl(this._self, this._then);

  final Term _self;
  final $Res Function(Term) _then;

/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? value = null,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _Term extends Term {
  const _Term({required this.offset, required this.value}): super._();
  factory _Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);

// Defines the start position of this term in the description,
// measured in Unicode characters.
@override final  int offset;
// The text of the term.
@override final  String value;

/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TermCopyWith<_Term> get copyWith => __$TermCopyWithImpl<_Term>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TermToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Term&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,value);

@override
String toString() {
  return 'Term(offset: $offset, value: $value)';
}


}

/// @nodoc
abstract mixin class _$TermCopyWith<$Res> implements $TermCopyWith<$Res> {
  factory _$TermCopyWith(_Term value, $Res Function(_Term) _then) = __$TermCopyWithImpl;
@override @useResult
$Res call({
 int offset, String value
});




}
/// @nodoc
class __$TermCopyWithImpl<$Res>
    implements _$TermCopyWith<$Res> {
  __$TermCopyWithImpl(this._self, this._then);

  final _Term _self;
  final $Res Function(_Term) _then;

/// Create a copy of Term
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? value = null,}) {
  return _then(_Term(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

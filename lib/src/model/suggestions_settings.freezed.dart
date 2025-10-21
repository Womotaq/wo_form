// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestions_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SuggestionsSettings<T> {

 Future<List<T>> Function(String? text) get loadSuggestions;/// How the suggestion should be converted to text in the text field.
///
/// Defaults to suggestion.toString()
///
/// IMPORTANT : When using this field, enforce the StringInput's data type :
/// ```dart
/// StringInput<String>(...
/// ```
 String Function(T suggesstion)? get suggestionToText;/// IMPORTANT : When using this field, enforce the StringInput's data type :
/// ```dart
/// StringInput<String>(...
/// ```
 Widget Function(T suggestion)? get suggestionTileBuilder;/// Time before a text entry triggers [loadSuggestions].
///
/// Defaults to [WoFormTheme.DEBOUNCE_DURATION].
 Duration? get debounceDuration;
/// Create a copy of SuggestionsSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestionsSettingsCopyWith<T, SuggestionsSettings<T>> get copyWith => _$SuggestionsSettingsCopyWithImpl<T, SuggestionsSettings<T>>(this as SuggestionsSettings<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionsSettings<T>&&(identical(other.loadSuggestions, loadSuggestions) || other.loadSuggestions == loadSuggestions)&&(identical(other.suggestionToText, suggestionToText) || other.suggestionToText == suggestionToText)&&(identical(other.suggestionTileBuilder, suggestionTileBuilder) || other.suggestionTileBuilder == suggestionTileBuilder)&&(identical(other.debounceDuration, debounceDuration) || other.debounceDuration == debounceDuration));
}


@override
int get hashCode => Object.hash(runtimeType,loadSuggestions,suggestionToText,suggestionTileBuilder,debounceDuration);

@override
String toString() {
  return 'SuggestionsSettings<$T>(loadSuggestions: $loadSuggestions, suggestionToText: $suggestionToText, suggestionTileBuilder: $suggestionTileBuilder, debounceDuration: $debounceDuration)';
}


}

/// @nodoc
abstract mixin class $SuggestionsSettingsCopyWith<T,$Res>  {
  factory $SuggestionsSettingsCopyWith(SuggestionsSettings<T> value, $Res Function(SuggestionsSettings<T>) _then) = _$SuggestionsSettingsCopyWithImpl;
@useResult
$Res call({
 Future<List<T>> Function(String? text) loadSuggestions, String Function(T suggesstion)? suggestionToText, Widget Function(T suggestion)? suggestionTileBuilder, Duration? debounceDuration
});




}
/// @nodoc
class _$SuggestionsSettingsCopyWithImpl<T,$Res>
    implements $SuggestionsSettingsCopyWith<T, $Res> {
  _$SuggestionsSettingsCopyWithImpl(this._self, this._then);

  final SuggestionsSettings<T> _self;
  final $Res Function(SuggestionsSettings<T>) _then;

/// Create a copy of SuggestionsSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loadSuggestions = null,Object? suggestionToText = freezed,Object? suggestionTileBuilder = freezed,Object? debounceDuration = freezed,}) {
  return _then(_self.copyWith(
loadSuggestions: null == loadSuggestions ? _self.loadSuggestions : loadSuggestions // ignore: cast_nullable_to_non_nullable
as Future<List<T>> Function(String? text),suggestionToText: freezed == suggestionToText ? _self.suggestionToText : suggestionToText // ignore: cast_nullable_to_non_nullable
as String Function(T suggesstion)?,suggestionTileBuilder: freezed == suggestionTileBuilder ? _self.suggestionTileBuilder : suggestionTileBuilder // ignore: cast_nullable_to_non_nullable
as Widget Function(T suggestion)?,debounceDuration: freezed == debounceDuration ? _self.debounceDuration : debounceDuration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}

}



/// @nodoc


class _SuggestionsSettings<T> extends SuggestionsSettings<T> {
  const _SuggestionsSettings({required this.loadSuggestions, this.suggestionToText, this.suggestionTileBuilder, this.debounceDuration}): super._();
  

@override final  Future<List<T>> Function(String? text) loadSuggestions;
/// How the suggestion should be converted to text in the text field.
///
/// Defaults to suggestion.toString()
///
/// IMPORTANT : When using this field, enforce the StringInput's data type :
/// ```dart
/// StringInput<String>(...
/// ```
@override final  String Function(T suggesstion)? suggestionToText;
/// IMPORTANT : When using this field, enforce the StringInput's data type :
/// ```dart
/// StringInput<String>(...
/// ```
@override final  Widget Function(T suggestion)? suggestionTileBuilder;
/// Time before a text entry triggers [loadSuggestions].
///
/// Defaults to [WoFormTheme.DEBOUNCE_DURATION].
@override final  Duration? debounceDuration;

/// Create a copy of SuggestionsSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestionsSettingsCopyWith<T, _SuggestionsSettings<T>> get copyWith => __$SuggestionsSettingsCopyWithImpl<T, _SuggestionsSettings<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestionsSettings<T>&&(identical(other.loadSuggestions, loadSuggestions) || other.loadSuggestions == loadSuggestions)&&(identical(other.suggestionToText, suggestionToText) || other.suggestionToText == suggestionToText)&&(identical(other.suggestionTileBuilder, suggestionTileBuilder) || other.suggestionTileBuilder == suggestionTileBuilder)&&(identical(other.debounceDuration, debounceDuration) || other.debounceDuration == debounceDuration));
}


@override
int get hashCode => Object.hash(runtimeType,loadSuggestions,suggestionToText,suggestionTileBuilder,debounceDuration);

@override
String toString() {
  return 'SuggestionsSettings<$T>(loadSuggestions: $loadSuggestions, suggestionToText: $suggestionToText, suggestionTileBuilder: $suggestionTileBuilder, debounceDuration: $debounceDuration)';
}


}

/// @nodoc
abstract mixin class _$SuggestionsSettingsCopyWith<T,$Res> implements $SuggestionsSettingsCopyWith<T, $Res> {
  factory _$SuggestionsSettingsCopyWith(_SuggestionsSettings<T> value, $Res Function(_SuggestionsSettings<T>) _then) = __$SuggestionsSettingsCopyWithImpl;
@override @useResult
$Res call({
 Future<List<T>> Function(String? text) loadSuggestions, String Function(T suggesstion)? suggestionToText, Widget Function(T suggestion)? suggestionTileBuilder, Duration? debounceDuration
});




}
/// @nodoc
class __$SuggestionsSettingsCopyWithImpl<T,$Res>
    implements _$SuggestionsSettingsCopyWith<T, $Res> {
  __$SuggestionsSettingsCopyWithImpl(this._self, this._then);

  final _SuggestionsSettings<T> _self;
  final $Res Function(_SuggestionsSettings<T>) _then;

/// Create a copy of SuggestionsSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loadSuggestions = null,Object? suggestionToText = freezed,Object? suggestionTileBuilder = freezed,Object? debounceDuration = freezed,}) {
  return _then(_SuggestionsSettings<T>(
loadSuggestions: null == loadSuggestions ? _self.loadSuggestions : loadSuggestions // ignore: cast_nullable_to_non_nullable
as Future<List<T>> Function(String? text),suggestionToText: freezed == suggestionToText ? _self.suggestionToText : suggestionToText // ignore: cast_nullable_to_non_nullable
as String Function(T suggesstion)?,suggestionTileBuilder: freezed == suggestionTileBuilder ? _self.suggestionTileBuilder : suggestionTileBuilder // ignore: cast_nullable_to_non_nullable
as Widget Function(T suggestion)?,debounceDuration: freezed == debounceDuration ? _self.debounceDuration : debounceDuration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}


}

// dart format on

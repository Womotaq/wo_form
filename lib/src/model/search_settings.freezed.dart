// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchSettings<T> {

/// A function that calculates how well a [value] matches the search.
///
/// This function must return a score between 0.0 (no match) and 1.0
/// (perfect match).
///
/// The [query] passed to this function is guaranteed to be lowercase and
/// without diacritics (e.g., accents, umlauts).
 double Function(WoFormQuery query, T value) get searchScore;/// Called each time the query changes.
 Future<Iterable<T>> Function(WoFormQuery)? get loadAvailibleData;/// Called when the user scrolled through all the availible data. You may
/// want to load more.
///
/// If null is returned, [onEndReached] won't be called again, until the
/// query changes and the user scrolles again through all the data.
///
/// If some data are returned, they will be added to the other availible
/// data.
 Iterable<T>? Function()? get onEndReached;
/// Create a copy of SearchSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSettingsCopyWith<T, SearchSettings<T>> get copyWith => _$SearchSettingsCopyWithImpl<T, SearchSettings<T>>(this as SearchSettings<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSettings<T>&&(identical(other.searchScore, searchScore) || other.searchScore == searchScore)&&(identical(other.loadAvailibleData, loadAvailibleData) || other.loadAvailibleData == loadAvailibleData)&&(identical(other.onEndReached, onEndReached) || other.onEndReached == onEndReached));
}


@override
int get hashCode => Object.hash(runtimeType,searchScore,loadAvailibleData,onEndReached);

@override
String toString() {
  return 'SearchSettings<$T>(searchScore: $searchScore, loadAvailibleData: $loadAvailibleData, onEndReached: $onEndReached)';
}


}

/// @nodoc
abstract mixin class $SearchSettingsCopyWith<T,$Res>  {
  factory $SearchSettingsCopyWith(SearchSettings<T> value, $Res Function(SearchSettings<T>) _then) = _$SearchSettingsCopyWithImpl;
@useResult
$Res call({
 double Function(WoFormQuery query, T value) searchScore, Future<Iterable<T>> Function(WoFormQuery)? loadAvailibleData, Iterable<T>? Function()? onEndReached
});




}
/// @nodoc
class _$SearchSettingsCopyWithImpl<T,$Res>
    implements $SearchSettingsCopyWith<T, $Res> {
  _$SearchSettingsCopyWithImpl(this._self, this._then);

  final SearchSettings<T> _self;
  final $Res Function(SearchSettings<T>) _then;

/// Create a copy of SearchSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchScore = null,Object? loadAvailibleData = freezed,Object? onEndReached = freezed,}) {
  return _then(_self.copyWith(
searchScore: null == searchScore ? _self.searchScore : searchScore // ignore: cast_nullable_to_non_nullable
as double Function(WoFormQuery query, T value),loadAvailibleData: freezed == loadAvailibleData ? _self.loadAvailibleData : loadAvailibleData // ignore: cast_nullable_to_non_nullable
as Future<Iterable<T>> Function(WoFormQuery)?,onEndReached: freezed == onEndReached ? _self.onEndReached : onEndReached // ignore: cast_nullable_to_non_nullable
as Iterable<T>? Function()?,
  ));
}

}



/// @nodoc


class _SearchSettings<T> extends SearchSettings<T> {
  const _SearchSettings({required this.searchScore, this.loadAvailibleData, this.onEndReached}): super._();
  

/// A function that calculates how well a [value] matches the search.
///
/// This function must return a score between 0.0 (no match) and 1.0
/// (perfect match).
///
/// The [query] passed to this function is guaranteed to be lowercase and
/// without diacritics (e.g., accents, umlauts).
@override final  double Function(WoFormQuery query, T value) searchScore;
/// Called each time the query changes.
@override final  Future<Iterable<T>> Function(WoFormQuery)? loadAvailibleData;
/// Called when the user scrolled through all the availible data. You may
/// want to load more.
///
/// If null is returned, [onEndReached] won't be called again, until the
/// query changes and the user scrolles again through all the data.
///
/// If some data are returned, they will be added to the other availible
/// data.
@override final  Iterable<T>? Function()? onEndReached;

/// Create a copy of SearchSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSettingsCopyWith<T, _SearchSettings<T>> get copyWith => __$SearchSettingsCopyWithImpl<T, _SearchSettings<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSettings<T>&&(identical(other.searchScore, searchScore) || other.searchScore == searchScore)&&(identical(other.loadAvailibleData, loadAvailibleData) || other.loadAvailibleData == loadAvailibleData)&&(identical(other.onEndReached, onEndReached) || other.onEndReached == onEndReached));
}


@override
int get hashCode => Object.hash(runtimeType,searchScore,loadAvailibleData,onEndReached);

@override
String toString() {
  return 'SearchSettings<$T>(searchScore: $searchScore, loadAvailibleData: $loadAvailibleData, onEndReached: $onEndReached)';
}


}

/// @nodoc
abstract mixin class _$SearchSettingsCopyWith<T,$Res> implements $SearchSettingsCopyWith<T, $Res> {
  factory _$SearchSettingsCopyWith(_SearchSettings<T> value, $Res Function(_SearchSettings<T>) _then) = __$SearchSettingsCopyWithImpl;
@override @useResult
$Res call({
 double Function(WoFormQuery query, T value) searchScore, Future<Iterable<T>> Function(WoFormQuery)? loadAvailibleData, Iterable<T>? Function()? onEndReached
});




}
/// @nodoc
class __$SearchSettingsCopyWithImpl<T,$Res>
    implements _$SearchSettingsCopyWith<T, $Res> {
  __$SearchSettingsCopyWithImpl(this._self, this._then);

  final _SearchSettings<T> _self;
  final $Res Function(_SearchSettings<T>) _then;

/// Create a copy of SearchSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchScore = null,Object? loadAvailibleData = freezed,Object? onEndReached = freezed,}) {
  return _then(_SearchSettings<T>(
searchScore: null == searchScore ? _self.searchScore : searchScore // ignore: cast_nullable_to_non_nullable
as double Function(WoFormQuery query, T value),loadAvailibleData: freezed == loadAvailibleData ? _self.loadAvailibleData : loadAvailibleData // ignore: cast_nullable_to_non_nullable
as Future<Iterable<T>> Function(WoFormQuery)?,onEndReached: freezed == onEndReached ? _self.onEndReached : onEndReached // ignore: cast_nullable_to_non_nullable
as Iterable<T>? Function()?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Condition _$ConditionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'value':
          return ConditionValue.fromJson(
            json
          );
                case 'and':
          return ConditionAnd.fromJson(
            json
          );
                case 'or':
          return ConditionOr.fromJson(
            json
          );
                case 'not':
          return ConditionNot.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Condition',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Condition {



  /// Serializes this Condition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Condition);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Condition()';
}


}

/// @nodoc
class $ConditionCopyWith<$Res>  {
$ConditionCopyWith(Condition _, $Res Function(Condition) __);
}



/// @nodoc
@JsonSerializable()

class ConditionValue extends Condition {
   ConditionValue({required this.path, this.isEqualTo, this.isNotEqualTo, this.isNull, this.isFocused, this.matchesRegex, final  String? $type}): assert(    () {  final operators = [    isEqualTo,    isNotEqualTo,    isNull,    isFocused,    matchesRegex,  ];  final operatorsUsed = operators.where((e) => e != null).length;  return operatorsUsed == 1; }(), 'Exactly one operator must be specified'),$type = $type ?? 'value',super._();
  factory ConditionValue.fromJson(Map<String, dynamic> json) => _$ConditionValueFromJson(json);

 final  String path;
 final  Object? isEqualTo;
 final  Object? isNotEqualTo;
/// The value is null even if the path is not present in the list of paths.
 final  bool? isNull;
 final  bool? isFocused;
/// If the value at path is not a string, the condition cannot be met.
 final  String? matchesRegex;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionValueCopyWith<ConditionValue> get copyWith => _$ConditionValueCopyWithImpl<ConditionValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionValue&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.isEqualTo, isEqualTo)&&const DeepCollectionEquality().equals(other.isNotEqualTo, isNotEqualTo)&&(identical(other.isNull, isNull) || other.isNull == isNull)&&(identical(other.isFocused, isFocused) || other.isFocused == isFocused)&&(identical(other.matchesRegex, matchesRegex) || other.matchesRegex == matchesRegex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(isEqualTo),const DeepCollectionEquality().hash(isNotEqualTo),isNull,isFocused,matchesRegex);

@override
String toString() {
  return 'Condition.value(path: $path, isEqualTo: $isEqualTo, isNotEqualTo: $isNotEqualTo, isNull: $isNull, isFocused: $isFocused, matchesRegex: $matchesRegex)';
}


}

/// @nodoc
abstract mixin class $ConditionValueCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory $ConditionValueCopyWith(ConditionValue value, $Res Function(ConditionValue) _then) = _$ConditionValueCopyWithImpl;
@useResult
$Res call({
 String path, Object? isEqualTo, Object? isNotEqualTo, bool? isNull, bool? isFocused, String? matchesRegex
});




}
/// @nodoc
class _$ConditionValueCopyWithImpl<$Res>
    implements $ConditionValueCopyWith<$Res> {
  _$ConditionValueCopyWithImpl(this._self, this._then);

  final ConditionValue _self;
  final $Res Function(ConditionValue) _then;

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,Object? isEqualTo = freezed,Object? isNotEqualTo = freezed,Object? isNull = freezed,Object? isFocused = freezed,Object? matchesRegex = freezed,}) {
  return _then(ConditionValue(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,isEqualTo: freezed == isEqualTo ? _self.isEqualTo : isEqualTo ,isNotEqualTo: freezed == isNotEqualTo ? _self.isNotEqualTo : isNotEqualTo ,isNull: freezed == isNull ? _self.isNull : isNull // ignore: cast_nullable_to_non_nullable
as bool?,isFocused: freezed == isFocused ? _self.isFocused : isFocused // ignore: cast_nullable_to_non_nullable
as bool?,matchesRegex: freezed == matchesRegex ? _self.matchesRegex : matchesRegex // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ConditionAnd extends Condition {
  const ConditionAnd(final  List<Condition> conditions, {final  String? $type}): _conditions = conditions,$type = $type ?? 'and',super._();
  factory ConditionAnd.fromJson(Map<String, dynamic> json) => _$ConditionAndFromJson(json);

 final  List<Condition> _conditions;
 List<Condition> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionAndCopyWith<ConditionAnd> get copyWith => _$ConditionAndCopyWithImpl<ConditionAnd>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionAndToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionAnd&&const DeepCollectionEquality().equals(other._conditions, _conditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_conditions));

@override
String toString() {
  return 'Condition.and(conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class $ConditionAndCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory $ConditionAndCopyWith(ConditionAnd value, $Res Function(ConditionAnd) _then) = _$ConditionAndCopyWithImpl;
@useResult
$Res call({
 List<Condition> conditions
});




}
/// @nodoc
class _$ConditionAndCopyWithImpl<$Res>
    implements $ConditionAndCopyWith<$Res> {
  _$ConditionAndCopyWithImpl(this._self, this._then);

  final ConditionAnd _self;
  final $Res Function(ConditionAnd) _then;

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conditions = null,}) {
  return _then(ConditionAnd(
null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<Condition>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ConditionOr extends Condition {
  const ConditionOr(final  List<Condition> conditions, {final  String? $type}): _conditions = conditions,$type = $type ?? 'or',super._();
  factory ConditionOr.fromJson(Map<String, dynamic> json) => _$ConditionOrFromJson(json);

 final  List<Condition> _conditions;
 List<Condition> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionOrCopyWith<ConditionOr> get copyWith => _$ConditionOrCopyWithImpl<ConditionOr>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionOrToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionOr&&const DeepCollectionEquality().equals(other._conditions, _conditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_conditions));

@override
String toString() {
  return 'Condition.or(conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class $ConditionOrCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory $ConditionOrCopyWith(ConditionOr value, $Res Function(ConditionOr) _then) = _$ConditionOrCopyWithImpl;
@useResult
$Res call({
 List<Condition> conditions
});




}
/// @nodoc
class _$ConditionOrCopyWithImpl<$Res>
    implements $ConditionOrCopyWith<$Res> {
  _$ConditionOrCopyWithImpl(this._self, this._then);

  final ConditionOr _self;
  final $Res Function(ConditionOr) _then;

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conditions = null,}) {
  return _then(ConditionOr(
null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<Condition>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ConditionNot extends Condition {
  const ConditionNot(this.condition, {final  String? $type}): $type = $type ?? 'not',super._();
  factory ConditionNot.fromJson(Map<String, dynamic> json) => _$ConditionNotFromJson(json);

 final  Condition condition;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionNotCopyWith<ConditionNot> get copyWith => _$ConditionNotCopyWithImpl<ConditionNot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionNotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionNot&&(identical(other.condition, condition) || other.condition == condition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,condition);

@override
String toString() {
  return 'Condition.not(condition: $condition)';
}


}

/// @nodoc
abstract mixin class $ConditionNotCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory $ConditionNotCopyWith(ConditionNot value, $Res Function(ConditionNot) _then) = _$ConditionNotCopyWithImpl;
@useResult
$Res call({
 Condition condition
});


$ConditionCopyWith<$Res> get condition;

}
/// @nodoc
class _$ConditionNotCopyWithImpl<$Res>
    implements $ConditionNotCopyWith<$Res> {
  _$ConditionNotCopyWithImpl(this._self, this._then);

  final ConditionNot _self;
  final $Res Function(ConditionNot) _then;

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? condition = null,}) {
  return _then(ConditionNot(
null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition,
  ));
}

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionCopyWith<$Res> get condition {
  
  return $ConditionCopyWith<$Res>(_self.condition, (value) {
    return _then(_self.copyWith(condition: value));
  });
}
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'value':
      return ConditionValue.fromJson(json);
    case 'and':
      return ConditionAnd.fromJson(json);
    case 'or':
      return ConditionOr.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Condition',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Condition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, Object? isEqualTo, Object? isNotEqualTo)
        value,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        and,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)? or,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionValue value) value,
    required TResult Function(ConditionAnd value) and,
    required TResult Function(ConditionOr value) or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionValue value)? value,
    TResult? Function(ConditionAnd value)? and,
    TResult? Function(ConditionOr value)? or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionValue value)? value,
    TResult Function(ConditionAnd value)? and,
    TResult Function(ConditionOr value)? or,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Condition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConditionValueImplCopyWith<$Res> {
  factory _$$ConditionValueImplCopyWith(_$ConditionValueImpl value,
          $Res Function(_$ConditionValueImpl) then) =
      __$$ConditionValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path, Object? isEqualTo, Object? isNotEqualTo});
}

/// @nodoc
class __$$ConditionValueImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionValueImpl>
    implements _$$ConditionValueImplCopyWith<$Res> {
  __$$ConditionValueImplCopyWithImpl(
      _$ConditionValueImpl _value, $Res Function(_$ConditionValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? isEqualTo = freezed,
    Object? isNotEqualTo = freezed,
  }) {
    return _then(_$ConditionValueImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      isEqualTo: freezed == isEqualTo ? _value.isEqualTo : isEqualTo,
      isNotEqualTo:
          freezed == isNotEqualTo ? _value.isNotEqualTo : isNotEqualTo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionValueImpl extends ConditionValue {
  _$ConditionValueImpl(
      {required this.path,
      this.isEqualTo,
      this.isNotEqualTo,
      final String? $type})
      : assert(() {
          final operators = [
            isEqualTo,
            isNotEqualTo,
          ];
          final operatorsUsed = operators.where((e) => e != null).length;
          return operatorsUsed == 1;
        }(), 'Exactly one operator must be specified'),
        $type = $type ?? 'value',
        super._();

  factory _$ConditionValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionValueImplFromJson(json);

  @override
  final String path;
  @override
  final Object? isEqualTo;
  @override
  final Object? isNotEqualTo;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Condition.value(path: $path, isEqualTo: $isEqualTo, isNotEqualTo: $isNotEqualTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionValueImpl &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other.isEqualTo, isEqualTo) &&
            const DeepCollectionEquality()
                .equals(other.isNotEqualTo, isNotEqualTo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      const DeepCollectionEquality().hash(isEqualTo),
      const DeepCollectionEquality().hash(isNotEqualTo));

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionValueImplCopyWith<_$ConditionValueImpl> get copyWith =>
      __$$ConditionValueImplCopyWithImpl<_$ConditionValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, Object? isEqualTo, Object? isNotEqualTo)
        value,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        and,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        or,
  }) {
    return value(path, isEqualTo, isNotEqualTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        or,
  }) {
    return value?.call(path, isEqualTo, isNotEqualTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)? or,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(path, isEqualTo, isNotEqualTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionValue value) value,
    required TResult Function(ConditionAnd value) and,
    required TResult Function(ConditionOr value) or,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionValue value)? value,
    TResult? Function(ConditionAnd value)? and,
    TResult? Function(ConditionOr value)? or,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionValue value)? value,
    TResult Function(ConditionAnd value)? and,
    TResult Function(ConditionOr value)? or,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionValueImplToJson(
      this,
    );
  }
}

abstract class ConditionValue extends Condition {
  factory ConditionValue(
      {required final String path,
      final Object? isEqualTo,
      final Object? isNotEqualTo}) = _$ConditionValueImpl;
  ConditionValue._() : super._();

  factory ConditionValue.fromJson(Map<String, dynamic> json) =
      _$ConditionValueImpl.fromJson;

  String get path;
  Object? get isEqualTo;
  Object? get isNotEqualTo;

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionValueImplCopyWith<_$ConditionValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConditionAndImplCopyWith<$Res> {
  factory _$$ConditionAndImplCopyWith(
          _$ConditionAndImpl value, $Res Function(_$ConditionAndImpl) then) =
      __$$ConditionAndImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ConditionsListConverter() List<Condition> conditions});
}

/// @nodoc
class __$$ConditionAndImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionAndImpl>
    implements _$$ConditionAndImplCopyWith<$Res> {
  __$$ConditionAndImplCopyWithImpl(
      _$ConditionAndImpl _value, $Res Function(_$ConditionAndImpl) _then)
      : super(_value, _then);

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = null,
  }) {
    return _then(_$ConditionAndImpl(
      null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionAndImpl extends ConditionAnd {
  const _$ConditionAndImpl(
      @ConditionsListConverter() final List<Condition> conditions,
      {final String? $type})
      : _conditions = conditions,
        $type = $type ?? 'and',
        super._();

  factory _$ConditionAndImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionAndImplFromJson(json);

  final List<Condition> _conditions;
  @override
  @ConditionsListConverter()
  List<Condition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Condition.and(conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionAndImpl &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionAndImplCopyWith<_$ConditionAndImpl> get copyWith =>
      __$$ConditionAndImplCopyWithImpl<_$ConditionAndImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, Object? isEqualTo, Object? isNotEqualTo)
        value,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        and,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        or,
  }) {
    return and(conditions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        or,
  }) {
    return and?.call(conditions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)? or,
    required TResult orElse(),
  }) {
    if (and != null) {
      return and(conditions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionValue value) value,
    required TResult Function(ConditionAnd value) and,
    required TResult Function(ConditionOr value) or,
  }) {
    return and(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionValue value)? value,
    TResult? Function(ConditionAnd value)? and,
    TResult? Function(ConditionOr value)? or,
  }) {
    return and?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionValue value)? value,
    TResult Function(ConditionAnd value)? and,
    TResult Function(ConditionOr value)? or,
    required TResult orElse(),
  }) {
    if (and != null) {
      return and(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionAndImplToJson(
      this,
    );
  }
}

abstract class ConditionAnd extends Condition {
  const factory ConditionAnd(
          @ConditionsListConverter() final List<Condition> conditions) =
      _$ConditionAndImpl;
  const ConditionAnd._() : super._();

  factory ConditionAnd.fromJson(Map<String, dynamic> json) =
      _$ConditionAndImpl.fromJson;

  @ConditionsListConverter()
  List<Condition> get conditions;

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionAndImplCopyWith<_$ConditionAndImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConditionOrImplCopyWith<$Res> {
  factory _$$ConditionOrImplCopyWith(
          _$ConditionOrImpl value, $Res Function(_$ConditionOrImpl) then) =
      __$$ConditionOrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@ConditionsListConverter() List<Condition> conditions});
}

/// @nodoc
class __$$ConditionOrImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionOrImpl>
    implements _$$ConditionOrImplCopyWith<$Res> {
  __$$ConditionOrImplCopyWithImpl(
      _$ConditionOrImpl _value, $Res Function(_$ConditionOrImpl) _then)
      : super(_value, _then);

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = null,
  }) {
    return _then(_$ConditionOrImpl(
      null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionOrImpl extends ConditionOr {
  const _$ConditionOrImpl(
      @ConditionsListConverter() final List<Condition> conditions,
      {final String? $type})
      : _conditions = conditions,
        $type = $type ?? 'or',
        super._();

  factory _$ConditionOrImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionOrImplFromJson(json);

  final List<Condition> _conditions;
  @override
  @ConditionsListConverter()
  List<Condition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Condition.or(conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionOrImpl &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionOrImplCopyWith<_$ConditionOrImpl> get copyWith =>
      __$$ConditionOrImplCopyWithImpl<_$ConditionOrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, Object? isEqualTo, Object? isNotEqualTo)
        value,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        and,
    required TResult Function(
            @ConditionsListConverter() List<Condition> conditions)
        or,
  }) {
    return or(conditions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult? Function(@ConditionsListConverter() List<Condition> conditions)?
        or,
  }) {
    return or?.call(conditions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, Object? isEqualTo, Object? isNotEqualTo)?
        value,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)?
        and,
    TResult Function(@ConditionsListConverter() List<Condition> conditions)? or,
    required TResult orElse(),
  }) {
    if (or != null) {
      return or(conditions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionValue value) value,
    required TResult Function(ConditionAnd value) and,
    required TResult Function(ConditionOr value) or,
  }) {
    return or(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionValue value)? value,
    TResult? Function(ConditionAnd value)? and,
    TResult? Function(ConditionOr value)? or,
  }) {
    return or?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionValue value)? value,
    TResult Function(ConditionAnd value)? and,
    TResult Function(ConditionOr value)? or,
    required TResult orElse(),
  }) {
    if (or != null) {
      return or(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionOrImplToJson(
      this,
    );
  }
}

abstract class ConditionOr extends Condition {
  const factory ConditionOr(
          @ConditionsListConverter() final List<Condition> conditions) =
      _$ConditionOrImpl;
  const ConditionOr._() : super._();

  factory ConditionOr.fromJson(Map<String, dynamic> json) =
      _$ConditionOrImpl.fromJson;

  @ConditionsListConverter()
  List<Condition> get conditions;

  /// Create a copy of Condition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionOrImplCopyWith<_$ConditionOrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

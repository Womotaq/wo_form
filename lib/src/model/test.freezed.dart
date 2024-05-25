// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypedValues<T> _$TypedValuesFromJson<T>(Map<String, dynamic> json) {
  return _TypedValues<T>.fromJson(json);
}

/// @nodoc
mixin _$TypedValues<T> {
  @TypedListConverter<T>()
  List<T?>? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypedValuesCopyWith<T, TypedValues<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypedValuesCopyWith<T, $Res> {
  factory $TypedValuesCopyWith(
          TypedValues<T> value, $Res Function(TypedValues<T>) then) =
      _$TypedValuesCopyWithImpl<T, $Res, TypedValues<T>>;
  @useResult
  $Res call({@TypedListConverter<T>() List<T?>? values});
}

/// @nodoc
class _$TypedValuesCopyWithImpl<T, $Res, $Val extends TypedValues<T>>
    implements $TypedValuesCopyWith<T, $Res> {
  _$TypedValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypedValuesImplCopyWith<T, $Res>
    implements $TypedValuesCopyWith<T, $Res> {
  factory _$$TypedValuesImplCopyWith(_$TypedValuesImpl<T> value,
          $Res Function(_$TypedValuesImpl<T>) then) =
      __$$TypedValuesImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@TypedListConverter<T>() List<T?>? values});
}

/// @nodoc
class __$$TypedValuesImplCopyWithImpl<T, $Res>
    extends _$TypedValuesCopyWithImpl<T, $Res, _$TypedValuesImpl<T>>
    implements _$$TypedValuesImplCopyWith<T, $Res> {
  __$$TypedValuesImplCopyWithImpl(
      _$TypedValuesImpl<T> _value, $Res Function(_$TypedValuesImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_$TypedValuesImpl<T>(
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypedValuesImpl<T> extends _TypedValues<T> {
  const _$TypedValuesImpl({@TypedListConverter<T>() final List<T?>? values})
      : _values = values,
        super._();

  factory _$TypedValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypedValuesImplFromJson(json);

  final List<T?>? _values;
  @override
  @TypedListConverter<T>()
  List<T?>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TypedValues<$T>(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypedValuesImpl<T> &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypedValuesImplCopyWith<T, _$TypedValuesImpl<T>> get copyWith =>
      __$$TypedValuesImplCopyWithImpl<T, _$TypedValuesImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypedValuesImplToJson<T>(
      this,
    );
  }
}

abstract class _TypedValues<T> extends TypedValues<T> {
  const factory _TypedValues(
      {@TypedListConverter<T>() final List<T?>? values}) = _$TypedValuesImpl<T>;
  const _TypedValues._() : super._();

  factory _TypedValues.fromJson(Map<String, dynamic> json) =
      _$TypedValuesImpl<T>.fromJson;

  @override
  @TypedListConverter<T>()
  List<T?>? get values;
  @override
  @JsonKey(ignore: true)
  _$$TypedValuesImplCopyWith<T, _$TypedValuesImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

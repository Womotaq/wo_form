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

/// @nodoc
mixin _$TypedValues<T> {
  List<T> get values => throw _privateConstructorUsedError;
  SelectFieldSettings<T>? get fieldSettings =>
      throw _privateConstructorUsedError;

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
  $Res call({List<T> values, SelectFieldSettings<T>? fieldSettings});

  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings;
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
    Object? values = null,
    Object? fieldSettings = freezed,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      fieldSettings: freezed == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings<T>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings {
    if (_value.fieldSettings == null) {
      return null;
    }

    return $SelectFieldSettingsCopyWith<T, $Res>(_value.fieldSettings!,
        (value) {
      return _then(_value.copyWith(fieldSettings: value) as $Val);
    });
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
  $Res call({List<T> values, SelectFieldSettings<T>? fieldSettings});

  @override
  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings;
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
    Object? values = null,
    Object? fieldSettings = freezed,
  }) {
    return _then(_$TypedValuesImpl<T>(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      fieldSettings: freezed == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings<T>?,
    ));
  }
}

/// @nodoc

class _$TypedValuesImpl<T> extends _TypedValues<T> {
  const _$TypedValuesImpl({final List<T> values = const [], this.fieldSettings})
      : _values = values,
        super._();

  final List<T> _values;
  @override
  @JsonKey()
  List<T> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final SelectFieldSettings<T>? fieldSettings;

  @override
  String toString() {
    return 'TypedValues<$T>(values: $values, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypedValuesImpl<T> &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_values), fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypedValuesImplCopyWith<T, _$TypedValuesImpl<T>> get copyWith =>
      __$$TypedValuesImplCopyWithImpl<T, _$TypedValuesImpl<T>>(
          this, _$identity);
}

abstract class _TypedValues<T> extends TypedValues<T> {
  const factory _TypedValues(
      {final List<T> values,
      final SelectFieldSettings<T>? fieldSettings}) = _$TypedValuesImpl<T>;
  const _TypedValues._() : super._();

  @override
  List<T> get values;
  @override
  SelectFieldSettings<T>? get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$TypedValuesImplCopyWith<T, _$TypedValuesImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

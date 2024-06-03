// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WoFormInputError {
  String get inputId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputId) empty,
    required TResult Function(String inputId) invalid,
    required TResult Function(String inputId) maxBound,
    required TResult Function(String inputId) minBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inputId)? empty,
    TResult? Function(String inputId)? invalid,
    TResult? Function(String inputId)? maxBound,
    TResult? Function(String inputId)? minBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputId)? empty,
    TResult Function(String inputId)? invalid,
    TResult Function(String inputId)? maxBound,
    TResult Function(String inputId)? minBound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInputError value) empty,
    required TResult Function(InvalidInputError value) invalid,
    required TResult Function(MaxBoundInputError value) maxBound,
    required TResult Function(MinBoundInputError value) minBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInputError value)? empty,
    TResult? Function(InvalidInputError value)? invalid,
    TResult? Function(MaxBoundInputError value)? maxBound,
    TResult? Function(MinBoundInputError value)? minBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInputError value)? empty,
    TResult Function(InvalidInputError value)? invalid,
    TResult Function(MaxBoundInputError value)? maxBound,
    TResult Function(MinBoundInputError value)? minBound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WoFormInputErrorCopyWith<WoFormInputError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormInputErrorCopyWith<$Res> {
  factory $WoFormInputErrorCopyWith(
          WoFormInputError value, $Res Function(WoFormInputError) then) =
      _$WoFormInputErrorCopyWithImpl<$Res, WoFormInputError>;
  @useResult
  $Res call({String inputId});
}

/// @nodoc
class _$WoFormInputErrorCopyWithImpl<$Res, $Val extends WoFormInputError>
    implements $WoFormInputErrorCopyWith<$Res> {
  _$WoFormInputErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputId = null,
  }) {
    return _then(_value.copyWith(
      inputId: null == inputId
          ? _value.inputId
          : inputId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyInputErrorImplCopyWith<$Res>
    implements $WoFormInputErrorCopyWith<$Res> {
  factory _$$EmptyInputErrorImplCopyWith(_$EmptyInputErrorImpl value,
          $Res Function(_$EmptyInputErrorImpl) then) =
      __$$EmptyInputErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inputId});
}

/// @nodoc
class __$$EmptyInputErrorImplCopyWithImpl<$Res>
    extends _$WoFormInputErrorCopyWithImpl<$Res, _$EmptyInputErrorImpl>
    implements _$$EmptyInputErrorImplCopyWith<$Res> {
  __$$EmptyInputErrorImplCopyWithImpl(
      _$EmptyInputErrorImpl _value, $Res Function(_$EmptyInputErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputId = null,
  }) {
    return _then(_$EmptyInputErrorImpl(
      inputId: null == inputId
          ? _value.inputId
          : inputId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyInputErrorImpl implements EmptyInputError {
  const _$EmptyInputErrorImpl({required this.inputId});

  @override
  final String inputId;

  @override
  String toString() {
    return 'WoFormInputError.empty(inputId: $inputId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyInputErrorImpl &&
            (identical(other.inputId, inputId) || other.inputId == inputId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyInputErrorImplCopyWith<_$EmptyInputErrorImpl> get copyWith =>
      __$$EmptyInputErrorImplCopyWithImpl<_$EmptyInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputId) empty,
    required TResult Function(String inputId) invalid,
    required TResult Function(String inputId) maxBound,
    required TResult Function(String inputId) minBound,
  }) {
    return empty(inputId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inputId)? empty,
    TResult? Function(String inputId)? invalid,
    TResult? Function(String inputId)? maxBound,
    TResult? Function(String inputId)? minBound,
  }) {
    return empty?.call(inputId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputId)? empty,
    TResult Function(String inputId)? invalid,
    TResult Function(String inputId)? maxBound,
    TResult Function(String inputId)? minBound,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(inputId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInputError value) empty,
    required TResult Function(InvalidInputError value) invalid,
    required TResult Function(MaxBoundInputError value) maxBound,
    required TResult Function(MinBoundInputError value) minBound,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInputError value)? empty,
    TResult? Function(InvalidInputError value)? invalid,
    TResult? Function(MaxBoundInputError value)? maxBound,
    TResult? Function(MinBoundInputError value)? minBound,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInputError value)? empty,
    TResult Function(InvalidInputError value)? invalid,
    TResult Function(MaxBoundInputError value)? maxBound,
    TResult Function(MinBoundInputError value)? minBound,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyInputError implements WoFormInputError {
  const factory EmptyInputError({required final String inputId}) =
      _$EmptyInputErrorImpl;

  @override
  String get inputId;
  @override
  @JsonKey(ignore: true)
  _$$EmptyInputErrorImplCopyWith<_$EmptyInputErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidInputErrorImplCopyWith<$Res>
    implements $WoFormInputErrorCopyWith<$Res> {
  factory _$$InvalidInputErrorImplCopyWith(_$InvalidInputErrorImpl value,
          $Res Function(_$InvalidInputErrorImpl) then) =
      __$$InvalidInputErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inputId});
}

/// @nodoc
class __$$InvalidInputErrorImplCopyWithImpl<$Res>
    extends _$WoFormInputErrorCopyWithImpl<$Res, _$InvalidInputErrorImpl>
    implements _$$InvalidInputErrorImplCopyWith<$Res> {
  __$$InvalidInputErrorImplCopyWithImpl(_$InvalidInputErrorImpl _value,
      $Res Function(_$InvalidInputErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputId = null,
  }) {
    return _then(_$InvalidInputErrorImpl(
      inputId: null == inputId
          ? _value.inputId
          : inputId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidInputErrorImpl implements InvalidInputError {
  const _$InvalidInputErrorImpl({required this.inputId});

  @override
  final String inputId;

  @override
  String toString() {
    return 'WoFormInputError.invalid(inputId: $inputId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidInputErrorImpl &&
            (identical(other.inputId, inputId) || other.inputId == inputId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidInputErrorImplCopyWith<_$InvalidInputErrorImpl> get copyWith =>
      __$$InvalidInputErrorImplCopyWithImpl<_$InvalidInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputId) empty,
    required TResult Function(String inputId) invalid,
    required TResult Function(String inputId) maxBound,
    required TResult Function(String inputId) minBound,
  }) {
    return invalid(inputId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inputId)? empty,
    TResult? Function(String inputId)? invalid,
    TResult? Function(String inputId)? maxBound,
    TResult? Function(String inputId)? minBound,
  }) {
    return invalid?.call(inputId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputId)? empty,
    TResult Function(String inputId)? invalid,
    TResult Function(String inputId)? maxBound,
    TResult Function(String inputId)? minBound,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(inputId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInputError value) empty,
    required TResult Function(InvalidInputError value) invalid,
    required TResult Function(MaxBoundInputError value) maxBound,
    required TResult Function(MinBoundInputError value) minBound,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInputError value)? empty,
    TResult? Function(InvalidInputError value)? invalid,
    TResult? Function(MaxBoundInputError value)? maxBound,
    TResult? Function(MinBoundInputError value)? minBound,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInputError value)? empty,
    TResult Function(InvalidInputError value)? invalid,
    TResult Function(MaxBoundInputError value)? maxBound,
    TResult Function(MinBoundInputError value)? minBound,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidInputError implements WoFormInputError {
  const factory InvalidInputError({required final String inputId}) =
      _$InvalidInputErrorImpl;

  @override
  String get inputId;
  @override
  @JsonKey(ignore: true)
  _$$InvalidInputErrorImplCopyWith<_$InvalidInputErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaxBoundInputErrorImplCopyWith<$Res>
    implements $WoFormInputErrorCopyWith<$Res> {
  factory _$$MaxBoundInputErrorImplCopyWith(_$MaxBoundInputErrorImpl value,
          $Res Function(_$MaxBoundInputErrorImpl) then) =
      __$$MaxBoundInputErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inputId});
}

/// @nodoc
class __$$MaxBoundInputErrorImplCopyWithImpl<$Res>
    extends _$WoFormInputErrorCopyWithImpl<$Res, _$MaxBoundInputErrorImpl>
    implements _$$MaxBoundInputErrorImplCopyWith<$Res> {
  __$$MaxBoundInputErrorImplCopyWithImpl(_$MaxBoundInputErrorImpl _value,
      $Res Function(_$MaxBoundInputErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputId = null,
  }) {
    return _then(_$MaxBoundInputErrorImpl(
      inputId: null == inputId
          ? _value.inputId
          : inputId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MaxBoundInputErrorImpl implements MaxBoundInputError {
  const _$MaxBoundInputErrorImpl({required this.inputId});

  @override
  final String inputId;

  @override
  String toString() {
    return 'WoFormInputError.maxBound(inputId: $inputId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaxBoundInputErrorImpl &&
            (identical(other.inputId, inputId) || other.inputId == inputId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxBoundInputErrorImplCopyWith<_$MaxBoundInputErrorImpl> get copyWith =>
      __$$MaxBoundInputErrorImplCopyWithImpl<_$MaxBoundInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputId) empty,
    required TResult Function(String inputId) invalid,
    required TResult Function(String inputId) maxBound,
    required TResult Function(String inputId) minBound,
  }) {
    return maxBound(inputId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inputId)? empty,
    TResult? Function(String inputId)? invalid,
    TResult? Function(String inputId)? maxBound,
    TResult? Function(String inputId)? minBound,
  }) {
    return maxBound?.call(inputId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputId)? empty,
    TResult Function(String inputId)? invalid,
    TResult Function(String inputId)? maxBound,
    TResult Function(String inputId)? minBound,
    required TResult orElse(),
  }) {
    if (maxBound != null) {
      return maxBound(inputId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInputError value) empty,
    required TResult Function(InvalidInputError value) invalid,
    required TResult Function(MaxBoundInputError value) maxBound,
    required TResult Function(MinBoundInputError value) minBound,
  }) {
    return maxBound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInputError value)? empty,
    TResult? Function(InvalidInputError value)? invalid,
    TResult? Function(MaxBoundInputError value)? maxBound,
    TResult? Function(MinBoundInputError value)? minBound,
  }) {
    return maxBound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInputError value)? empty,
    TResult Function(InvalidInputError value)? invalid,
    TResult Function(MaxBoundInputError value)? maxBound,
    TResult Function(MinBoundInputError value)? minBound,
    required TResult orElse(),
  }) {
    if (maxBound != null) {
      return maxBound(this);
    }
    return orElse();
  }
}

abstract class MaxBoundInputError implements WoFormInputError {
  const factory MaxBoundInputError({required final String inputId}) =
      _$MaxBoundInputErrorImpl;

  @override
  String get inputId;
  @override
  @JsonKey(ignore: true)
  _$$MaxBoundInputErrorImplCopyWith<_$MaxBoundInputErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinBoundInputErrorImplCopyWith<$Res>
    implements $WoFormInputErrorCopyWith<$Res> {
  factory _$$MinBoundInputErrorImplCopyWith(_$MinBoundInputErrorImpl value,
          $Res Function(_$MinBoundInputErrorImpl) then) =
      __$$MinBoundInputErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String inputId});
}

/// @nodoc
class __$$MinBoundInputErrorImplCopyWithImpl<$Res>
    extends _$WoFormInputErrorCopyWithImpl<$Res, _$MinBoundInputErrorImpl>
    implements _$$MinBoundInputErrorImplCopyWith<$Res> {
  __$$MinBoundInputErrorImplCopyWithImpl(_$MinBoundInputErrorImpl _value,
      $Res Function(_$MinBoundInputErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputId = null,
  }) {
    return _then(_$MinBoundInputErrorImpl(
      inputId: null == inputId
          ? _value.inputId
          : inputId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MinBoundInputErrorImpl implements MinBoundInputError {
  const _$MinBoundInputErrorImpl({required this.inputId});

  @override
  final String inputId;

  @override
  String toString() {
    return 'WoFormInputError.minBound(inputId: $inputId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinBoundInputErrorImpl &&
            (identical(other.inputId, inputId) || other.inputId == inputId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinBoundInputErrorImplCopyWith<_$MinBoundInputErrorImpl> get copyWith =>
      __$$MinBoundInputErrorImplCopyWithImpl<_$MinBoundInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inputId) empty,
    required TResult Function(String inputId) invalid,
    required TResult Function(String inputId) maxBound,
    required TResult Function(String inputId) minBound,
  }) {
    return minBound(inputId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inputId)? empty,
    TResult? Function(String inputId)? invalid,
    TResult? Function(String inputId)? maxBound,
    TResult? Function(String inputId)? minBound,
  }) {
    return minBound?.call(inputId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inputId)? empty,
    TResult Function(String inputId)? invalid,
    TResult Function(String inputId)? maxBound,
    TResult Function(String inputId)? minBound,
    required TResult orElse(),
  }) {
    if (minBound != null) {
      return minBound(inputId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInputError value) empty,
    required TResult Function(InvalidInputError value) invalid,
    required TResult Function(MaxBoundInputError value) maxBound,
    required TResult Function(MinBoundInputError value) minBound,
  }) {
    return minBound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInputError value)? empty,
    TResult? Function(InvalidInputError value)? invalid,
    TResult? Function(MaxBoundInputError value)? maxBound,
    TResult? Function(MinBoundInputError value)? minBound,
  }) {
    return minBound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInputError value)? empty,
    TResult Function(InvalidInputError value)? invalid,
    TResult Function(MaxBoundInputError value)? maxBound,
    TResult Function(MinBoundInputError value)? minBound,
    required TResult orElse(),
  }) {
    if (minBound != null) {
      return minBound(this);
    }
    return orElse();
  }
}

abstract class MinBoundInputError implements WoFormInputError {
  const factory MinBoundInputError({required final String inputId}) =
      _$MinBoundInputErrorImpl;

  @override
  String get inputId;
  @override
  @JsonKey(ignore: true)
  _$$MinBoundInputErrorImplCopyWith<_$MinBoundInputErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WoFormInput _$WoFormInputFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'boolean':
      return BooleanInput.fromJson(json);
    case 'num':
      return NumInput.fromJson(json);
    case 'selectString':
      return SelectStringInput.fromJson(json);
    case 'string':
      return StringInput.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormInput',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormInput {
  String get id => throw _privateConstructorUsedError;
  Object? get defaultValue => throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  Object get fieldSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WoFormInputCopyWith<WoFormInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormInputCopyWith<$Res> {
  factory $WoFormInputCopyWith(
          WoFormInput value, $Res Function(WoFormInput) then) =
      _$WoFormInputCopyWithImpl<$Res, WoFormInput>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$WoFormInputCopyWithImpl<$Res, $Val extends WoFormInput>
    implements $WoFormInputCopyWith<$Res> {
  _$WoFormInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooleanInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$BooleanInputImplCopyWith(
          _$BooleanInputImpl value, $Res Function(_$BooleanInputImpl) then) =
      __$$BooleanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool? defaultValue,
      bool isRequired,
      @JsonKey(toJson: BooleanFieldSettings.staticToJson)
      BooleanFieldSettings fieldSettings});

  $BooleanFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$BooleanInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$BooleanInputImpl>
    implements _$$BooleanInputImplCopyWith<$Res> {
  __$$BooleanInputImplCopyWithImpl(
      _$BooleanInputImpl _value, $Res Function(_$BooleanInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? defaultValue = freezed,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$BooleanInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as BooleanFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BooleanFieldSettingsCopyWith<$Res> get fieldSettings {
    return $BooleanFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanInputImpl extends BooleanInput {
  const _$BooleanInputImpl(
      {required this.id,
      this.defaultValue,
      this.isRequired = false,
      @JsonKey(toJson: BooleanFieldSettings.staticToJson)
      this.fieldSettings = const BooleanFieldSettings(),
      final String? $type})
      : $type = $type ?? 'boolean',
        super._();

  factory _$BooleanInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanInputImplFromJson(json);

  @override
  final String id;
  @override
  final bool? defaultValue;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  final BooleanFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.boolean(id: $id, defaultValue: $defaultValue, isRequired: $isRequired, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, defaultValue, isRequired, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanInputImplCopyWith<_$BooleanInputImpl> get copyWith =>
      __$$BooleanInputImplCopyWithImpl<_$BooleanInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return boolean(id, defaultValue, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return boolean?.call(id, defaultValue, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(id, defaultValue, isRequired, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanInputImplToJson(
      this,
    );
  }
}

abstract class BooleanInput extends WoFormInput {
  const factory BooleanInput(
      {required final String id,
      final bool? defaultValue,
      final bool isRequired,
      @JsonKey(toJson: BooleanFieldSettings.staticToJson)
      final BooleanFieldSettings fieldSettings}) = _$BooleanInputImpl;
  const BooleanInput._() : super._();

  factory BooleanInput.fromJson(Map<String, dynamic> json) =
      _$BooleanInputImpl.fromJson;

  @override
  String get id;
  @override
  bool? get defaultValue;
  bool get isRequired;
  @override
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  BooleanFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$BooleanInputImplCopyWith<_$BooleanInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$NumInputImplCopyWith(
          _$NumInputImpl value, $Res Function(_$NumInputImpl) then) =
      __$$NumInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      num? defaultValue,
      bool isRequired,
      NumFieldSettings fieldSettings});

  $NumFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$NumInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$NumInputImpl>
    implements _$$NumInputImplCopyWith<$Res> {
  __$$NumInputImplCopyWithImpl(
      _$NumInputImpl _value, $Res Function(_$NumInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? defaultValue = freezed,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$NumInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as num?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as NumFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NumFieldSettingsCopyWith<$Res> get fieldSettings {
    return $NumFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NumInputImpl extends NumInput {
  const _$NumInputImpl(
      {required this.id,
      this.defaultValue,
      this.isRequired = false,
      this.fieldSettings = const NumFieldSettings(),
      final String? $type})
      : $type = $type ?? 'num',
        super._();

  factory _$NumInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumInputImplFromJson(json);

  @override
  final String id;
  @override
  final num? defaultValue;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final NumFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.num(id: $id, defaultValue: $defaultValue, isRequired: $isRequired, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, defaultValue, isRequired, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumInputImplCopyWith<_$NumInputImpl> get copyWith =>
      __$$NumInputImplCopyWithImpl<_$NumInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return num(id, defaultValue, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return num?.call(id, defaultValue, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(id, defaultValue, isRequired, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return num(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return num?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumInputImplToJson(
      this,
    );
  }
}

abstract class NumInput extends WoFormInput {
  const factory NumInput(
      {required final String id,
      final num? defaultValue,
      final bool isRequired,
      final NumFieldSettings fieldSettings}) = _$NumInputImpl;
  const NumInput._() : super._();

  factory NumInput.fromJson(Map<String, dynamic> json) =
      _$NumInputImpl.fromJson;

  @override
  String get id;
  @override
  num? get defaultValue;
  bool get isRequired;
  @override
  NumFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$NumInputImplCopyWith<_$NumInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectStringInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$SelectStringInputImplCopyWith(_$SelectStringInputImpl value,
          $Res Function(_$SelectStringInputImpl) then) =
      __$$SelectStringInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? maxCount,
      List<String> defaultValue,
      List<String> availibleValues,
      int minCount,
      SelectFieldSettings fieldSettings});

  $SelectFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$SelectStringInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$SelectStringInputImpl>
    implements _$$SelectStringInputImplCopyWith<$Res> {
  __$$SelectStringInputImplCopyWithImpl(_$SelectStringInputImpl _value,
      $Res Function(_$SelectStringInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? defaultValue = null,
    Object? availibleValues = null,
    Object? minCount = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$SelectStringInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultValue: null == defaultValue
          ? _value._defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availibleValues: null == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minCount: null == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<$Res> get fieldSettings {
    return $SelectFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectStringInputImpl extends SelectStringInput {
  const _$SelectStringInputImpl(
      {required this.id,
      required this.maxCount,
      final List<String> defaultValue = const [],
      final List<String> availibleValues = const [],
      this.minCount = 0,
      this.fieldSettings = const SelectFieldSettings(),
      final String? $type})
      : _defaultValue = defaultValue,
        _availibleValues = availibleValues,
        $type = $type ?? 'selectString',
        super._();

  factory _$SelectStringInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectStringInputImplFromJson(json);

  @override
  final String id;
  @override
  final int? maxCount;
  final List<String> _defaultValue;
  @override
  @JsonKey()
  List<String> get defaultValue {
    if (_defaultValue is EqualUnmodifiableListView) return _defaultValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultValue);
  }

  final List<String> _availibleValues;
  @override
  @JsonKey()
  List<String> get availibleValues {
    if (_availibleValues is EqualUnmodifiableListView) return _availibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availibleValues);
  }

  @override
  @JsonKey()
  final int minCount;
  @override
  @JsonKey()
  final SelectFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.selectString(id: $id, maxCount: $maxCount, defaultValue: $defaultValue, availibleValues: $availibleValues, minCount: $minCount, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStringInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            const DeepCollectionEquality()
                .equals(other._defaultValue, _defaultValue) &&
            const DeepCollectionEquality()
                .equals(other._availibleValues, _availibleValues) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      const DeepCollectionEquality().hash(_defaultValue),
      const DeepCollectionEquality().hash(_availibleValues),
      minCount,
      fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectStringInputImplCopyWith<_$SelectStringInputImpl> get copyWith =>
      __$$SelectStringInputImplCopyWithImpl<_$SelectStringInputImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return selectString(
        id, maxCount, defaultValue, availibleValues, minCount, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return selectString?.call(
        id, maxCount, defaultValue, availibleValues, minCount, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (selectString != null) {
      return selectString(
          id, maxCount, defaultValue, availibleValues, minCount, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return selectString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return selectString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (selectString != null) {
      return selectString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectStringInputImplToJson(
      this,
    );
  }
}

abstract class SelectStringInput extends WoFormInput {
  const factory SelectStringInput(
      {required final String id,
      required final int? maxCount,
      final List<String> defaultValue,
      final List<String> availibleValues,
      final int minCount,
      final SelectFieldSettings fieldSettings}) = _$SelectStringInputImpl;
  const SelectStringInput._() : super._();

  factory SelectStringInput.fromJson(Map<String, dynamic> json) =
      _$SelectStringInputImpl.fromJson;

  @override
  String get id;
  int? get maxCount;
  @override
  List<String> get defaultValue;
  List<String> get availibleValues;
  int get minCount;
  @override
  SelectFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$SelectStringInputImplCopyWith<_$SelectStringInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$StringInputImplCopyWith(
          _$StringInputImpl value, $Res Function(_$StringInputImpl) then) =
      __$$StringInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? defaultValue,
      bool isRequired,
      String? regexPattern,
      @JsonKey(toJson: StringFieldSettings.staticToJson)
      StringFieldSettings fieldSettings});

  $StringFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$StringInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$StringInputImpl>
    implements _$$StringInputImplCopyWith<$Res> {
  __$$StringInputImplCopyWithImpl(
      _$StringInputImpl _value, $Res Function(_$StringInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? defaultValue = freezed,
    Object? isRequired = null,
    Object? regexPattern = freezed,
    Object? fieldSettings = null,
  }) {
    return _then(_$StringInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      regexPattern: freezed == regexPattern
          ? _value.regexPattern
          : regexPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as StringFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StringFieldSettingsCopyWith<$Res> get fieldSettings {
    return $StringFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$StringInputImpl extends StringInput {
  const _$StringInputImpl(
      {required this.id,
      this.defaultValue,
      this.isRequired = false,
      this.regexPattern,
      @JsonKey(toJson: StringFieldSettings.staticToJson)
      this.fieldSettings = const StringFieldSettings(),
      final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$StringInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringInputImplFromJson(json);

  @override
  final String id;
  @override
  final String? defaultValue;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  final String? regexPattern;
  @override
  @JsonKey(toJson: StringFieldSettings.staticToJson)
  final StringFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.string(id: $id, defaultValue: $defaultValue, isRequired: $isRequired, regexPattern: $regexPattern, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.regexPattern, regexPattern) ||
                other.regexPattern == regexPattern) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, defaultValue, isRequired, regexPattern, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringInputImplCopyWith<_$StringInputImpl> get copyWith =>
      __$$StringInputImplCopyWithImpl<_$StringInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return string(id, defaultValue, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return string?.call(
        id, defaultValue, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? defaultValue,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, num? defaultValue, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String> defaultValue,
            List<String> availibleValues,
            int minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? defaultValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(id, defaultValue, isRequired, regexPattern, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringInputImplToJson(
      this,
    );
  }
}

abstract class StringInput extends WoFormInput {
  const factory StringInput(
      {required final String id,
      final String? defaultValue,
      final bool isRequired,
      final String? regexPattern,
      @JsonKey(toJson: StringFieldSettings.staticToJson)
      final StringFieldSettings fieldSettings}) = _$StringInputImpl;
  const StringInput._() : super._();

  factory StringInput.fromJson(Map<String, dynamic> json) =
      _$StringInputImpl.fromJson;

  @override
  String get id;
  @override
  String? get defaultValue;
  bool get isRequired;
  String? get regexPattern;
  @override
  @JsonKey(toJson: StringFieldSettings.staticToJson)
  StringFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$StringInputImplCopyWith<_$StringInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectInput<T> {
  String get id => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  int get minCount => throw _privateConstructorUsedError;
  List<T> get defaultValues => throw _privateConstructorUsedError;
  List<T> get availibleValues => throw _privateConstructorUsedError;
  SelectFieldSettings get fieldSettings => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectInputCopyWith<T, SelectInput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectInputCopyWith<T, $Res> {
  factory $SelectInputCopyWith(
          SelectInput<T> value, $Res Function(SelectInput<T>) then) =
      _$SelectInputCopyWithImpl<T, $Res, SelectInput<T>>;
  @useResult
  $Res call(
      {String id,
      int? maxCount,
      int minCount,
      List<T> defaultValues,
      List<T> availibleValues,
      SelectFieldSettings fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  $SelectFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class _$SelectInputCopyWithImpl<T, $Res, $Val extends SelectInput<T>>
    implements $SelectInputCopyWith<T, $Res> {
  _$SelectInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? minCount = null,
    Object? defaultValues = null,
    Object? availibleValues = null,
    Object? fieldSettings = null,
    Object? toJsonT = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minCount: null == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int,
      defaultValues: null == defaultValues
          ? _value.defaultValues
          : defaultValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      availibleValues: null == availibleValues
          ? _value.availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<$Res> get fieldSettings {
    return $SelectFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectInputImplCopyWith<T, $Res>
    implements $SelectInputCopyWith<T, $Res> {
  factory _$$SelectInputImplCopyWith(_$SelectInputImpl<T> value,
          $Res Function(_$SelectInputImpl<T>) then) =
      __$$SelectInputImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? maxCount,
      int minCount,
      List<T> defaultValues,
      List<T> availibleValues,
      SelectFieldSettings fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  @override
  $SelectFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$SelectInputImplCopyWithImpl<T, $Res>
    extends _$SelectInputCopyWithImpl<T, $Res, _$SelectInputImpl<T>>
    implements _$$SelectInputImplCopyWith<T, $Res> {
  __$$SelectInputImplCopyWithImpl(
      _$SelectInputImpl<T> _value, $Res Function(_$SelectInputImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? minCount = null,
    Object? defaultValues = null,
    Object? availibleValues = null,
    Object? fieldSettings = null,
    Object? toJsonT = freezed,
  }) {
    return _then(_$SelectInputImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minCount: null == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int,
      defaultValues: null == defaultValues
          ? _value._defaultValues
          : defaultValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      availibleValues: null == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ));
  }
}

/// @nodoc

class _$SelectInputImpl<T> extends _SelectInput<T> {
  const _$SelectInputImpl(
      {required this.id,
      required this.maxCount,
      this.minCount = 0,
      final List<T> defaultValues = const [],
      final List<T> availibleValues = const [],
      this.fieldSettings = const SelectFieldSettings(),
      @JsonKey(includeToJson: false, includeFromJson: false) this.toJsonT})
      : _defaultValues = defaultValues,
        _availibleValues = availibleValues,
        super._();

  @override
  final String id;
  @override
  final int? maxCount;
  @override
  @JsonKey()
  final int minCount;
  final List<T> _defaultValues;
  @override
  @JsonKey()
  List<T> get defaultValues {
    if (_defaultValues is EqualUnmodifiableListView) return _defaultValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultValues);
  }

  final List<T> _availibleValues;
  @override
  @JsonKey()
  List<T> get availibleValues {
    if (_availibleValues is EqualUnmodifiableListView) return _availibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availibleValues);
  }

  @override
  @JsonKey()
  final SelectFieldSettings fieldSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Object? Function(T)? toJsonT;

  @override
  String toString() {
    return 'SelectInput<$T>(id: $id, maxCount: $maxCount, minCount: $minCount, defaultValues: $defaultValues, availibleValues: $availibleValues, fieldSettings: $fieldSettings, toJsonT: $toJsonT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectInputImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            const DeepCollectionEquality()
                .equals(other._defaultValues, _defaultValues) &&
            const DeepCollectionEquality()
                .equals(other._availibleValues, _availibleValues) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings) &&
            (identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      minCount,
      const DeepCollectionEquality().hash(_defaultValues),
      const DeepCollectionEquality().hash(_availibleValues),
      fieldSettings,
      toJsonT);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      __$$SelectInputImplCopyWithImpl<T, _$SelectInputImpl<T>>(
          this, _$identity);
}

abstract class _SelectInput<T> extends SelectInput<T> {
  const factory _SelectInput(
      {required final String id,
      required final int? maxCount,
      final int minCount,
      final List<T> defaultValues,
      final List<T> availibleValues,
      final SelectFieldSettings fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Object? Function(T)? toJsonT}) = _$SelectInputImpl<T>;
  const _SelectInput._() : super._();

  @override
  String get id;
  @override
  int? get maxCount;
  @override
  int get minCount;
  @override
  List<T> get defaultValues;
  @override
  List<T> get availibleValues;
  @override
  SelectFieldSettings get fieldSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT;
  @override
  @JsonKey(ignore: true)
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

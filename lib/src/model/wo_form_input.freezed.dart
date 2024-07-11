// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_form_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WoFormInputError {
  String get path => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) empty,
    required TResult Function(String path) invalid,
    required TResult Function(String path) maxBound,
    required TResult Function(String path) minBound,
    required TResult Function(String path, String message) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? empty,
    TResult? Function(String path)? invalid,
    TResult? Function(String path)? maxBound,
    TResult? Function(String path)? minBound,
    TResult? Function(String path, String message)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? empty,
    TResult Function(String path)? invalid,
    TResult Function(String path)? maxBound,
    TResult Function(String path)? minBound,
    TResult Function(String path, String message)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInputError value) empty,
    required TResult Function(InvalidInputError value) invalid,
    required TResult Function(MaxBoundInputError value) maxBound,
    required TResult Function(MinBoundInputError value) minBound,
    required TResult Function(CustomInputError value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInputError value)? empty,
    TResult? Function(InvalidInputError value)? invalid,
    TResult? Function(MaxBoundInputError value)? maxBound,
    TResult? Function(MinBoundInputError value)? minBound,
    TResult? Function(CustomInputError value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInputError value)? empty,
    TResult Function(InvalidInputError value)? invalid,
    TResult Function(MaxBoundInputError value)? maxBound,
    TResult Function(MinBoundInputError value)? minBound,
    TResult Function(CustomInputError value)? custom,
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
  $Res call({String path});
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
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
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
  $Res call({String path});
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
    Object? path = null,
  }) {
    return _then(_$EmptyInputErrorImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyInputErrorImpl implements EmptyInputError {
  const _$EmptyInputErrorImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'WoFormInputError.empty(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyInputErrorImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyInputErrorImplCopyWith<_$EmptyInputErrorImpl> get copyWith =>
      __$$EmptyInputErrorImplCopyWithImpl<_$EmptyInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) empty,
    required TResult Function(String path) invalid,
    required TResult Function(String path) maxBound,
    required TResult Function(String path) minBound,
    required TResult Function(String path, String message) custom,
  }) {
    return empty(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? empty,
    TResult? Function(String path)? invalid,
    TResult? Function(String path)? maxBound,
    TResult? Function(String path)? minBound,
    TResult? Function(String path, String message)? custom,
  }) {
    return empty?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? empty,
    TResult Function(String path)? invalid,
    TResult Function(String path)? maxBound,
    TResult Function(String path)? minBound,
    TResult Function(String path, String message)? custom,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(path);
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
    required TResult Function(CustomInputError value) custom,
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
    TResult? Function(CustomInputError value)? custom,
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
    TResult Function(CustomInputError value)? custom,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyInputError implements WoFormInputError {
  const factory EmptyInputError({required final String path}) =
      _$EmptyInputErrorImpl;

  @override
  String get path;
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
  $Res call({String path});
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
    Object? path = null,
  }) {
    return _then(_$InvalidInputErrorImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidInputErrorImpl implements InvalidInputError {
  const _$InvalidInputErrorImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'WoFormInputError.invalid(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidInputErrorImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidInputErrorImplCopyWith<_$InvalidInputErrorImpl> get copyWith =>
      __$$InvalidInputErrorImplCopyWithImpl<_$InvalidInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) empty,
    required TResult Function(String path) invalid,
    required TResult Function(String path) maxBound,
    required TResult Function(String path) minBound,
    required TResult Function(String path, String message) custom,
  }) {
    return invalid(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? empty,
    TResult? Function(String path)? invalid,
    TResult? Function(String path)? maxBound,
    TResult? Function(String path)? minBound,
    TResult? Function(String path, String message)? custom,
  }) {
    return invalid?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? empty,
    TResult Function(String path)? invalid,
    TResult Function(String path)? maxBound,
    TResult Function(String path)? minBound,
    TResult Function(String path, String message)? custom,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(path);
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
    required TResult Function(CustomInputError value) custom,
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
    TResult? Function(CustomInputError value)? custom,
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
    TResult Function(CustomInputError value)? custom,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidInputError implements WoFormInputError {
  const factory InvalidInputError({required final String path}) =
      _$InvalidInputErrorImpl;

  @override
  String get path;
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
  $Res call({String path});
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
    Object? path = null,
  }) {
    return _then(_$MaxBoundInputErrorImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MaxBoundInputErrorImpl implements MaxBoundInputError {
  const _$MaxBoundInputErrorImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'WoFormInputError.maxBound(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaxBoundInputErrorImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxBoundInputErrorImplCopyWith<_$MaxBoundInputErrorImpl> get copyWith =>
      __$$MaxBoundInputErrorImplCopyWithImpl<_$MaxBoundInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) empty,
    required TResult Function(String path) invalid,
    required TResult Function(String path) maxBound,
    required TResult Function(String path) minBound,
    required TResult Function(String path, String message) custom,
  }) {
    return maxBound(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? empty,
    TResult? Function(String path)? invalid,
    TResult? Function(String path)? maxBound,
    TResult? Function(String path)? minBound,
    TResult? Function(String path, String message)? custom,
  }) {
    return maxBound?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? empty,
    TResult Function(String path)? invalid,
    TResult Function(String path)? maxBound,
    TResult Function(String path)? minBound,
    TResult Function(String path, String message)? custom,
    required TResult orElse(),
  }) {
    if (maxBound != null) {
      return maxBound(path);
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
    required TResult Function(CustomInputError value) custom,
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
    TResult? Function(CustomInputError value)? custom,
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
    TResult Function(CustomInputError value)? custom,
    required TResult orElse(),
  }) {
    if (maxBound != null) {
      return maxBound(this);
    }
    return orElse();
  }
}

abstract class MaxBoundInputError implements WoFormInputError {
  const factory MaxBoundInputError({required final String path}) =
      _$MaxBoundInputErrorImpl;

  @override
  String get path;
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
  $Res call({String path});
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
    Object? path = null,
  }) {
    return _then(_$MinBoundInputErrorImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MinBoundInputErrorImpl implements MinBoundInputError {
  const _$MinBoundInputErrorImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'WoFormInputError.minBound(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinBoundInputErrorImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinBoundInputErrorImplCopyWith<_$MinBoundInputErrorImpl> get copyWith =>
      __$$MinBoundInputErrorImplCopyWithImpl<_$MinBoundInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) empty,
    required TResult Function(String path) invalid,
    required TResult Function(String path) maxBound,
    required TResult Function(String path) minBound,
    required TResult Function(String path, String message) custom,
  }) {
    return minBound(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? empty,
    TResult? Function(String path)? invalid,
    TResult? Function(String path)? maxBound,
    TResult? Function(String path)? minBound,
    TResult? Function(String path, String message)? custom,
  }) {
    return minBound?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? empty,
    TResult Function(String path)? invalid,
    TResult Function(String path)? maxBound,
    TResult Function(String path)? minBound,
    TResult Function(String path, String message)? custom,
    required TResult orElse(),
  }) {
    if (minBound != null) {
      return minBound(path);
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
    required TResult Function(CustomInputError value) custom,
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
    TResult? Function(CustomInputError value)? custom,
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
    TResult Function(CustomInputError value)? custom,
    required TResult orElse(),
  }) {
    if (minBound != null) {
      return minBound(this);
    }
    return orElse();
  }
}

abstract class MinBoundInputError implements WoFormInputError {
  const factory MinBoundInputError({required final String path}) =
      _$MinBoundInputErrorImpl;

  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$MinBoundInputErrorImplCopyWith<_$MinBoundInputErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomInputErrorImplCopyWith<$Res>
    implements $WoFormInputErrorCopyWith<$Res> {
  factory _$$CustomInputErrorImplCopyWith(_$CustomInputErrorImpl value,
          $Res Function(_$CustomInputErrorImpl) then) =
      __$$CustomInputErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String message});
}

/// @nodoc
class __$$CustomInputErrorImplCopyWithImpl<$Res>
    extends _$WoFormInputErrorCopyWithImpl<$Res, _$CustomInputErrorImpl>
    implements _$$CustomInputErrorImplCopyWith<$Res> {
  __$$CustomInputErrorImplCopyWithImpl(_$CustomInputErrorImpl _value,
      $Res Function(_$CustomInputErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = null,
  }) {
    return _then(_$CustomInputErrorImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomInputErrorImpl implements CustomInputError {
  const _$CustomInputErrorImpl({required this.path, required this.message});

  @override
  final String path;
  @override
  final String message;

  @override
  String toString() {
    return 'WoFormInputError.custom(path: $path, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomInputErrorImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomInputErrorImplCopyWith<_$CustomInputErrorImpl> get copyWith =>
      __$$CustomInputErrorImplCopyWithImpl<_$CustomInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) empty,
    required TResult Function(String path) invalid,
    required TResult Function(String path) maxBound,
    required TResult Function(String path) minBound,
    required TResult Function(String path, String message) custom,
  }) {
    return custom(path, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? empty,
    TResult? Function(String path)? invalid,
    TResult? Function(String path)? maxBound,
    TResult? Function(String path)? minBound,
    TResult? Function(String path, String message)? custom,
  }) {
    return custom?.call(path, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? empty,
    TResult Function(String path)? invalid,
    TResult Function(String path)? maxBound,
    TResult Function(String path)? minBound,
    TResult Function(String path, String message)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(path, message);
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
    required TResult Function(CustomInputError value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInputError value)? empty,
    TResult? Function(InvalidInputError value)? invalid,
    TResult? Function(MaxBoundInputError value)? maxBound,
    TResult? Function(MinBoundInputError value)? minBound,
    TResult? Function(CustomInputError value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInputError value)? empty,
    TResult Function(InvalidInputError value)? invalid,
    TResult Function(MaxBoundInputError value)? maxBound,
    TResult Function(MinBoundInputError value)? minBound,
    TResult Function(CustomInputError value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CustomInputError implements WoFormInputError {
  const factory CustomInputError(
      {required final String path,
      required final String message}) = _$CustomInputErrorImpl;

  @override
  String get path;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomInputErrorImplCopyWith<_$CustomInputErrorImpl> get copyWith =>
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormInputError? Function(Never, String)? get getCustomError =>
      throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
  Object get uiSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)
        selectString,
    required TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult? Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
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
      bool? initialValue,
      bool isRequired,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorDef<bool>? getCustomError,
      @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
      BooleanInputUiSettings uiSettings});

  $BooleanInputUiSettingsCopyWith<$Res> get uiSettings;
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
    Object? initialValue = freezed,
    Object? isRequired = null,
    Object? getCustomError = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_$BooleanInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorDef<bool>?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as BooleanInputUiSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BooleanInputUiSettingsCopyWith<$Res> get uiSettings {
    return $BooleanInputUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanInputImpl extends BooleanInput {
  const _$BooleanInputImpl(
      {required this.id,
      this.initialValue,
      this.isRequired = false,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
      this.uiSettings = const BooleanInputUiSettings(),
      final String? $type})
      : $type = $type ?? 'boolean',
        super._();

  factory _$BooleanInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanInputImplFromJson(json);

  @override
  final String id;
  @override
  final bool? initialValue;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorDef<bool>? getCustomError;
  @override
  @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
  final BooleanInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.boolean(id: $id, initialValue: $initialValue, isRequired: $isRequired, getCustomError: $getCustomError, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, initialValue, isRequired, getCustomError, uiSettings);

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
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)
        selectString,
    required TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)
        string,
  }) {
    return boolean(id, initialValue, isRequired, getCustomError, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult? Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
  }) {
    return boolean?.call(
        id, initialValue, isRequired, getCustomError, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(id, initialValue, isRequired, getCustomError, uiSettings);
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
      final bool? initialValue,
      final bool isRequired,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorDef<bool>? getCustomError,
      @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
      final BooleanInputUiSettings uiSettings}) = _$BooleanInputImpl;
  const BooleanInput._() : super._();

  factory BooleanInput.fromJson(Map<String, dynamic> json) =
      _$BooleanInputImpl.fromJson;

  @override
  String get id;
  bool? get initialValue;
  bool get isRequired;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorDef<bool>? get getCustomError;
  @override
  @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
  BooleanInputUiSettings get uiSettings;
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
      num? initialValue,
      bool isRequired,
      int? maxBound,
      int minBound,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorDef<num>? getCustomError,
      NumInputUiSettings uiSettings});

  $NumInputUiSettingsCopyWith<$Res> get uiSettings;
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
    Object? initialValue = freezed,
    Object? isRequired = null,
    Object? maxBound = freezed,
    Object? minBound = null,
    Object? getCustomError = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_$NumInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as num?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      maxBound: freezed == maxBound
          ? _value.maxBound
          : maxBound // ignore: cast_nullable_to_non_nullable
              as int?,
      minBound: null == minBound
          ? _value.minBound
          : minBound // ignore: cast_nullable_to_non_nullable
              as int,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorDef<num>?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as NumInputUiSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NumInputUiSettingsCopyWith<$Res> get uiSettings {
    return $NumInputUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NumInputImpl extends NumInput {
  const _$NumInputImpl(
      {required this.id,
      this.initialValue,
      this.isRequired = false,
      this.maxBound,
      this.minBound = 0,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      this.uiSettings = const NumInputUiSettings(),
      final String? $type})
      : assert(maxBound == null || minBound <= maxBound,
            'maxBound must be higher or equal to minBound'),
        $type = $type ?? 'num',
        super._();

  factory _$NumInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumInputImplFromJson(json);

  @override
  final String id;
  @override
  final num? initialValue;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  final int? maxBound;
  @override
  @JsonKey()
  final int minBound;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorDef<num>? getCustomError;
  @override
  @JsonKey()
  final NumInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.num(id: $id, initialValue: $initialValue, isRequired: $isRequired, maxBound: $maxBound, minBound: $minBound, getCustomError: $getCustomError, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.maxBound, maxBound) ||
                other.maxBound == maxBound) &&
            (identical(other.minBound, minBound) ||
                other.minBound == minBound) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, initialValue, isRequired,
      maxBound, minBound, getCustomError, uiSettings);

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
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)
        selectString,
    required TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)
        string,
  }) {
    return num(id, initialValue, isRequired, maxBound, minBound, getCustomError,
        uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult? Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
  }) {
    return num?.call(id, initialValue, isRequired, maxBound, minBound,
        getCustomError, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(id, initialValue, isRequired, maxBound, minBound,
          getCustomError, uiSettings);
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
      final num? initialValue,
      final bool isRequired,
      final int? maxBound,
      final int minBound,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorDef<num>? getCustomError,
      final NumInputUiSettings uiSettings}) = _$NumInputImpl;
  const NumInput._() : super._();

  factory NumInput.fromJson(Map<String, dynamic> json) =
      _$NumInputImpl.fromJson;

  @override
  String get id;
  num? get initialValue;
  bool get isRequired;
  int? get maxBound;
  int get minBound;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorDef<num>? get getCustomError;
  @override
  NumInputUiSettings get uiSettings;
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
      int minCount,
      List<String> initialValues,
      List<String> availibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorForListDef<String>? getCustomError,
      SelectInputUiSettings<String> uiSettings});

  $SelectInputUiSettingsCopyWith<String, $Res> get uiSettings;
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
    Object? minCount = null,
    Object? initialValues = null,
    Object? availibleValues = null,
    Object? getCustomError = freezed,
    Object? uiSettings = null,
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
      minCount: null == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int,
      initialValues: null == initialValues
          ? _value._initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availibleValues: null == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorForListDef<String>?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as SelectInputUiSettings<String>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectInputUiSettingsCopyWith<String, $Res> get uiSettings {
    return $SelectInputUiSettingsCopyWith<String, $Res>(_value.uiSettings,
        (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectStringInputImpl extends SelectStringInput {
  const _$SelectStringInputImpl(
      {required this.id,
      required this.maxCount,
      this.minCount = 0,
      final List<String> initialValues = const [],
      final List<String> availibleValues = const [],
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      this.uiSettings = const SelectInputUiSettings<String>(),
      final String? $type})
      : assert(maxCount == null || minCount <= maxCount,
            'maxCount must be higher or equal to minCount'),
        _initialValues = initialValues,
        _availibleValues = availibleValues,
        $type = $type ?? 'selectString',
        super._();

  factory _$SelectStringInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectStringInputImplFromJson(json);

  @override
  final String id;
  @override
  final int? maxCount;
  @override
  @JsonKey()
  final int minCount;
  final List<String> _initialValues;
  @override
  @JsonKey()
  List<String> get initialValues {
    if (_initialValues is EqualUnmodifiableListView) return _initialValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialValues);
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorForListDef<String>? getCustomError;
  @override
  @JsonKey()
  final SelectInputUiSettings<String> uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.selectString(id: $id, maxCount: $maxCount, minCount: $minCount, initialValues: $initialValues, availibleValues: $availibleValues, getCustomError: $getCustomError, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStringInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            const DeepCollectionEquality()
                .equals(other._initialValues, _initialValues) &&
            const DeepCollectionEquality()
                .equals(other._availibleValues, _availibleValues) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      minCount,
      const DeepCollectionEquality().hash(_initialValues),
      const DeepCollectionEquality().hash(_availibleValues),
      getCustomError,
      uiSettings);

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
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)
        selectString,
    required TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)
        string,
  }) {
    return selectString(id, maxCount, minCount, initialValues, availibleValues,
        getCustomError, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult? Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
  }) {
    return selectString?.call(id, maxCount, minCount, initialValues,
        availibleValues, getCustomError, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
    required TResult orElse(),
  }) {
    if (selectString != null) {
      return selectString(id, maxCount, minCount, initialValues,
          availibleValues, getCustomError, uiSettings);
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
          final int minCount,
          final List<String> initialValues,
          final List<String> availibleValues,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final GetCustomErrorForListDef<String>? getCustomError,
          final SelectInputUiSettings<String> uiSettings}) =
      _$SelectStringInputImpl;
  const SelectStringInput._() : super._();

  factory SelectStringInput.fromJson(Map<String, dynamic> json) =
      _$SelectStringInputImpl.fromJson;

  @override
  String get id;
  int? get maxCount;
  int get minCount;
  List<String> get initialValues;
  List<String> get availibleValues;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorForListDef<String>? get getCustomError;
  @override
  SelectInputUiSettings<String> get uiSettings;
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
      String? initialValue,
      bool isRequired,
      String? regexPattern,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorDef<String>? getCustomError,
      @JsonKey(toJson: StringInputUiSettings.staticToJson)
      StringInputUiSettings uiSettings});

  $StringInputUiSettingsCopyWith<$Res> get uiSettings;
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
    Object? initialValue = freezed,
    Object? isRequired = null,
    Object? regexPattern = freezed,
    Object? getCustomError = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_$StringInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      regexPattern: freezed == regexPattern
          ? _value.regexPattern
          : regexPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorDef<String>?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as StringInputUiSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StringInputUiSettingsCopyWith<$Res> get uiSettings {
    return $StringInputUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$StringInputImpl extends StringInput {
  const _$StringInputImpl(
      {required this.id,
      this.initialValue,
      this.isRequired = false,
      this.regexPattern,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      @JsonKey(toJson: StringInputUiSettings.staticToJson)
      this.uiSettings = const StringInputUiSettings(),
      final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$StringInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringInputImplFromJson(json);

  @override
  final String id;
  @override
  final String? initialValue;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  final String? regexPattern;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorDef<String>? getCustomError;
  @override
  @JsonKey(toJson: StringInputUiSettings.staticToJson)
  final StringInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.string(id: $id, initialValue: $initialValue, isRequired: $isRequired, regexPattern: $regexPattern, getCustomError: $getCustomError, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.regexPattern, regexPattern) ||
                other.regexPattern == regexPattern) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, initialValue, isRequired,
      regexPattern, getCustomError, uiSettings);

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
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)
        selectString,
    required TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)
        string,
  }) {
    return string(
        id, initialValue, isRequired, regexPattern, getCustomError, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult? Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
  }) {
    return string?.call(
        id, initialValue, isRequired, regexPattern, getCustomError, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String> initialValues,
            List<String> availibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            SelectInputUiSettings<String> uiSettings)?
        selectString,
    TResult Function(
            String id,
            String? initialValue,
            bool isRequired,
            String? regexPattern,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<String>? getCustomError,
            @JsonKey(toJson: StringInputUiSettings.staticToJson)
            StringInputUiSettings uiSettings)?
        string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(id, initialValue, isRequired, regexPattern, getCustomError,
          uiSettings);
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
      final String? initialValue,
      final bool isRequired,
      final String? regexPattern,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorDef<String>? getCustomError,
      @JsonKey(toJson: StringInputUiSettings.staticToJson)
      final StringInputUiSettings uiSettings}) = _$StringInputImpl;
  const StringInput._() : super._();

  factory StringInput.fromJson(Map<String, dynamic> json) =
      _$StringInputImpl.fromJson;

  @override
  String get id;
  String? get initialValue;
  bool get isRequired;
  String? get regexPattern;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorDef<String>? get getCustomError;
  @override
  @JsonKey(toJson: StringInputUiSettings.staticToJson)
  StringInputUiSettings get uiSettings;
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
  List<T> get initialValues => throw _privateConstructorUsedError;
  List<T> get availibleValues => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorForListDef<T>? get getCustomError =>
      throw _privateConstructorUsedError;
  SelectInputUiSettings<T>? get uiSettings =>
      throw _privateConstructorUsedError;
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
      List<T> initialValues,
      List<T> availibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorForListDef<T>? getCustomError,
      SelectInputUiSettings<T>? uiSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  $SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings;
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
    Object? initialValues = null,
    Object? availibleValues = null,
    Object? getCustomError = freezed,
    Object? uiSettings = freezed,
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
      initialValues: null == initialValues
          ? _value.initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      availibleValues: null == availibleValues
          ? _value.availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorForListDef<T>?,
      uiSettings: freezed == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as SelectInputUiSettings<T>?,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings {
    if (_value.uiSettings == null) {
      return null;
    }

    return $SelectInputUiSettingsCopyWith<T, $Res>(_value.uiSettings!, (value) {
      return _then(_value.copyWith(uiSettings: value) as $Val);
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
      List<T> initialValues,
      List<T> availibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorForListDef<T>? getCustomError,
      SelectInputUiSettings<T>? uiSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  @override
  $SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings;
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
    Object? initialValues = null,
    Object? availibleValues = null,
    Object? getCustomError = freezed,
    Object? uiSettings = freezed,
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
      initialValues: null == initialValues
          ? _value._initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      availibleValues: null == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorForListDef<T>?,
      uiSettings: freezed == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as SelectInputUiSettings<T>?,
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
      final List<T> initialValues = const [],
      final List<T> availibleValues = const [],
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      this.uiSettings,
      @JsonKey(includeToJson: false, includeFromJson: false) this.toJsonT})
      : _initialValues = initialValues,
        _availibleValues = availibleValues,
        super._();

  @override
  final String id;
  @override
  final int? maxCount;
  @override
  @JsonKey()
  final int minCount;
  final List<T> _initialValues;
  @override
  @JsonKey()
  List<T> get initialValues {
    if (_initialValues is EqualUnmodifiableListView) return _initialValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialValues);
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorForListDef<T>? getCustomError;
  @override
  final SelectInputUiSettings<T>? uiSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Object? Function(T)? toJsonT;

  @override
  String toString() {
    return 'SelectInput<$T>(id: $id, maxCount: $maxCount, minCount: $minCount, initialValues: $initialValues, availibleValues: $availibleValues, getCustomError: $getCustomError, uiSettings: $uiSettings, toJsonT: $toJsonT)';
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
                .equals(other._initialValues, _initialValues) &&
            const DeepCollectionEquality()
                .equals(other._availibleValues, _availibleValues) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      minCount,
      const DeepCollectionEquality().hash(_initialValues),
      const DeepCollectionEquality().hash(_availibleValues),
      getCustomError,
      uiSettings,
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
      final List<T> initialValues,
      final List<T> availibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorForListDef<T>? getCustomError,
      final SelectInputUiSettings<T>? uiSettings,
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
  List<T> get initialValues;
  @override
  List<T> get availibleValues;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorForListDef<T>? get getCustomError;
  @override
  SelectInputUiSettings<T>? get uiSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT;
  @override
  @JsonKey(ignore: true)
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

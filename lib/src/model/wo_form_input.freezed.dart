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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInputError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomInputErrorImplCopyWith<_$CustomInputErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WoFormInput _$WoFormInputFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'boolean':
      return BooleanInput.fromJson(json);
    case 'dateTime':
      return DateTimeInput.fromJson(json);
    case 'duration':
      return DurationInput.fromJson(json);
    case 'media':
      return MediaInput.fromJson(json);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WoFormInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
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
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(bool?)? onValueChanged,
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

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? initialValue = freezed,
    Object? isRequired = null,
    Object? getCustomError = freezed,
    Object? onValueChanged = freezed,
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
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(bool?)?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as BooleanInputUiSettings,
    ));
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
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
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onValueChanged,
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

  /// An optionnal callback when the value changed
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final void Function(bool?)? onValueChanged;
  @override
  @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
  final BooleanInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.boolean(id: $id, initialValue: $initialValue, isRequired: $isRequired, getCustomError: $getCustomError, onValueChanged: $onValueChanged, uiSettings: $uiSettings)';
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
            (identical(other.onValueChanged, onValueChanged) ||
                other.onValueChanged == onValueChanged) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, initialValue, isRequired,
      getCustomError, onValueChanged, uiSettings);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
    return boolean(id, initialValue, isRequired, getCustomError, onValueChanged,
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    return boolean?.call(id, initialValue, isRequired, getCustomError,
        onValueChanged, uiSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
      return boolean(id, initialValue, isRequired, getCustomError,
          onValueChanged, uiSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
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
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
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
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
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
      @JsonKey(includeToJson: false, includeFromJson: false)
      final void Function(bool?)? onValueChanged,
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

  /// An optionnal callback when the value changed
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(bool?)? get onValueChanged;
  @override
  @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
  BooleanInputUiSettings get uiSettings;

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooleanInputImplCopyWith<_$BooleanInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateTimeInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$DateTimeInputImplCopyWith(
          _$DateTimeInputImpl value, $Res Function(_$DateTimeInputImpl) then) =
      __$$DateTimeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(toJson: FlexibleDateTime.staticToJson)
      FlexibleDateTime? initialValue,
      bool isRequired,
      @JsonKey(toJson: FlexibleDateTime.staticToJson) FlexibleDateTime? maxDate,
      @JsonKey(toJson: FlexibleDateTime.staticToJson) FlexibleDateTime? minDate,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorDef<DateTime>? getCustomError,
      @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
      DateTimeInputUiSettings uiSettings});

  $FlexibleDateTimeCopyWith<$Res>? get initialValue;
  $FlexibleDateTimeCopyWith<$Res>? get maxDate;
  $FlexibleDateTimeCopyWith<$Res>? get minDate;
  $DateTimeInputUiSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class __$$DateTimeInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$DateTimeInputImpl>
    implements _$$DateTimeInputImplCopyWith<$Res> {
  __$$DateTimeInputImplCopyWithImpl(
      _$DateTimeInputImpl _value, $Res Function(_$DateTimeInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? initialValue = freezed,
    Object? isRequired = null,
    Object? maxDate = freezed,
    Object? minDate = freezed,
    Object? getCustomError = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_$DateTimeInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as FlexibleDateTime?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      maxDate: freezed == maxDate
          ? _value.maxDate
          : maxDate // ignore: cast_nullable_to_non_nullable
              as FlexibleDateTime?,
      minDate: freezed == minDate
          ? _value.minDate
          : minDate // ignore: cast_nullable_to_non_nullable
              as FlexibleDateTime?,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorDef<DateTime>?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as DateTimeInputUiSettings,
    ));
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlexibleDateTimeCopyWith<$Res>? get initialValue {
    if (_value.initialValue == null) {
      return null;
    }

    return $FlexibleDateTimeCopyWith<$Res>(_value.initialValue!, (value) {
      return _then(_value.copyWith(initialValue: value));
    });
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlexibleDateTimeCopyWith<$Res>? get maxDate {
    if (_value.maxDate == null) {
      return null;
    }

    return $FlexibleDateTimeCopyWith<$Res>(_value.maxDate!, (value) {
      return _then(_value.copyWith(maxDate: value));
    });
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlexibleDateTimeCopyWith<$Res>? get minDate {
    if (_value.minDate == null) {
      return null;
    }

    return $FlexibleDateTimeCopyWith<$Res>(_value.minDate!, (value) {
      return _then(_value.copyWith(minDate: value));
    });
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeInputUiSettingsCopyWith<$Res> get uiSettings {
    return $DateTimeInputUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DateTimeInputImpl extends DateTimeInput {
  const _$DateTimeInputImpl(
      {required this.id,
      @JsonKey(toJson: FlexibleDateTime.staticToJson) this.initialValue,
      this.isRequired = false,
      @JsonKey(toJson: FlexibleDateTime.staticToJson) this.maxDate,
      @JsonKey(toJson: FlexibleDateTime.staticToJson) this.minDate,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
      this.uiSettings = const DateTimeInputUiSettings(),
      final String? $type})
      : $type = $type ?? 'dateTime',
        super._();

  factory _$DateTimeInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateTimeInputImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  final FlexibleDateTime? initialValue;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  final FlexibleDateTime? maxDate;
  @override
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  final FlexibleDateTime? minDate;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorDef<DateTime>? getCustomError;
  @override
  @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
  final DateTimeInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.dateTime(id: $id, initialValue: $initialValue, isRequired: $isRequired, maxDate: $maxDate, minDate: $minDate, getCustomError: $getCustomError, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.maxDate, maxDate) || other.maxDate == maxDate) &&
            (identical(other.minDate, minDate) || other.minDate == minDate) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, initialValue, isRequired,
      maxDate, minDate, getCustomError, uiSettings);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeInputImplCopyWith<_$DateTimeInputImpl> get copyWith =>
      __$$DateTimeInputImplCopyWithImpl<_$DateTimeInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
    return dateTime(id, initialValue, isRequired, maxDate, minDate,
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    return dateTime?.call(id, initialValue, isRequired, maxDate, minDate,
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    if (dateTime != null) {
      return dateTime(id, initialValue, isRequired, maxDate, minDate,
          getCustomError, uiSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return dateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return dateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (dateTime != null) {
      return dateTime(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateTimeInputImplToJson(
      this,
    );
  }
}

abstract class DateTimeInput extends WoFormInput {
  const factory DateTimeInput(
      {required final String id,
      @JsonKey(toJson: FlexibleDateTime.staticToJson)
      final FlexibleDateTime? initialValue,
      final bool isRequired,
      @JsonKey(toJson: FlexibleDateTime.staticToJson)
      final FlexibleDateTime? maxDate,
      @JsonKey(toJson: FlexibleDateTime.staticToJson)
      final FlexibleDateTime? minDate,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorDef<DateTime>? getCustomError,
      @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
      final DateTimeInputUiSettings uiSettings}) = _$DateTimeInputImpl;
  const DateTimeInput._() : super._();

  factory DateTimeInput.fromJson(Map<String, dynamic> json) =
      _$DateTimeInputImpl.fromJson;

  @override
  String get id;
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  FlexibleDateTime? get initialValue;
  bool get isRequired;
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  FlexibleDateTime? get maxDate;
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  FlexibleDateTime? get minDate;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorDef<DateTime>? get getCustomError;
  @override
  @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
  DateTimeInputUiSettings get uiSettings;

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateTimeInputImplCopyWith<_$DateTimeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DurationInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$DurationInputImplCopyWith(
          _$DurationInputImpl value, $Res Function(_$DurationInputImpl) then) =
      __$$DurationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DurationNullableConverter() Duration? initialValue,
      bool isRequired,
      String? startDatePath,
      @DurationNullableConverter() Duration? maxDuration,
      @DurationNullableConverter() Duration? minDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorDef<Duration>? getCustomError,
      @JsonKey(toJson: DurationInputUiSettings.staticToJson)
      DurationInputUiSettings uiSettings});

  $DurationInputUiSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class __$$DurationInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$DurationInputImpl>
    implements _$$DurationInputImplCopyWith<$Res> {
  __$$DurationInputImplCopyWithImpl(
      _$DurationInputImpl _value, $Res Function(_$DurationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? initialValue = freezed,
    Object? isRequired = null,
    Object? startDatePath = freezed,
    Object? maxDuration = freezed,
    Object? minDuration = freezed,
    Object? getCustomError = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_$DurationInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as Duration?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      startDatePath: freezed == startDatePath
          ? _value.startDatePath
          : startDatePath // ignore: cast_nullable_to_non_nullable
              as String?,
      maxDuration: freezed == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      minDuration: freezed == minDuration
          ? _value.minDuration
          : minDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorDef<Duration>?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as DurationInputUiSettings,
    ));
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DurationInputUiSettingsCopyWith<$Res> get uiSettings {
    return $DurationInputUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DurationInputImpl extends DurationInput {
  const _$DurationInputImpl(
      {required this.id,
      @DurationNullableConverter() this.initialValue,
      this.isRequired = false,
      this.startDatePath,
      @DurationNullableConverter() this.maxDuration,
      @DurationNullableConverter() this.minDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      @JsonKey(toJson: DurationInputUiSettings.staticToJson)
      this.uiSettings = const DurationInputUiSettings(),
      final String? $type})
      : $type = $type ?? 'duration',
        super._();

  factory _$DurationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationInputImplFromJson(json);

  @override
  final String id;
  @override
  @DurationNullableConverter()
  final Duration? initialValue;
  @override
  @JsonKey()
  final bool isRequired;

  /// If provided, this should point to a DateTime in the WoFormValuesCubit.
  /// When provided, the user will be able to choose between
  /// DurationEditMode.dateTime and DurationEditMode.duration.
  @override
  final String? startDatePath;
  @override
  @DurationNullableConverter()
  final Duration? maxDuration;
  @override
  @DurationNullableConverter()
  final Duration? minDuration;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorDef<Duration>? getCustomError;
  @override
  @JsonKey(toJson: DurationInputUiSettings.staticToJson)
  final DurationInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.duration(id: $id, initialValue: $initialValue, isRequired: $isRequired, startDatePath: $startDatePath, maxDuration: $maxDuration, minDuration: $minDuration, getCustomError: $getCustomError, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.startDatePath, startDatePath) ||
                other.startDatePath == startDatePath) &&
            (identical(other.maxDuration, maxDuration) ||
                other.maxDuration == maxDuration) &&
            (identical(other.minDuration, minDuration) ||
                other.minDuration == minDuration) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, initialValue, isRequired,
      startDatePath, maxDuration, minDuration, getCustomError, uiSettings);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationInputImplCopyWith<_$DurationInputImpl> get copyWith =>
      __$$DurationInputImplCopyWithImpl<_$DurationInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
    return duration(id, initialValue, isRequired, startDatePath, maxDuration,
        minDuration, getCustomError, uiSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    return duration?.call(id, initialValue, isRequired, startDatePath,
        maxDuration, minDuration, getCustomError, uiSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    if (duration != null) {
      return duration(id, initialValue, isRequired, startDatePath, maxDuration,
          minDuration, getCustomError, uiSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return duration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return duration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationInputImplToJson(
      this,
    );
  }
}

abstract class DurationInput extends WoFormInput {
  const factory DurationInput(
      {required final String id,
      @DurationNullableConverter() final Duration? initialValue,
      final bool isRequired,
      final String? startDatePath,
      @DurationNullableConverter() final Duration? maxDuration,
      @DurationNullableConverter() final Duration? minDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorDef<Duration>? getCustomError,
      @JsonKey(toJson: DurationInputUiSettings.staticToJson)
      final DurationInputUiSettings uiSettings}) = _$DurationInputImpl;
  const DurationInput._() : super._();

  factory DurationInput.fromJson(Map<String, dynamic> json) =
      _$DurationInputImpl.fromJson;

  @override
  String get id;
  @DurationNullableConverter()
  Duration? get initialValue;
  bool get isRequired;

  /// If provided, this should point to a DateTime in the WoFormValuesCubit.
  /// When provided, the user will be able to choose between
  /// DurationEditMode.dateTime and DurationEditMode.duration.
  String? get startDatePath;
  @DurationNullableConverter()
  Duration? get maxDuration;
  @DurationNullableConverter()
  Duration? get minDuration;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorDef<Duration>? get getCustomError;
  @override
  @JsonKey(toJson: DurationInputUiSettings.staticToJson)
  DurationInputUiSettings get uiSettings;

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationInputImplCopyWith<_$DurationInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$MediaInputImplCopyWith(
          _$MediaInputImpl value, $Res Function(_$MediaInputImpl) then) =
      __$$MediaInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(toJson: MediaImportSettings.staticToJson)
      MediaImportSettings importSettings,
      int? maxCount,
      int minCount,
      double? aspectRatio,
      @MediaListConverter() List<Media>? initialValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorForListDef<Media>? getCustomError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(List<Media>?)? onValueChanged,
      bool submitFormOnSelect,
      String? uploadPath,
      @JsonKey(toJson: MediaInputUiSettings.staticToJson)
      MediaInputUiSettings uiSettings});

  $MediaImportSettingsCopyWith<$Res> get importSettings;
  $MediaInputUiSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class __$$MediaInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$MediaInputImpl>
    implements _$$MediaInputImplCopyWith<$Res> {
  __$$MediaInputImplCopyWithImpl(
      _$MediaInputImpl _value, $Res Function(_$MediaInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? importSettings = null,
    Object? maxCount = freezed,
    Object? minCount = null,
    Object? aspectRatio = freezed,
    Object? initialValues = freezed,
    Object? getCustomError = freezed,
    Object? onValueChanged = freezed,
    Object? submitFormOnSelect = null,
    Object? uploadPath = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_$MediaInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      importSettings: null == importSettings
          ? _value.importSettings
          : importSettings // ignore: cast_nullable_to_non_nullable
              as MediaImportSettings,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minCount: null == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int,
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      initialValues: freezed == initialValues
          ? _value._initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorForListDef<Media>?,
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(List<Media>?)?,
      submitFormOnSelect: null == submitFormOnSelect
          ? _value.submitFormOnSelect
          : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadPath: freezed == uploadPath
          ? _value.uploadPath
          : uploadPath // ignore: cast_nullable_to_non_nullable
              as String?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as MediaInputUiSettings,
    ));
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaImportSettingsCopyWith<$Res> get importSettings {
    return $MediaImportSettingsCopyWith<$Res>(_value.importSettings, (value) {
      return _then(_value.copyWith(importSettings: value));
    });
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaInputUiSettingsCopyWith<$Res> get uiSettings {
    return $MediaInputUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaInputImpl extends MediaInput {
  const _$MediaInputImpl(
      {required this.id,
      @JsonKey(toJson: MediaImportSettings.staticToJson)
      required this.importSettings,
      required this.maxCount,
      this.minCount = 0,
      this.aspectRatio,
      @MediaListConverter() final List<Media>? initialValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onValueChanged,
      this.submitFormOnSelect = false,
      this.uploadPath,
      @JsonKey(toJson: MediaInputUiSettings.staticToJson)
      this.uiSettings = const MediaInputUiSettings(),
      final String? $type})
      : assert(maxCount == null || minCount <= maxCount,
            'maxCount must be higher or equal to minCount'),
        _initialValues = initialValues,
        $type = $type ?? 'media',
        super._();

  factory _$MediaInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaInputImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(toJson: MediaImportSettings.staticToJson)
  final MediaImportSettings importSettings;
  @override
  final int? maxCount;
  @override
  @JsonKey()
  final int minCount;
  @override
  final double? aspectRatio;
  final List<Media>? _initialValues;
  @override
  @MediaListConverter()
  List<Media>? get initialValues {
    final value = _initialValues;
    if (value == null) return null;
    if (_initialValues is EqualUnmodifiableListView) return _initialValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorForListDef<Media>? getCustomError;

  /// An optionnal callback when the value changed
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final void Function(List<Media>?)? onValueChanged;

  /// Only applies if maxCount is 1
  @override
  @JsonKey()
  final bool submitFormOnSelect;

  /// Required if you use MediaInput.export()
  @override
  final String? uploadPath;
  @override
  @JsonKey(toJson: MediaInputUiSettings.staticToJson)
  final MediaInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.media(id: $id, importSettings: $importSettings, maxCount: $maxCount, minCount: $minCount, aspectRatio: $aspectRatio, initialValues: $initialValues, getCustomError: $getCustomError, onValueChanged: $onValueChanged, submitFormOnSelect: $submitFormOnSelect, uploadPath: $uploadPath, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.importSettings, importSettings) ||
                other.importSettings == importSettings) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            const DeepCollectionEquality()
                .equals(other._initialValues, _initialValues) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.onValueChanged, onValueChanged) ||
                other.onValueChanged == onValueChanged) &&
            (identical(other.submitFormOnSelect, submitFormOnSelect) ||
                other.submitFormOnSelect == submitFormOnSelect) &&
            (identical(other.uploadPath, uploadPath) ||
                other.uploadPath == uploadPath) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      importSettings,
      maxCount,
      minCount,
      aspectRatio,
      const DeepCollectionEquality().hash(_initialValues),
      getCustomError,
      onValueChanged,
      submitFormOnSelect,
      uploadPath,
      uiSettings);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaInputImplCopyWith<_$MediaInputImpl> get copyWith =>
      __$$MediaInputImplCopyWithImpl<_$MediaInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? initialValue,
            bool isRequired,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<bool>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
    return media(
        id,
        importSettings,
        maxCount,
        minCount,
        aspectRatio,
        initialValues,
        getCustomError,
        onValueChanged,
        submitFormOnSelect,
        uploadPath,
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    return media?.call(
        id,
        importSettings,
        maxCount,
        minCount,
        aspectRatio,
        initialValues,
        getCustomError,
        onValueChanged,
        submitFormOnSelect,
        uploadPath,
        uiSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    if (media != null) {
      return media(
          id,
          importSettings,
          maxCount,
          minCount,
          aspectRatio,
          initialValues,
          getCustomError,
          onValueChanged,
          submitFormOnSelect,
          uploadPath,
          uiSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return media(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return media?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (media != null) {
      return media(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaInputImplToJson(
      this,
    );
  }
}

abstract class MediaInput extends WoFormInput {
  const factory MediaInput(
      {required final String id,
      @JsonKey(toJson: MediaImportSettings.staticToJson)
      required final MediaImportSettings importSettings,
      required final int? maxCount,
      final int minCount,
      final double? aspectRatio,
      @MediaListConverter() final List<Media>? initialValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorForListDef<Media>? getCustomError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final void Function(List<Media>?)? onValueChanged,
      final bool submitFormOnSelect,
      final String? uploadPath,
      @JsonKey(toJson: MediaInputUiSettings.staticToJson)
      final MediaInputUiSettings uiSettings}) = _$MediaInputImpl;
  const MediaInput._() : super._();

  factory MediaInput.fromJson(Map<String, dynamic> json) =
      _$MediaInputImpl.fromJson;

  @override
  String get id;
  @JsonKey(toJson: MediaImportSettings.staticToJson)
  MediaImportSettings get importSettings;
  int? get maxCount;
  int get minCount;
  double? get aspectRatio;
  @MediaListConverter()
  List<Media>? get initialValues;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorForListDef<Media>? get getCustomError;

  /// An optionnal callback when the value changed
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(List<Media>?)? get onValueChanged;

  /// Only applies if maxCount is 1
  bool get submitFormOnSelect;

  /// Required if you use MediaInput.export()
  String? get uploadPath;
  @override
  @JsonKey(toJson: MediaInputUiSettings.staticToJson)
  MediaInputUiSettings get uiSettings;

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaInputImplCopyWith<_$MediaInputImpl> get copyWith =>
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
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(num?)? onValueChanged,
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

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? initialValue = freezed,
    Object? isRequired = null,
    Object? maxBound = freezed,
    Object? minBound = null,
    Object? getCustomError = freezed,
    Object? onValueChanged = freezed,
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
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(num?)?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as NumInputUiSettings,
    ));
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
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
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onValueChanged,
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

  /// An optionnal callback when the value changed
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final void Function(num?)? onValueChanged;
  @override
  @JsonKey()
  final NumInputUiSettings uiSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.num(id: $id, initialValue: $initialValue, isRequired: $isRequired, maxBound: $maxBound, minBound: $minBound, getCustomError: $getCustomError, onValueChanged: $onValueChanged, uiSettings: $uiSettings)';
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
            (identical(other.onValueChanged, onValueChanged) ||
                other.onValueChanged == onValueChanged) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, initialValue, isRequired,
      maxBound, minBound, getCustomError, onValueChanged, uiSettings);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
        onValueChanged, uiSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
        getCustomError, onValueChanged, uiSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
          getCustomError, onValueChanged, uiSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
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
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
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
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
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
      @JsonKey(includeToJson: false, includeFromJson: false)
      final void Function(num?)? onValueChanged,
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

  /// An optionnal callback when the value changed
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(num?)? get onValueChanged;
  @override
  NumInputUiSettings get uiSettings;

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      List<String>? initialValues,
      List<String> availibleValues,
      List<String>? idsOfAvailibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorForListDef<String>? getCustomError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(List<String>?)? onValueChanged,
      bool submitFormOnSelect,
      @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
      SelectInputUiSettings<String> uiSettings,
      @JsonKey(toJson: QuizSettings.staticToJson) QuizSettings? quizSettings});

  $SelectInputUiSettingsCopyWith<String, $Res> get uiSettings;
  $QuizSettingsCopyWith<$Res>? get quizSettings;
}

/// @nodoc
class __$$SelectStringInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$SelectStringInputImpl>
    implements _$$SelectStringInputImplCopyWith<$Res> {
  __$$SelectStringInputImplCopyWithImpl(_$SelectStringInputImpl _value,
      $Res Function(_$SelectStringInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? minCount = null,
    Object? initialValues = freezed,
    Object? availibleValues = null,
    Object? idsOfAvailibleValues = freezed,
    Object? getCustomError = freezed,
    Object? onValueChanged = freezed,
    Object? submitFormOnSelect = null,
    Object? uiSettings = null,
    Object? quizSettings = freezed,
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
      initialValues: freezed == initialValues
          ? _value._initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      availibleValues: null == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      idsOfAvailibleValues: freezed == idsOfAvailibleValues
          ? _value._idsOfAvailibleValues
          : idsOfAvailibleValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorForListDef<String>?,
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(List<String>?)?,
      submitFormOnSelect: null == submitFormOnSelect
          ? _value.submitFormOnSelect
          : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as SelectInputUiSettings<String>,
      quizSettings: freezed == quizSettings
          ? _value.quizSettings
          : quizSettings // ignore: cast_nullable_to_non_nullable
              as QuizSettings?,
    ));
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectInputUiSettingsCopyWith<String, $Res> get uiSettings {
    return $SelectInputUiSettingsCopyWith<String, $Res>(_value.uiSettings,
        (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizSettingsCopyWith<$Res>? get quizSettings {
    if (_value.quizSettings == null) {
      return null;
    }

    return $QuizSettingsCopyWith<$Res>(_value.quizSettings!, (value) {
      return _then(_value.copyWith(quizSettings: value));
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
      final List<String>? initialValues,
      final List<String> availibleValues = const [],
      final List<String>? idsOfAvailibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onValueChanged,
      this.submitFormOnSelect = false,
      @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
      this.uiSettings = const SelectInputUiSettings<String>(),
      @JsonKey(toJson: QuizSettings.staticToJson) this.quizSettings,
      final String? $type})
      : assert(maxCount == null || minCount <= maxCount,
            'maxCount must be higher or equal to minCount'),
        _initialValues = initialValues,
        _availibleValues = availibleValues,
        _idsOfAvailibleValues = idsOfAvailibleValues,
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
  final List<String>? _initialValues;
  @override
  List<String>? get initialValues {
    final value = _initialValues;
    if (value == null) return null;
    if (_initialValues is EqualUnmodifiableListView) return _initialValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _availibleValues;
  @override
  @JsonKey()
  List<String> get availibleValues {
    if (_availibleValues is EqualUnmodifiableListView) return _availibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availibleValues);
  }

// idsOfAvailibleValues allows to set an identifier to each value.
// This way, we keep the advantage of a list : the order
// and we gain the advantage of a map : the identifiers
// while staying jsonifiable.
// If set, the object stored at the path of this input in WoFormValuesCubit
// will be the id of the selected value.
  final List<String>? _idsOfAvailibleValues;
// idsOfAvailibleValues allows to set an identifier to each value.
// This way, we keep the advantage of a list : the order
// and we gain the advantage of a map : the identifiers
// while staying jsonifiable.
// If set, the object stored at the path of this input in WoFormValuesCubit
// will be the id of the selected value.
  @override
  List<String>? get idsOfAvailibleValues {
    final value = _idsOfAvailibleValues;
    if (value == null) return null;
    if (_idsOfAvailibleValues is EqualUnmodifiableListView)
      return _idsOfAvailibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorForListDef<String>? getCustomError;

  /// An optionnal callback when the value changed
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final void Function(List<String>?)? onValueChanged;

  /// Only applies if maxCount is 1
  @override
  @JsonKey()
  final bool submitFormOnSelect;
  @override
  @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
  final SelectInputUiSettings<String> uiSettings;
// The correct answer is the index of availibleValues
  @override
  @JsonKey(toJson: QuizSettings.staticToJson)
  final QuizSettings? quizSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.selectString(id: $id, maxCount: $maxCount, minCount: $minCount, initialValues: $initialValues, availibleValues: $availibleValues, idsOfAvailibleValues: $idsOfAvailibleValues, getCustomError: $getCustomError, onValueChanged: $onValueChanged, submitFormOnSelect: $submitFormOnSelect, uiSettings: $uiSettings, quizSettings: $quizSettings)';
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
            const DeepCollectionEquality()
                .equals(other._idsOfAvailibleValues, _idsOfAvailibleValues) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.onValueChanged, onValueChanged) ||
                other.onValueChanged == onValueChanged) &&
            (identical(other.submitFormOnSelect, submitFormOnSelect) ||
                other.submitFormOnSelect == submitFormOnSelect) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.quizSettings, quizSettings) ||
                other.quizSettings == quizSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      minCount,
      const DeepCollectionEquality().hash(_initialValues),
      const DeepCollectionEquality().hash(_availibleValues),
      const DeepCollectionEquality().hash(_idsOfAvailibleValues),
      getCustomError,
      onValueChanged,
      submitFormOnSelect,
      uiSettings,
      quizSettings);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
    return selectString(
        id,
        maxCount,
        minCount,
        initialValues,
        availibleValues,
        idsOfAvailibleValues,
        getCustomError,
        onValueChanged,
        submitFormOnSelect,
        uiSettings,
        quizSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    return selectString?.call(
        id,
        maxCount,
        minCount,
        initialValues,
        availibleValues,
        idsOfAvailibleValues,
        getCustomError,
        onValueChanged,
        submitFormOnSelect,
        uiSettings,
        quizSettings);
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
      return selectString(
          id,
          maxCount,
          minCount,
          initialValues,
          availibleValues,
          idsOfAvailibleValues,
          getCustomError,
          onValueChanged,
          submitFormOnSelect,
          uiSettings,
          quizSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
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
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
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
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
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
      final List<String>? initialValues,
      final List<String> availibleValues,
      final List<String>? idsOfAvailibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorForListDef<String>? getCustomError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final void Function(List<String>?)? onValueChanged,
      final bool submitFormOnSelect,
      @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
      final SelectInputUiSettings<String> uiSettings,
      @JsonKey(toJson: QuizSettings.staticToJson)
      final QuizSettings? quizSettings}) = _$SelectStringInputImpl;
  const SelectStringInput._() : super._();

  factory SelectStringInput.fromJson(Map<String, dynamic> json) =
      _$SelectStringInputImpl.fromJson;

  @override
  String get id;
  int? get maxCount;
  int get minCount;
  List<String>? get initialValues;
  List<String>
      get availibleValues; // idsOfAvailibleValues allows to set an identifier to each value.
// This way, we keep the advantage of a list : the order
// and we gain the advantage of a map : the identifiers
// while staying jsonifiable.
// If set, the object stored at the path of this input in WoFormValuesCubit
// will be the id of the selected value.
  List<String>? get idsOfAvailibleValues;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorForListDef<String>? get getCustomError;

  /// An optionnal callback when the value changed
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(List<String>?)? get onValueChanged;

  /// Only applies if maxCount is 1
  bool get submitFormOnSelect;
  @override
  @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
  SelectInputUiSettings<String>
      get uiSettings; // The correct answer is the index of availibleValues
  @JsonKey(toJson: QuizSettings.staticToJson)
  QuizSettings? get quizSettings;

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, initialValue, isRequired,
      regexPattern, getCustomError, uiSettings);

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)
        boolean,
    required TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)
        dateTime,
    required TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)
        duration,
    required TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)
        media,
    required TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult? Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult? Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult? Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult? Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(bool?)? onValueChanged,
            @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
            BooleanInputUiSettings uiSettings)?
        boolean,
    TResult Function(
            String id,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? initialValue,
            bool isRequired,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? maxDate,
            @JsonKey(toJson: FlexibleDateTime.staticToJson)
            FlexibleDateTime? minDate,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<DateTime>? getCustomError,
            @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
            DateTimeInputUiSettings uiSettings)?
        dateTime,
    TResult Function(
            String id,
            @DurationNullableConverter() Duration? initialValue,
            bool isRequired,
            String? startDatePath,
            @DurationNullableConverter() Duration? maxDuration,
            @DurationNullableConverter() Duration? minDuration,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<Duration>? getCustomError,
            @JsonKey(toJson: DurationInputUiSettings.staticToJson)
            DurationInputUiSettings uiSettings)?
        duration,
    TResult Function(
            String id,
            @JsonKey(toJson: MediaImportSettings.staticToJson)
            MediaImportSettings importSettings,
            int? maxCount,
            int minCount,
            double? aspectRatio,
            @MediaListConverter() List<Media>? initialValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<Media>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<Media>?)? onValueChanged,
            bool submitFormOnSelect,
            String? uploadPath,
            @JsonKey(toJson: MediaInputUiSettings.staticToJson)
            MediaInputUiSettings uiSettings)?
        media,
    TResult Function(
            String id,
            num? initialValue,
            bool isRequired,
            int? maxBound,
            int minBound,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorDef<num>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(num?)? onValueChanged,
            NumInputUiSettings uiSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            int minCount,
            List<String>? initialValues,
            List<String> availibleValues,
            List<String>? idsOfAvailibleValues,
            @JsonKey(includeToJson: false, includeFromJson: false)
            GetCustomErrorForListDef<String>? getCustomError,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(List<String>?)? onValueChanged,
            bool submitFormOnSelect,
            @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
            SelectInputUiSettings<String> uiSettings,
            @JsonKey(toJson: QuizSettings.staticToJson)
            QuizSettings? quizSettings)?
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
    required TResult Function(DateTimeInput value) dateTime,
    required TResult Function(DurationInput value) duration,
    required TResult Function(MediaInput value) media,
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
    TResult? Function(DateTimeInput value)? dateTime,
    TResult? Function(DurationInput value)? duration,
    TResult? Function(MediaInput value)? media,
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
    TResult Function(DateTimeInput value)? dateTime,
    TResult Function(DurationInput value)? duration,
    TResult Function(MediaInput value)? media,
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

  /// Create a copy of WoFormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringInputImplCopyWith<_$StringInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectInput<T> {
  String get id => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  int get minCount => throw _privateConstructorUsedError;
  List<T>? get initialValues => throw _privateConstructorUsedError;
  List<T> get availibleValues => throw _privateConstructorUsedError;

  /// idsOfAvailibleValues allows to set an identifier to each value.
  /// This way, we keep the advantage of a list : the order
  /// and we gain the advantage of a map : the identifiers
  /// while staying jsonifiable.
  /// If set, the object stored at the path of this input in WoFormValuesCubit
  /// will be the id of the selected value.
  List<String>? get idsOfAvailibleValues => throw _privateConstructorUsedError;

  /// An optionnal callback when the value changed
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(List<T>?)? get onValueChanged =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorForListDef<T>? get getCustomError =>
      throw _privateConstructorUsedError;

  /// Only applies if maxCount is 1
  bool get submitFormOnSelect => throw _privateConstructorUsedError;
  SelectInputUiSettings<T>? get uiSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(toJson: QuizSettings.staticToJson)
  QuizSettings? get quizSettings => throw _privateConstructorUsedError;

  /// The following fields are mostly usefull for hydrataion
  ///
  /// Ex :
  /// SelectInput<TimeControl>(
  ///   toJsonT: (value) => (value as TimeControl?)?.toJson(),
  ///   fromJsonT: (json) =>
  ///       TimeControl.fromJson(json as Map<String, dynamic>? ?? {}),
  /// ),
  @JsonKey(includeToJson: false, includeFromJson: false)
  dynamic Function(dynamic)? get toJsonT => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  dynamic Function(dynamic)? get fromJsonT =>
      throw _privateConstructorUsedError;

  /// Create a copy of SelectInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      List<T>? initialValues,
      List<T> availibleValues,
      List<String>? idsOfAvailibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(List<T>?)? onValueChanged,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorForListDef<T>? getCustomError,
      bool submitFormOnSelect,
      SelectInputUiSettings<T>? uiSettings,
      @JsonKey(toJson: QuizSettings.staticToJson) QuizSettings? quizSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      dynamic Function(dynamic)? toJsonT,
      @JsonKey(includeToJson: false, includeFromJson: false)
      dynamic Function(dynamic)? fromJsonT});

  $SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings;
  $QuizSettingsCopyWith<$Res>? get quizSettings;
}

/// @nodoc
class _$SelectInputCopyWithImpl<T, $Res, $Val extends SelectInput<T>>
    implements $SelectInputCopyWith<T, $Res> {
  _$SelectInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? minCount = null,
    Object? initialValues = freezed,
    Object? availibleValues = null,
    Object? idsOfAvailibleValues = freezed,
    Object? onValueChanged = freezed,
    Object? getCustomError = freezed,
    Object? submitFormOnSelect = null,
    Object? uiSettings = freezed,
    Object? quizSettings = freezed,
    Object? toJsonT = freezed,
    Object? fromJsonT = freezed,
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
      initialValues: freezed == initialValues
          ? _value.initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      availibleValues: null == availibleValues
          ? _value.availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      idsOfAvailibleValues: freezed == idsOfAvailibleValues
          ? _value.idsOfAvailibleValues
          : idsOfAvailibleValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(List<T>?)?,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorForListDef<T>?,
      submitFormOnSelect: null == submitFormOnSelect
          ? _value.submitFormOnSelect
          : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      uiSettings: freezed == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as SelectInputUiSettings<T>?,
      quizSettings: freezed == quizSettings
          ? _value.quizSettings
          : quizSettings // ignore: cast_nullable_to_non_nullable
              as QuizSettings?,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic)?,
      fromJsonT: freezed == fromJsonT
          ? _value.fromJsonT
          : fromJsonT // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic)?,
    ) as $Val);
  }

  /// Create a copy of SelectInput
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SelectInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizSettingsCopyWith<$Res>? get quizSettings {
    if (_value.quizSettings == null) {
      return null;
    }

    return $QuizSettingsCopyWith<$Res>(_value.quizSettings!, (value) {
      return _then(_value.copyWith(quizSettings: value) as $Val);
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
      List<T>? initialValues,
      List<T> availibleValues,
      List<String>? idsOfAvailibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(List<T>?)? onValueChanged,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GetCustomErrorForListDef<T>? getCustomError,
      bool submitFormOnSelect,
      SelectInputUiSettings<T>? uiSettings,
      @JsonKey(toJson: QuizSettings.staticToJson) QuizSettings? quizSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      dynamic Function(dynamic)? toJsonT,
      @JsonKey(includeToJson: false, includeFromJson: false)
      dynamic Function(dynamic)? fromJsonT});

  @override
  $SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings;
  @override
  $QuizSettingsCopyWith<$Res>? get quizSettings;
}

/// @nodoc
class __$$SelectInputImplCopyWithImpl<T, $Res>
    extends _$SelectInputCopyWithImpl<T, $Res, _$SelectInputImpl<T>>
    implements _$$SelectInputImplCopyWith<T, $Res> {
  __$$SelectInputImplCopyWithImpl(
      _$SelectInputImpl<T> _value, $Res Function(_$SelectInputImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SelectInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? minCount = null,
    Object? initialValues = freezed,
    Object? availibleValues = null,
    Object? idsOfAvailibleValues = freezed,
    Object? onValueChanged = freezed,
    Object? getCustomError = freezed,
    Object? submitFormOnSelect = null,
    Object? uiSettings = freezed,
    Object? quizSettings = freezed,
    Object? toJsonT = freezed,
    Object? fromJsonT = freezed,
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
      initialValues: freezed == initialValues
          ? _value._initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      availibleValues: null == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>,
      idsOfAvailibleValues: freezed == idsOfAvailibleValues
          ? _value._idsOfAvailibleValues
          : idsOfAvailibleValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(List<T>?)?,
      getCustomError: freezed == getCustomError
          ? _value.getCustomError
          : getCustomError // ignore: cast_nullable_to_non_nullable
              as GetCustomErrorForListDef<T>?,
      submitFormOnSelect: null == submitFormOnSelect
          ? _value.submitFormOnSelect
          : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      uiSettings: freezed == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as SelectInputUiSettings<T>?,
      quizSettings: freezed == quizSettings
          ? _value.quizSettings
          : quizSettings // ignore: cast_nullable_to_non_nullable
              as QuizSettings?,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic)?,
      fromJsonT: freezed == fromJsonT
          ? _value.fromJsonT
          : fromJsonT // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic)?,
    ));
  }
}

/// @nodoc

class _$SelectInputImpl<T> extends _SelectInput<T> {
  const _$SelectInputImpl(
      {required this.id,
      required this.maxCount,
      this.minCount = 0,
      final List<T>? initialValues,
      final List<T> availibleValues = const [],
      final List<String>? idsOfAvailibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onValueChanged,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.getCustomError,
      this.submitFormOnSelect = false,
      this.uiSettings,
      @JsonKey(toJson: QuizSettings.staticToJson) this.quizSettings,
      @JsonKey(includeToJson: false, includeFromJson: false) this.toJsonT,
      @JsonKey(includeToJson: false, includeFromJson: false) this.fromJsonT})
      : _initialValues = initialValues,
        _availibleValues = availibleValues,
        _idsOfAvailibleValues = idsOfAvailibleValues,
        super._();

  @override
  final String id;
  @override
  final int? maxCount;
  @override
  @JsonKey()
  final int minCount;
  final List<T>? _initialValues;
  @override
  List<T>? get initialValues {
    final value = _initialValues;
    if (value == null) return null;
    if (_initialValues is EqualUnmodifiableListView) return _initialValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<T> _availibleValues;
  @override
  @JsonKey()
  List<T> get availibleValues {
    if (_availibleValues is EqualUnmodifiableListView) return _availibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availibleValues);
  }

  /// idsOfAvailibleValues allows to set an identifier to each value.
  /// This way, we keep the advantage of a list : the order
  /// and we gain the advantage of a map : the identifiers
  /// while staying jsonifiable.
  /// If set, the object stored at the path of this input in WoFormValuesCubit
  /// will be the id of the selected value.
  final List<String>? _idsOfAvailibleValues;

  /// idsOfAvailibleValues allows to set an identifier to each value.
  /// This way, we keep the advantage of a list : the order
  /// and we gain the advantage of a map : the identifiers
  /// while staying jsonifiable.
  /// If set, the object stored at the path of this input in WoFormValuesCubit
  /// will be the id of the selected value.
  @override
  List<String>? get idsOfAvailibleValues {
    final value = _idsOfAvailibleValues;
    if (value == null) return null;
    if (_idsOfAvailibleValues is EqualUnmodifiableListView)
      return _idsOfAvailibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// An optionnal callback when the value changed
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final void Function(List<T>?)? onValueChanged;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GetCustomErrorForListDef<T>? getCustomError;

  /// Only applies if maxCount is 1
  @override
  @JsonKey()
  final bool submitFormOnSelect;
  @override
  final SelectInputUiSettings<T>? uiSettings;
  @override
  @JsonKey(toJson: QuizSettings.staticToJson)
  final QuizSettings? quizSettings;

  /// The following fields are mostly usefull for hydrataion
  ///
  /// Ex :
  /// SelectInput<TimeControl>(
  ///   toJsonT: (value) => (value as TimeControl?)?.toJson(),
  ///   fromJsonT: (json) =>
  ///       TimeControl.fromJson(json as Map<String, dynamic>? ?? {}),
  /// ),
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final dynamic Function(dynamic)? toJsonT;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final dynamic Function(dynamic)? fromJsonT;

  @override
  String toString() {
    return 'SelectInput<$T>(id: $id, maxCount: $maxCount, minCount: $minCount, initialValues: $initialValues, availibleValues: $availibleValues, idsOfAvailibleValues: $idsOfAvailibleValues, onValueChanged: $onValueChanged, getCustomError: $getCustomError, submitFormOnSelect: $submitFormOnSelect, uiSettings: $uiSettings, quizSettings: $quizSettings, toJsonT: $toJsonT, fromJsonT: $fromJsonT)';
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
            const DeepCollectionEquality()
                .equals(other._idsOfAvailibleValues, _idsOfAvailibleValues) &&
            (identical(other.onValueChanged, onValueChanged) ||
                other.onValueChanged == onValueChanged) &&
            (identical(other.getCustomError, getCustomError) ||
                other.getCustomError == getCustomError) &&
            (identical(other.submitFormOnSelect, submitFormOnSelect) ||
                other.submitFormOnSelect == submitFormOnSelect) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.quizSettings, quizSettings) ||
                other.quizSettings == quizSettings) &&
            (identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT) &&
            (identical(other.fromJsonT, fromJsonT) ||
                other.fromJsonT == fromJsonT));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      minCount,
      const DeepCollectionEquality().hash(_initialValues),
      const DeepCollectionEquality().hash(_availibleValues),
      const DeepCollectionEquality().hash(_idsOfAvailibleValues),
      onValueChanged,
      getCustomError,
      submitFormOnSelect,
      uiSettings,
      quizSettings,
      toJsonT,
      fromJsonT);

  /// Create a copy of SelectInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final List<T>? initialValues,
      final List<T> availibleValues,
      final List<String>? idsOfAvailibleValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final void Function(List<T>?)? onValueChanged,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final GetCustomErrorForListDef<T>? getCustomError,
      final bool submitFormOnSelect,
      final SelectInputUiSettings<T>? uiSettings,
      @JsonKey(toJson: QuizSettings.staticToJson)
      final QuizSettings? quizSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final dynamic Function(dynamic)? toJsonT,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final dynamic Function(dynamic)? fromJsonT}) = _$SelectInputImpl<T>;
  const _SelectInput._() : super._();

  @override
  String get id;
  @override
  int? get maxCount;
  @override
  int get minCount;
  @override
  List<T>? get initialValues;
  @override
  List<T> get availibleValues;

  /// idsOfAvailibleValues allows to set an identifier to each value.
  /// This way, we keep the advantage of a list : the order
  /// and we gain the advantage of a map : the identifiers
  /// while staying jsonifiable.
  /// If set, the object stored at the path of this input in WoFormValuesCubit
  /// will be the id of the selected value.
  @override
  List<String>? get idsOfAvailibleValues;

  /// An optionnal callback when the value changed
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(List<T>?)? get onValueChanged;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  GetCustomErrorForListDef<T>? get getCustomError;

  /// Only applies if maxCount is 1
  @override
  bool get submitFormOnSelect;
  @override
  SelectInputUiSettings<T>? get uiSettings;
  @override
  @JsonKey(toJson: QuizSettings.staticToJson)
  QuizSettings? get quizSettings;

  /// The following fields are mostly usefull for hydrataion
  ///
  /// Ex :
  /// SelectInput<TimeControl>(
  ///   toJsonT: (value) => (value as TimeControl?)?.toJson(),
  ///   fromJsonT: (json) =>
  ///       TimeControl.fromJson(json as Map<String, dynamic>? ?? {}),
  /// ),
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  dynamic Function(dynamic)? get toJsonT;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  dynamic Function(dynamic)? get fromJsonT;

  /// Create a copy of SelectInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

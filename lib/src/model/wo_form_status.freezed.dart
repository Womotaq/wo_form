// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_form_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WoFormStatus _$WoFormStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return InitialStatus.fromJson(json);
    case 'inProgress':
      return InProgressStatus.fromJson(json);
    case 'invalidValues':
      return InvalidValuesStatus.fromJson(json);
    case 'submitting':
      return SubmittingStatus.fromJson(json);
    case 'submitError':
      return SubmitErrorStatus.fromJson(json);
    case 'submitSuccess':
      return SubmitSuccessStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() invalidValues,
    required TResult Function() submitting,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)
        submitError,
    required TResult Function() submitSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? invalidValues,
    TResult? Function()? submitting,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult? Function()? submitSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? invalidValues,
    TResult Function()? submitting,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult Function()? submitSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStatus value) initial,
    required TResult Function(InProgressStatus value) inProgress,
    required TResult Function(InvalidValuesStatus value) invalidValues,
    required TResult Function(SubmittingStatus value) submitting,
    required TResult Function(SubmitErrorStatus value) submitError,
    required TResult Function(SubmitSuccessStatus value) submitSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStatus value)? initial,
    TResult? Function(InProgressStatus value)? inProgress,
    TResult? Function(InvalidValuesStatus value)? invalidValues,
    TResult? Function(SubmittingStatus value)? submitting,
    TResult? Function(SubmitErrorStatus value)? submitError,
    TResult? Function(SubmitSuccessStatus value)? submitSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStatus value)? initial,
    TResult Function(InProgressStatus value)? inProgress,
    TResult Function(InvalidValuesStatus value)? invalidValues,
    TResult Function(SubmittingStatus value)? submitting,
    TResult Function(SubmitErrorStatus value)? submitError,
    TResult Function(SubmitSuccessStatus value)? submitSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WoFormStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormStatusCopyWith<$Res> {
  factory $WoFormStatusCopyWith(
          WoFormStatus value, $Res Function(WoFormStatus) then) =
      _$WoFormStatusCopyWithImpl<$Res, WoFormStatus>;
}

/// @nodoc
class _$WoFormStatusCopyWithImpl<$Res, $Val extends WoFormStatus>
    implements $WoFormStatusCopyWith<$Res> {
  _$WoFormStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStatusImplCopyWith<$Res> {
  factory _$$InitialStatusImplCopyWith(
          _$InitialStatusImpl value, $Res Function(_$InitialStatusImpl) then) =
      __$$InitialStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStatusImplCopyWithImpl<$Res>
    extends _$WoFormStatusCopyWithImpl<$Res, _$InitialStatusImpl>
    implements _$$InitialStatusImplCopyWith<$Res> {
  __$$InitialStatusImplCopyWithImpl(
      _$InitialStatusImpl _value, $Res Function(_$InitialStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InitialStatusImpl implements InitialStatus {
  const _$InitialStatusImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$InitialStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStatusImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() invalidValues,
    required TResult Function() submitting,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)
        submitError,
    required TResult Function() submitSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? invalidValues,
    TResult? Function()? submitting,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult? Function()? submitSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? invalidValues,
    TResult Function()? submitting,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult Function()? submitSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStatus value) initial,
    required TResult Function(InProgressStatus value) inProgress,
    required TResult Function(InvalidValuesStatus value) invalidValues,
    required TResult Function(SubmittingStatus value) submitting,
    required TResult Function(SubmitErrorStatus value) submitError,
    required TResult Function(SubmitSuccessStatus value) submitSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStatus value)? initial,
    TResult? Function(InProgressStatus value)? inProgress,
    TResult? Function(InvalidValuesStatus value)? invalidValues,
    TResult? Function(SubmittingStatus value)? submitting,
    TResult? Function(SubmitErrorStatus value)? submitError,
    TResult? Function(SubmitSuccessStatus value)? submitSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStatus value)? initial,
    TResult Function(InProgressStatus value)? inProgress,
    TResult Function(InvalidValuesStatus value)? invalidValues,
    TResult Function(SubmittingStatus value)? submitting,
    TResult Function(SubmitErrorStatus value)? submitError,
    TResult Function(SubmitSuccessStatus value)? submitSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialStatusImplToJson(
      this,
    );
  }
}

abstract class InitialStatus implements WoFormStatus {
  const factory InitialStatus() = _$InitialStatusImpl;

  factory InitialStatus.fromJson(Map<String, dynamic> json) =
      _$InitialStatusImpl.fromJson;
}

/// @nodoc
abstract class _$$InProgressStatusImplCopyWith<$Res> {
  factory _$$InProgressStatusImplCopyWith(_$InProgressStatusImpl value,
          $Res Function(_$InProgressStatusImpl) then) =
      __$$InProgressStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressStatusImplCopyWithImpl<$Res>
    extends _$WoFormStatusCopyWithImpl<$Res, _$InProgressStatusImpl>
    implements _$$InProgressStatusImplCopyWith<$Res> {
  __$$InProgressStatusImplCopyWithImpl(_$InProgressStatusImpl _value,
      $Res Function(_$InProgressStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InProgressStatusImpl implements InProgressStatus {
  const _$InProgressStatusImpl({final String? $type})
      : $type = $type ?? 'inProgress';

  factory _$InProgressStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$InProgressStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormStatus.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressStatusImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() invalidValues,
    required TResult Function() submitting,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)
        submitError,
    required TResult Function() submitSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? invalidValues,
    TResult? Function()? submitting,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult? Function()? submitSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? invalidValues,
    TResult Function()? submitting,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult Function()? submitSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStatus value) initial,
    required TResult Function(InProgressStatus value) inProgress,
    required TResult Function(InvalidValuesStatus value) invalidValues,
    required TResult Function(SubmittingStatus value) submitting,
    required TResult Function(SubmitErrorStatus value) submitError,
    required TResult Function(SubmitSuccessStatus value) submitSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStatus value)? initial,
    TResult? Function(InProgressStatus value)? inProgress,
    TResult? Function(InvalidValuesStatus value)? invalidValues,
    TResult? Function(SubmittingStatus value)? submitting,
    TResult? Function(SubmitErrorStatus value)? submitError,
    TResult? Function(SubmitSuccessStatus value)? submitSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStatus value)? initial,
    TResult Function(InProgressStatus value)? inProgress,
    TResult Function(InvalidValuesStatus value)? invalidValues,
    TResult Function(SubmittingStatus value)? submitting,
    TResult Function(SubmitErrorStatus value)? submitError,
    TResult Function(SubmitSuccessStatus value)? submitSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InProgressStatusImplToJson(
      this,
    );
  }
}

abstract class InProgressStatus implements WoFormStatus {
  const factory InProgressStatus() = _$InProgressStatusImpl;

  factory InProgressStatus.fromJson(Map<String, dynamic> json) =
      _$InProgressStatusImpl.fromJson;
}

/// @nodoc
abstract class _$$InvalidValuesStatusImplCopyWith<$Res> {
  factory _$$InvalidValuesStatusImplCopyWith(_$InvalidValuesStatusImpl value,
          $Res Function(_$InvalidValuesStatusImpl) then) =
      __$$InvalidValuesStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidValuesStatusImplCopyWithImpl<$Res>
    extends _$WoFormStatusCopyWithImpl<$Res, _$InvalidValuesStatusImpl>
    implements _$$InvalidValuesStatusImplCopyWith<$Res> {
  __$$InvalidValuesStatusImplCopyWithImpl(_$InvalidValuesStatusImpl _value,
      $Res Function(_$InvalidValuesStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InvalidValuesStatusImpl implements InvalidValuesStatus {
  const _$InvalidValuesStatusImpl({final String? $type})
      : $type = $type ?? 'invalidValues';

  factory _$InvalidValuesStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvalidValuesStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormStatus.invalidValues()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidValuesStatusImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() invalidValues,
    required TResult Function() submitting,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)
        submitError,
    required TResult Function() submitSuccess,
  }) {
    return invalidValues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? invalidValues,
    TResult? Function()? submitting,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult? Function()? submitSuccess,
  }) {
    return invalidValues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? invalidValues,
    TResult Function()? submitting,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult Function()? submitSuccess,
    required TResult orElse(),
  }) {
    if (invalidValues != null) {
      return invalidValues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStatus value) initial,
    required TResult Function(InProgressStatus value) inProgress,
    required TResult Function(InvalidValuesStatus value) invalidValues,
    required TResult Function(SubmittingStatus value) submitting,
    required TResult Function(SubmitErrorStatus value) submitError,
    required TResult Function(SubmitSuccessStatus value) submitSuccess,
  }) {
    return invalidValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStatus value)? initial,
    TResult? Function(InProgressStatus value)? inProgress,
    TResult? Function(InvalidValuesStatus value)? invalidValues,
    TResult? Function(SubmittingStatus value)? submitting,
    TResult? Function(SubmitErrorStatus value)? submitError,
    TResult? Function(SubmitSuccessStatus value)? submitSuccess,
  }) {
    return invalidValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStatus value)? initial,
    TResult Function(InProgressStatus value)? inProgress,
    TResult Function(InvalidValuesStatus value)? invalidValues,
    TResult Function(SubmittingStatus value)? submitting,
    TResult Function(SubmitErrorStatus value)? submitError,
    TResult Function(SubmitSuccessStatus value)? submitSuccess,
    required TResult orElse(),
  }) {
    if (invalidValues != null) {
      return invalidValues(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InvalidValuesStatusImplToJson(
      this,
    );
  }
}

abstract class InvalidValuesStatus implements WoFormStatus {
  const factory InvalidValuesStatus() = _$InvalidValuesStatusImpl;

  factory InvalidValuesStatus.fromJson(Map<String, dynamic> json) =
      _$InvalidValuesStatusImpl.fromJson;
}

/// @nodoc
abstract class _$$SubmittingStatusImplCopyWith<$Res> {
  factory _$$SubmittingStatusImplCopyWith(_$SubmittingStatusImpl value,
          $Res Function(_$SubmittingStatusImpl) then) =
      __$$SubmittingStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittingStatusImplCopyWithImpl<$Res>
    extends _$WoFormStatusCopyWithImpl<$Res, _$SubmittingStatusImpl>
    implements _$$SubmittingStatusImplCopyWith<$Res> {
  __$$SubmittingStatusImplCopyWithImpl(_$SubmittingStatusImpl _value,
      $Res Function(_$SubmittingStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$SubmittingStatusImpl implements SubmittingStatus {
  const _$SubmittingStatusImpl({final String? $type})
      : $type = $type ?? 'submitting';

  factory _$SubmittingStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmittingStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormStatus.submitting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittingStatusImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() invalidValues,
    required TResult Function() submitting,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)
        submitError,
    required TResult Function() submitSuccess,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? invalidValues,
    TResult? Function()? submitting,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult? Function()? submitSuccess,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? invalidValues,
    TResult Function()? submitting,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult Function()? submitSuccess,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStatus value) initial,
    required TResult Function(InProgressStatus value) inProgress,
    required TResult Function(InvalidValuesStatus value) invalidValues,
    required TResult Function(SubmittingStatus value) submitting,
    required TResult Function(SubmitErrorStatus value) submitError,
    required TResult Function(SubmitSuccessStatus value) submitSuccess,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStatus value)? initial,
    TResult? Function(InProgressStatus value)? inProgress,
    TResult? Function(InvalidValuesStatus value)? invalidValues,
    TResult? Function(SubmittingStatus value)? submitting,
    TResult? Function(SubmitErrorStatus value)? submitError,
    TResult? Function(SubmitSuccessStatus value)? submitSuccess,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStatus value)? initial,
    TResult Function(InProgressStatus value)? inProgress,
    TResult Function(InvalidValuesStatus value)? invalidValues,
    TResult Function(SubmittingStatus value)? submitting,
    TResult Function(SubmitErrorStatus value)? submitError,
    TResult Function(SubmitSuccessStatus value)? submitSuccess,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmittingStatusImplToJson(
      this,
    );
  }
}

abstract class SubmittingStatus implements WoFormStatus {
  const factory SubmittingStatus() = _$SubmittingStatusImpl;

  factory SubmittingStatus.fromJson(Map<String, dynamic> json) =
      _$SubmittingStatusImpl.fromJson;
}

/// @nodoc
abstract class _$$SubmitErrorStatusImplCopyWith<$Res> {
  factory _$$SubmitErrorStatusImplCopyWith(_$SubmitErrorStatusImpl value,
          $Res Function(_$SubmitErrorStatusImpl) then) =
      __$$SubmitErrorStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) Object? error,
      @JsonKey(includeToJson: false, includeFromJson: false)
      StackTrace? stackTrace});
}

/// @nodoc
class __$$SubmitErrorStatusImplCopyWithImpl<$Res>
    extends _$WoFormStatusCopyWithImpl<$Res, _$SubmitErrorStatusImpl>
    implements _$$SubmitErrorStatusImplCopyWith<$Res> {
  __$$SubmitErrorStatusImplCopyWithImpl(_$SubmitErrorStatusImpl _value,
      $Res Function(_$SubmitErrorStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$SubmitErrorStatusImpl(
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitErrorStatusImpl implements SubmitErrorStatus {
  const _$SubmitErrorStatusImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.error,
      @JsonKey(includeToJson: false, includeFromJson: false) this.stackTrace,
      final String? $type})
      : $type = $type ?? 'submitError';

  factory _$SubmitErrorStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitErrorStatusImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Object? error;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final StackTrace? stackTrace;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormStatus.submitError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitErrorStatusImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitErrorStatusImplCopyWith<_$SubmitErrorStatusImpl> get copyWith =>
      __$$SubmitErrorStatusImplCopyWithImpl<_$SubmitErrorStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() invalidValues,
    required TResult Function() submitting,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)
        submitError,
    required TResult Function() submitSuccess,
  }) {
    return submitError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? invalidValues,
    TResult? Function()? submitting,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult? Function()? submitSuccess,
  }) {
    return submitError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? invalidValues,
    TResult Function()? submitting,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult Function()? submitSuccess,
    required TResult orElse(),
  }) {
    if (submitError != null) {
      return submitError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStatus value) initial,
    required TResult Function(InProgressStatus value) inProgress,
    required TResult Function(InvalidValuesStatus value) invalidValues,
    required TResult Function(SubmittingStatus value) submitting,
    required TResult Function(SubmitErrorStatus value) submitError,
    required TResult Function(SubmitSuccessStatus value) submitSuccess,
  }) {
    return submitError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStatus value)? initial,
    TResult? Function(InProgressStatus value)? inProgress,
    TResult? Function(InvalidValuesStatus value)? invalidValues,
    TResult? Function(SubmittingStatus value)? submitting,
    TResult? Function(SubmitErrorStatus value)? submitError,
    TResult? Function(SubmitSuccessStatus value)? submitSuccess,
  }) {
    return submitError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStatus value)? initial,
    TResult Function(InProgressStatus value)? inProgress,
    TResult Function(InvalidValuesStatus value)? invalidValues,
    TResult Function(SubmittingStatus value)? submitting,
    TResult Function(SubmitErrorStatus value)? submitError,
    TResult Function(SubmitSuccessStatus value)? submitSuccess,
    required TResult orElse(),
  }) {
    if (submitError != null) {
      return submitError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitErrorStatusImplToJson(
      this,
    );
  }
}

abstract class SubmitErrorStatus implements WoFormStatus {
  const factory SubmitErrorStatus(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      final Object? error,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final StackTrace? stackTrace}) = _$SubmitErrorStatusImpl;

  factory SubmitErrorStatus.fromJson(Map<String, dynamic> json) =
      _$SubmitErrorStatusImpl.fromJson;

  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? get error;
  @JsonKey(includeToJson: false, includeFromJson: false)
  StackTrace? get stackTrace;

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitErrorStatusImplCopyWith<_$SubmitErrorStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSuccessStatusImplCopyWith<$Res> {
  factory _$$SubmitSuccessStatusImplCopyWith(_$SubmitSuccessStatusImpl value,
          $Res Function(_$SubmitSuccessStatusImpl) then) =
      __$$SubmitSuccessStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitSuccessStatusImplCopyWithImpl<$Res>
    extends _$WoFormStatusCopyWithImpl<$Res, _$SubmitSuccessStatusImpl>
    implements _$$SubmitSuccessStatusImplCopyWith<$Res> {
  __$$SubmitSuccessStatusImplCopyWithImpl(_$SubmitSuccessStatusImpl _value,
      $Res Function(_$SubmitSuccessStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$SubmitSuccessStatusImpl implements SubmitSuccessStatus {
  const _$SubmitSuccessStatusImpl({final String? $type})
      : $type = $type ?? 'submitSuccess';

  factory _$SubmitSuccessStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitSuccessStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormStatus.submitSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSuccessStatusImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() invalidValues,
    required TResult Function() submitting,
    required TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)
        submitError,
    required TResult Function() submitSuccess,
  }) {
    return submitSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? invalidValues,
    TResult? Function()? submitting,
    TResult? Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult? Function()? submitSuccess,
  }) {
    return submitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? invalidValues,
    TResult Function()? submitting,
    TResult Function(
            @JsonKey(includeToJson: false, includeFromJson: false)
            Object? error,
            @JsonKey(includeToJson: false, includeFromJson: false)
            StackTrace? stackTrace)?
        submitError,
    TResult Function()? submitSuccess,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialStatus value) initial,
    required TResult Function(InProgressStatus value) inProgress,
    required TResult Function(InvalidValuesStatus value) invalidValues,
    required TResult Function(SubmittingStatus value) submitting,
    required TResult Function(SubmitErrorStatus value) submitError,
    required TResult Function(SubmitSuccessStatus value) submitSuccess,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialStatus value)? initial,
    TResult? Function(InProgressStatus value)? inProgress,
    TResult? Function(InvalidValuesStatus value)? invalidValues,
    TResult? Function(SubmittingStatus value)? submitting,
    TResult? Function(SubmitErrorStatus value)? submitError,
    TResult? Function(SubmitSuccessStatus value)? submitSuccess,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialStatus value)? initial,
    TResult Function(InProgressStatus value)? inProgress,
    TResult Function(InvalidValuesStatus value)? invalidValues,
    TResult Function(SubmittingStatus value)? submitting,
    TResult Function(SubmitErrorStatus value)? submitError,
    TResult Function(SubmitSuccessStatus value)? submitSuccess,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitSuccessStatusImplToJson(
      this,
    );
  }
}

abstract class SubmitSuccessStatus implements WoFormStatus {
  const factory SubmitSuccessStatus() = _$SubmitSuccessStatusImpl;

  factory SubmitSuccessStatus.fromJson(Map<String, dynamic> json) =
      _$SubmitSuccessStatusImpl.fromJson;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WoFormHeaderData {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;

  /// Create a copy of WoFormHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WoFormHeaderDataCopyWith<WoFormHeaderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormHeaderDataCopyWith<$Res> {
  factory $WoFormHeaderDataCopyWith(
          WoFormHeaderData value, $Res Function(WoFormHeaderData) then) =
      _$WoFormHeaderDataCopyWithImpl<$Res, WoFormHeaderData>;
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class _$WoFormHeaderDataCopyWithImpl<$Res, $Val extends WoFormHeaderData>
    implements $WoFormHeaderDataCopyWith<$Res> {
  _$WoFormHeaderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WoFormHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WoFormHeaderDataImplCopyWith<$Res>
    implements $WoFormHeaderDataCopyWith<$Res> {
  factory _$$WoFormHeaderDataImplCopyWith(_$WoFormHeaderDataImpl value,
          $Res Function(_$WoFormHeaderDataImpl) then) =
      __$$WoFormHeaderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class __$$WoFormHeaderDataImplCopyWithImpl<$Res>
    extends _$WoFormHeaderDataCopyWithImpl<$Res, _$WoFormHeaderDataImpl>
    implements _$$WoFormHeaderDataImplCopyWith<$Res> {
  __$$WoFormHeaderDataImplCopyWithImpl(_$WoFormHeaderDataImpl _value,
      $Res Function(_$WoFormHeaderDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_$WoFormHeaderDataImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WoFormHeaderDataImpl implements _WoFormHeaderData {
  const _$WoFormHeaderDataImpl({this.labelText, this.helperText});

  @override
  final String? labelText;
  @override
  final String? helperText;

  @override
  String toString() {
    return 'WoFormHeaderData(labelText: $labelText, helperText: $helperText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormHeaderDataImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText);

  /// Create a copy of WoFormHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WoFormHeaderDataImplCopyWith<_$WoFormHeaderDataImpl> get copyWith =>
      __$$WoFormHeaderDataImplCopyWithImpl<_$WoFormHeaderDataImpl>(
          this, _$identity);
}

abstract class _WoFormHeaderData implements WoFormHeaderData {
  const factory _WoFormHeaderData(
      {final String? labelText,
      final String? helperText}) = _$WoFormHeaderDataImpl;

  @override
  String? get labelText;
  @override
  String? get helperText;

  /// Create a copy of WoFormHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WoFormHeaderDataImplCopyWith<_$WoFormHeaderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WoFormInputHeaderData {
  String get path => throw _privateConstructorUsedError;
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;
  Widget? get trailing => throw _privateConstructorUsedError;
  VoidCallback? get onTap => throw _privateConstructorUsedError;
  bool get shrinkWrap => throw _privateConstructorUsedError;

  /// Create a copy of WoFormInputHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WoFormInputHeaderDataCopyWith<WoFormInputHeaderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormInputHeaderDataCopyWith<$Res> {
  factory $WoFormInputHeaderDataCopyWith(WoFormInputHeaderData value,
          $Res Function(WoFormInputHeaderData) then) =
      _$WoFormInputHeaderDataCopyWithImpl<$Res, WoFormInputHeaderData>;
  @useResult
  $Res call(
      {String path,
      String? labelText,
      String? helperText,
      String? errorText,
      Widget? trailing,
      VoidCallback? onTap,
      bool shrinkWrap});
}

/// @nodoc
class _$WoFormInputHeaderDataCopyWithImpl<$Res,
        $Val extends WoFormInputHeaderData>
    implements $WoFormInputHeaderDataCopyWith<$Res> {
  _$WoFormInputHeaderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WoFormInputHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? errorText = freezed,
    Object? trailing = freezed,
    Object? onTap = freezed,
    Object? shrinkWrap = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      trailing: freezed == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      shrinkWrap: null == shrinkWrap
          ? _value.shrinkWrap
          : shrinkWrap // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WoFormInputHeaderDataImplCopyWith<$Res>
    implements $WoFormInputHeaderDataCopyWith<$Res> {
  factory _$$WoFormInputHeaderDataImplCopyWith(
          _$WoFormInputHeaderDataImpl value,
          $Res Function(_$WoFormInputHeaderDataImpl) then) =
      __$$WoFormInputHeaderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      String? labelText,
      String? helperText,
      String? errorText,
      Widget? trailing,
      VoidCallback? onTap,
      bool shrinkWrap});
}

/// @nodoc
class __$$WoFormInputHeaderDataImplCopyWithImpl<$Res>
    extends _$WoFormInputHeaderDataCopyWithImpl<$Res,
        _$WoFormInputHeaderDataImpl>
    implements _$$WoFormInputHeaderDataImplCopyWith<$Res> {
  __$$WoFormInputHeaderDataImplCopyWithImpl(_$WoFormInputHeaderDataImpl _value,
      $Res Function(_$WoFormInputHeaderDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormInputHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? errorText = freezed,
    Object? trailing = freezed,
    Object? onTap = freezed,
    Object? shrinkWrap = null,
  }) {
    return _then(_$WoFormInputHeaderDataImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      trailing: freezed == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      shrinkWrap: null == shrinkWrap
          ? _value.shrinkWrap
          : shrinkWrap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WoFormInputHeaderDataImpl implements _WoFormInputHeaderData {
  const _$WoFormInputHeaderDataImpl(
      {required this.path,
      this.labelText,
      this.helperText,
      this.errorText,
      this.trailing,
      this.onTap,
      this.shrinkWrap = true});

  @override
  final String path;
  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final String? errorText;
  @override
  final Widget? trailing;
  @override
  final VoidCallback? onTap;
  @override
  @JsonKey()
  final bool shrinkWrap;

  @override
  String toString() {
    return 'WoFormInputHeaderData(path: $path, labelText: $labelText, helperText: $helperText, errorText: $errorText, trailing: $trailing, onTap: $onTap, shrinkWrap: $shrinkWrap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormInputHeaderDataImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.trailing, trailing) ||
                other.trailing == trailing) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.shrinkWrap, shrinkWrap) ||
                other.shrinkWrap == shrinkWrap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, labelText, helperText,
      errorText, trailing, onTap, shrinkWrap);

  /// Create a copy of WoFormInputHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WoFormInputHeaderDataImplCopyWith<_$WoFormInputHeaderDataImpl>
      get copyWith => __$$WoFormInputHeaderDataImplCopyWithImpl<
          _$WoFormInputHeaderDataImpl>(this, _$identity);
}

abstract class _WoFormInputHeaderData implements WoFormInputHeaderData {
  const factory _WoFormInputHeaderData(
      {required final String path,
      final String? labelText,
      final String? helperText,
      final String? errorText,
      final Widget? trailing,
      final VoidCallback? onTap,
      final bool shrinkWrap}) = _$WoFormInputHeaderDataImpl;

  @override
  String get path;
  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  String? get errorText;
  @override
  Widget? get trailing;
  @override
  VoidCallback? get onTap;
  @override
  bool get shrinkWrap;

  /// Create a copy of WoFormInputHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WoFormInputHeaderDataImplCopyWith<_$WoFormInputHeaderDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WoFieldData<I, T, U> {
  String get path => throw _privateConstructorUsedError;
  I get input => throw _privateConstructorUsedError;
  T? get value => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;
  U get uiSettings => throw _privateConstructorUsedError;

  /// Null means locked field
  void Function(T?)? get onValueChanged => throw _privateConstructorUsedError;

  /// Create a copy of WoFieldData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WoFieldDataCopyWith<I, T, U, WoFieldData<I, T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFieldDataCopyWith<I, T, U, $Res> {
  factory $WoFieldDataCopyWith(WoFieldData<I, T, U> value,
          $Res Function(WoFieldData<I, T, U>) then) =
      _$WoFieldDataCopyWithImpl<I, T, U, $Res, WoFieldData<I, T, U>>;
  @useResult
  $Res call(
      {String path,
      I input,
      T? value,
      String? errorText,
      U uiSettings,
      void Function(T?)? onValueChanged});
}

/// @nodoc
class _$WoFieldDataCopyWithImpl<I, T, U, $Res,
        $Val extends WoFieldData<I, T, U>>
    implements $WoFieldDataCopyWith<I, T, U, $Res> {
  _$WoFieldDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WoFieldData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? input = freezed,
    Object? value = freezed,
    Object? errorText = freezed,
    Object? uiSettings = freezed,
    Object? onValueChanged = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as I,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      uiSettings: freezed == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as U,
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(T?)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WoFieldDataImplCopyWith<I, T, U, $Res>
    implements $WoFieldDataCopyWith<I, T, U, $Res> {
  factory _$$WoFieldDataImplCopyWith(_$WoFieldDataImpl<I, T, U> value,
          $Res Function(_$WoFieldDataImpl<I, T, U>) then) =
      __$$WoFieldDataImplCopyWithImpl<I, T, U, $Res>;
  @override
  @useResult
  $Res call(
      {String path,
      I input,
      T? value,
      String? errorText,
      U uiSettings,
      void Function(T?)? onValueChanged});
}

/// @nodoc
class __$$WoFieldDataImplCopyWithImpl<I, T, U, $Res>
    extends _$WoFieldDataCopyWithImpl<I, T, U, $Res, _$WoFieldDataImpl<I, T, U>>
    implements _$$WoFieldDataImplCopyWith<I, T, U, $Res> {
  __$$WoFieldDataImplCopyWithImpl(_$WoFieldDataImpl<I, T, U> _value,
      $Res Function(_$WoFieldDataImpl<I, T, U>) _then)
      : super(_value, _then);

  /// Create a copy of WoFieldData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? input = freezed,
    Object? value = freezed,
    Object? errorText = freezed,
    Object? uiSettings = freezed,
    Object? onValueChanged = freezed,
  }) {
    return _then(_$WoFieldDataImpl<I, T, U>(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as I,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      uiSettings: freezed == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as U,
      onValueChanged: freezed == onValueChanged
          ? _value.onValueChanged
          : onValueChanged // ignore: cast_nullable_to_non_nullable
              as void Function(T?)?,
    ));
  }
}

/// @nodoc

class _$WoFieldDataImpl<I, T, U> implements _WoFieldData<I, T, U> {
  const _$WoFieldDataImpl(
      {required this.path,
      required this.input,
      required this.value,
      required this.errorText,
      required this.uiSettings,
      required this.onValueChanged});

  @override
  final String path;
  @override
  final I input;
  @override
  final T? value;
  @override
  final String? errorText;
  @override
  final U uiSettings;

  /// Null means locked field
  @override
  final void Function(T?)? onValueChanged;

  @override
  String toString() {
    return 'WoFieldData<$I, $T, $U>(path: $path, input: $input, value: $value, errorText: $errorText, uiSettings: $uiSettings, onValueChanged: $onValueChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFieldDataImpl<I, T, U> &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other.input, input) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            const DeepCollectionEquality()
                .equals(other.uiSettings, uiSettings) &&
            (identical(other.onValueChanged, onValueChanged) ||
                other.onValueChanged == onValueChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      const DeepCollectionEquality().hash(input),
      const DeepCollectionEquality().hash(value),
      errorText,
      const DeepCollectionEquality().hash(uiSettings),
      onValueChanged);

  /// Create a copy of WoFieldData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WoFieldDataImplCopyWith<I, T, U, _$WoFieldDataImpl<I, T, U>>
      get copyWith =>
          __$$WoFieldDataImplCopyWithImpl<I, T, U, _$WoFieldDataImpl<I, T, U>>(
              this, _$identity);
}

abstract class _WoFieldData<I, T, U> implements WoFieldData<I, T, U> {
  const factory _WoFieldData(
          {required final String path,
          required final I input,
          required final T? value,
          required final String? errorText,
          required final U uiSettings,
          required final void Function(T?)? onValueChanged}) =
      _$WoFieldDataImpl<I, T, U>;

  @override
  String get path;
  @override
  I get input;
  @override
  T? get value;
  @override
  String? get errorText;
  @override
  U get uiSettings;

  /// Null means locked field
  @override
  void Function(T?)? get onValueChanged;

  /// Create a copy of WoFieldData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WoFieldDataImplCopyWith<I, T, U, _$WoFieldDataImpl<I, T, U>>
      get copyWith => throw _privateConstructorUsedError;
}

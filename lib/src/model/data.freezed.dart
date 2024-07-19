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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$WoFormInputHeaderDataImplCopyWith<_$WoFormInputHeaderDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

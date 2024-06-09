// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooleanInputUiSettings _$BooleanInputUiSettingsFromJson(
    Map<String, dynamic> json) {
  return _BooleanInputUiSettings.fromJson(json);
}

/// @nodoc
mixin _$BooleanInputUiSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  BooleanFieldOnOffType? get onOffType => throw _privateConstructorUsedError;
  ListTileControlAffinity? get onOffPosition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooleanInputUiSettingsCopyWith<BooleanInputUiSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanInputUiSettingsCopyWith<$Res> {
  factory $BooleanInputUiSettingsCopyWith(BooleanInputUiSettings value,
          $Res Function(BooleanInputUiSettings) then) =
      _$BooleanInputUiSettingsCopyWithImpl<$Res, BooleanInputUiSettings>;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      BooleanFieldOnOffType? onOffType,
      ListTileControlAffinity? onOffPosition});
}

/// @nodoc
class _$BooleanInputUiSettingsCopyWithImpl<$Res,
        $Val extends BooleanInputUiSettings>
    implements $BooleanInputUiSettingsCopyWith<$Res> {
  _$BooleanInputUiSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? onOffType = freezed,
    Object? onOffPosition = freezed,
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
      onOffType: freezed == onOffType
          ? _value.onOffType
          : onOffType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldOnOffType?,
      onOffPosition: freezed == onOffPosition
          ? _value.onOffPosition
          : onOffPosition // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooleanInputUiSettingsImplCopyWith<$Res>
    implements $BooleanInputUiSettingsCopyWith<$Res> {
  factory _$$BooleanInputUiSettingsImplCopyWith(
          _$BooleanInputUiSettingsImpl value,
          $Res Function(_$BooleanInputUiSettingsImpl) then) =
      __$$BooleanInputUiSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      BooleanFieldOnOffType? onOffType,
      ListTileControlAffinity? onOffPosition});
}

/// @nodoc
class __$$BooleanInputUiSettingsImplCopyWithImpl<$Res>
    extends _$BooleanInputUiSettingsCopyWithImpl<$Res,
        _$BooleanInputUiSettingsImpl>
    implements _$$BooleanInputUiSettingsImplCopyWith<$Res> {
  __$$BooleanInputUiSettingsImplCopyWithImpl(
      _$BooleanInputUiSettingsImpl _value,
      $Res Function(_$BooleanInputUiSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? onOffType = freezed,
    Object? onOffPosition = freezed,
  }) {
    return _then(_$BooleanInputUiSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      onOffType: freezed == onOffType
          ? _value.onOffType
          : onOffType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldOnOffType?,
      onOffPosition: freezed == onOffPosition
          ? _value.onOffPosition
          : onOffPosition // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanInputUiSettingsImpl extends _BooleanInputUiSettings {
  const _$BooleanInputUiSettingsImpl(
      {this.labelText, this.helperText, this.onOffType, this.onOffPosition})
      : super._();

  factory _$BooleanInputUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanInputUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final BooleanFieldOnOffType? onOffType;
  @override
  final ListTileControlAffinity? onOffPosition;

  @override
  String toString() {
    return 'BooleanInputUiSettings(labelText: $labelText, helperText: $helperText, onOffType: $onOffType, onOffPosition: $onOffPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanInputUiSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.onOffType, onOffType) ||
                other.onOffType == onOffType) &&
            (identical(other.onOffPosition, onOffPosition) ||
                other.onOffPosition == onOffPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, helperText, onOffType, onOffPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanInputUiSettingsImplCopyWith<_$BooleanInputUiSettingsImpl>
      get copyWith => __$$BooleanInputUiSettingsImplCopyWithImpl<
          _$BooleanInputUiSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanInputUiSettingsImplToJson(
      this,
    );
  }
}

abstract class _BooleanInputUiSettings extends BooleanInputUiSettings {
  const factory _BooleanInputUiSettings(
          {final String? labelText,
          final String? helperText,
          final BooleanFieldOnOffType? onOffType,
          final ListTileControlAffinity? onOffPosition}) =
      _$BooleanInputUiSettingsImpl;
  const _BooleanInputUiSettings._() : super._();

  factory _BooleanInputUiSettings.fromJson(Map<String, dynamic> json) =
      _$BooleanInputUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  BooleanFieldOnOffType? get onOffType;
  @override
  ListTileControlAffinity? get onOffPosition;
  @override
  @JsonKey(ignore: true)
  _$$BooleanInputUiSettingsImplCopyWith<_$BooleanInputUiSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InputsNodeUiSettings _$InputsNodeUiSettingsFromJson(Map<String, dynamic> json) {
  return _InputsNodeUiSettings.fromJson(json);
}

/// @nodoc
mixin _$InputsNodeUiSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  NodeDisplayMode? get displayMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputsNodeUiSettingsCopyWith<InputsNodeUiSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputsNodeUiSettingsCopyWith<$Res> {
  factory $InputsNodeUiSettingsCopyWith(InputsNodeUiSettings value,
          $Res Function(InputsNodeUiSettings) then) =
      _$InputsNodeUiSettingsCopyWithImpl<$Res, InputsNodeUiSettings>;
  @useResult
  $Res call(
      {String? labelText, String? helperText, NodeDisplayMode? displayMode});
}

/// @nodoc
class _$InputsNodeUiSettingsCopyWithImpl<$Res,
        $Val extends InputsNodeUiSettings>
    implements $InputsNodeUiSettingsCopyWith<$Res> {
  _$InputsNodeUiSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? displayMode = freezed,
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
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as NodeDisplayMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputsNodeUiSettingsImplCopyWith<$Res>
    implements $InputsNodeUiSettingsCopyWith<$Res> {
  factory _$$InputsNodeUiSettingsImplCopyWith(_$InputsNodeUiSettingsImpl value,
          $Res Function(_$InputsNodeUiSettingsImpl) then) =
      __$$InputsNodeUiSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText, String? helperText, NodeDisplayMode? displayMode});
}

/// @nodoc
class __$$InputsNodeUiSettingsImplCopyWithImpl<$Res>
    extends _$InputsNodeUiSettingsCopyWithImpl<$Res, _$InputsNodeUiSettingsImpl>
    implements _$$InputsNodeUiSettingsImplCopyWith<$Res> {
  __$$InputsNodeUiSettingsImplCopyWithImpl(_$InputsNodeUiSettingsImpl _value,
      $Res Function(_$InputsNodeUiSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_$InputsNodeUiSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as NodeDisplayMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputsNodeUiSettingsImpl extends _InputsNodeUiSettings {
  const _$InputsNodeUiSettingsImpl(
      {this.labelText, this.helperText, this.displayMode})
      : super._();

  factory _$InputsNodeUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputsNodeUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final NodeDisplayMode? displayMode;

  @override
  String toString() {
    return 'InputsNodeUiSettings(labelText: $labelText, helperText: $helperText, displayMode: $displayMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputsNodeUiSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, helperText, displayMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputsNodeUiSettingsImplCopyWith<_$InputsNodeUiSettingsImpl>
      get copyWith =>
          __$$InputsNodeUiSettingsImplCopyWithImpl<_$InputsNodeUiSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputsNodeUiSettingsImplToJson(
      this,
    );
  }
}

abstract class _InputsNodeUiSettings extends InputsNodeUiSettings {
  const factory _InputsNodeUiSettings(
      {final String? labelText,
      final String? helperText,
      final NodeDisplayMode? displayMode}) = _$InputsNodeUiSettingsImpl;
  const _InputsNodeUiSettings._() : super._();

  factory _InputsNodeUiSettings.fromJson(Map<String, dynamic> json) =
      _$InputsNodeUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  NodeDisplayMode? get displayMode;
  @override
  @JsonKey(ignore: true)
  _$$InputsNodeUiSettingsImplCopyWith<_$InputsNodeUiSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NumInputUiSettings _$NumInputUiSettingsFromJson(Map<String, dynamic> json) {
  return _NumInputUiSettings.fromJson(json);
}

/// @nodoc
mixin _$NumInputUiSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumInputUiSettingsCopyWith<NumInputUiSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumInputUiSettingsCopyWith<$Res> {
  factory $NumInputUiSettingsCopyWith(
          NumInputUiSettings value, $Res Function(NumInputUiSettings) then) =
      _$NumInputUiSettingsCopyWithImpl<$Res, NumInputUiSettings>;
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class _$NumInputUiSettingsCopyWithImpl<$Res, $Val extends NumInputUiSettings>
    implements $NumInputUiSettingsCopyWith<$Res> {
  _$NumInputUiSettingsCopyWithImpl(this._value, this._then);

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
abstract class _$$NumInputUiSettingsImplCopyWith<$Res>
    implements $NumInputUiSettingsCopyWith<$Res> {
  factory _$$NumInputUiSettingsImplCopyWith(_$NumInputUiSettingsImpl value,
          $Res Function(_$NumInputUiSettingsImpl) then) =
      __$$NumInputUiSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class __$$NumInputUiSettingsImplCopyWithImpl<$Res>
    extends _$NumInputUiSettingsCopyWithImpl<$Res, _$NumInputUiSettingsImpl>
    implements _$$NumInputUiSettingsImplCopyWith<$Res> {
  __$$NumInputUiSettingsImplCopyWithImpl(_$NumInputUiSettingsImpl _value,
      $Res Function(_$NumInputUiSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_$NumInputUiSettingsImpl(
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
@JsonSerializable()
class _$NumInputUiSettingsImpl extends _NumInputUiSettings {
  const _$NumInputUiSettingsImpl({this.labelText, this.helperText}) : super._();

  factory _$NumInputUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumInputUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;

  @override
  String toString() {
    return 'NumInputUiSettings(labelText: $labelText, helperText: $helperText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumInputUiSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumInputUiSettingsImplCopyWith<_$NumInputUiSettingsImpl> get copyWith =>
      __$$NumInputUiSettingsImplCopyWithImpl<_$NumInputUiSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NumInputUiSettingsImplToJson(
      this,
    );
  }
}

abstract class _NumInputUiSettings extends NumInputUiSettings {
  const factory _NumInputUiSettings(
      {final String? labelText,
      final String? helperText}) = _$NumInputUiSettingsImpl;
  const _NumInputUiSettings._() : super._();

  factory _NumInputUiSettings.fromJson(Map<String, dynamic> json) =
      _$NumInputUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  @JsonKey(ignore: true)
  _$$NumInputUiSettingsImplCopyWith<_$NumInputUiSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectInputUiSettings<T> _$SelectInputUiSettingsFromJson<T>(
    Map<String, dynamic> json) {
  return _SelectInputUiSettings<T>.fromJson(json);
}

/// @nodoc
mixin _$SelectInputUiSettings<T> {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  SelectFieldDisplayMode? get displayMode => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget Function(T?)? get valueBuilder => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget? Function(T)? get helpValueBuilder =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  double Function(String, T)? get searcher =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectInputUiSettingsCopyWith<T, SelectInputUiSettings<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectInputUiSettingsCopyWith<T, $Res> {
  factory $SelectInputUiSettingsCopyWith(SelectInputUiSettings<T> value,
          $Res Function(SelectInputUiSettings<T>) then) =
      _$SelectInputUiSettingsCopyWithImpl<T, $Res, SelectInputUiSettings<T>>;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      SelectFieldDisplayMode? displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      double Function(String, T)? searcher});
}

/// @nodoc
class _$SelectInputUiSettingsCopyWithImpl<T, $Res,
        $Val extends SelectInputUiSettings<T>>
    implements $SelectInputUiSettingsCopyWith<T, $Res> {
  _$SelectInputUiSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? displayMode = freezed,
    Object? valueBuilder = freezed,
    Object? helpValueBuilder = freezed,
    Object? searcher = freezed,
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
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
      valueBuilder: freezed == valueBuilder
          ? _value.valueBuilder
          : valueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(T?)?,
      helpValueBuilder: freezed == helpValueBuilder
          ? _value.helpValueBuilder
          : helpValueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget? Function(T)?,
      searcher: freezed == searcher
          ? _value.searcher
          : searcher // ignore: cast_nullable_to_non_nullable
              as double Function(String, T)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectInputUiSettingsImplCopyWith<T, $Res>
    implements $SelectInputUiSettingsCopyWith<T, $Res> {
  factory _$$SelectInputUiSettingsImplCopyWith(
          _$SelectInputUiSettingsImpl<T> value,
          $Res Function(_$SelectInputUiSettingsImpl<T>) then) =
      __$$SelectInputUiSettingsImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      SelectFieldDisplayMode? displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      double Function(String, T)? searcher});
}

/// @nodoc
class __$$SelectInputUiSettingsImplCopyWithImpl<T, $Res>
    extends _$SelectInputUiSettingsCopyWithImpl<T, $Res,
        _$SelectInputUiSettingsImpl<T>>
    implements _$$SelectInputUiSettingsImplCopyWith<T, $Res> {
  __$$SelectInputUiSettingsImplCopyWithImpl(
      _$SelectInputUiSettingsImpl<T> _value,
      $Res Function(_$SelectInputUiSettingsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? displayMode = freezed,
    Object? valueBuilder = freezed,
    Object? helpValueBuilder = freezed,
    Object? searcher = freezed,
  }) {
    return _then(_$SelectInputUiSettingsImpl<T>(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
      valueBuilder: freezed == valueBuilder
          ? _value.valueBuilder
          : valueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(T?)?,
      helpValueBuilder: freezed == helpValueBuilder
          ? _value.helpValueBuilder
          : helpValueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget? Function(T)?,
      searcher: freezed == searcher
          ? _value.searcher
          : searcher // ignore: cast_nullable_to_non_nullable
              as double Function(String, T)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectInputUiSettingsImpl<T> extends _SelectInputUiSettings<T> {
  const _$SelectInputUiSettingsImpl(
      {this.labelText,
      this.helperText,
      this.displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false) this.valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false) this.searcher})
      : super._();

  factory _$SelectInputUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectInputUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final SelectFieldDisplayMode? displayMode;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Widget Function(T?)? valueBuilder;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Widget? Function(T)? helpValueBuilder;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double Function(String, T)? searcher;

  @override
  String toString() {
    return 'SelectInputUiSettings<$T>(labelText: $labelText, helperText: $helperText, displayMode: $displayMode, valueBuilder: $valueBuilder, helpValueBuilder: $helpValueBuilder, searcher: $searcher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectInputUiSettingsImpl<T> &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode) &&
            (identical(other.valueBuilder, valueBuilder) ||
                other.valueBuilder == valueBuilder) &&
            (identical(other.helpValueBuilder, helpValueBuilder) ||
                other.helpValueBuilder == helpValueBuilder) &&
            (identical(other.searcher, searcher) ||
                other.searcher == searcher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      displayMode, valueBuilder, helpValueBuilder, searcher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectInputUiSettingsImplCopyWith<T, _$SelectInputUiSettingsImpl<T>>
      get copyWith => __$$SelectInputUiSettingsImplCopyWithImpl<T,
          _$SelectInputUiSettingsImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectInputUiSettingsImplToJson<T>(
      this,
    );
  }
}

abstract class _SelectInputUiSettings<T> extends SelectInputUiSettings<T> {
  const factory _SelectInputUiSettings(
          {final String? labelText,
          final String? helperText,
          final SelectFieldDisplayMode? displayMode,
          @JsonKey(includeFromJson: false, includeToJson: false)
          final Widget Function(T?)? valueBuilder,
          @JsonKey(includeFromJson: false, includeToJson: false)
          final Widget? Function(T)? helpValueBuilder,
          @JsonKey(includeFromJson: false, includeToJson: false)
          final double Function(String, T)? searcher}) =
      _$SelectInputUiSettingsImpl<T>;
  const _SelectInputUiSettings._() : super._();

  factory _SelectInputUiSettings.fromJson(Map<String, dynamic> json) =
      _$SelectInputUiSettingsImpl<T>.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  SelectFieldDisplayMode? get displayMode;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget Function(T?)? get valueBuilder;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget? Function(T)? get helpValueBuilder;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  double Function(String, T)? get searcher;
  @override
  @JsonKey(ignore: true)
  _$$SelectInputUiSettingsImplCopyWith<T, _$SelectInputUiSettingsImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

StringInputUiSettings _$StringInputUiSettingsFromJson(
    Map<String, dynamic> json) {
  return _StringInputUiSettings.fromJson(json);
}

/// @nodoc
mixin _$StringInputUiSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get hintText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  StringFieldAction? get action => throw _privateConstructorUsedError;
  bool? get submitFormOnFieldSubmitted => throw _privateConstructorUsedError;
  @TextInputTypeConverter()
  TextInputType? get keyboardType => throw _privateConstructorUsedError;
  bool? get obscureText => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  List<String>? get autofillHints => throw _privateConstructorUsedError;
  bool? get autofocus => throw _privateConstructorUsedError;
  TextInputAction? get textInputAction => throw _privateConstructorUsedError;
  TextCapitalization? get textCapitalization =>
      throw _privateConstructorUsedError;
  int? get maxLines => throw _privateConstructorUsedError;
  String? get invalidRegexMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringInputUiSettingsCopyWith<StringInputUiSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringInputUiSettingsCopyWith<$Res> {
  factory $StringInputUiSettingsCopyWith(StringInputUiSettings value,
          $Res Function(StringInputUiSettings) then) =
      _$StringInputUiSettingsCopyWithImpl<$Res, StringInputUiSettings>;
  @useResult
  $Res call(
      {String? labelText,
      String? hintText,
      String? helperText,
      StringFieldAction? action,
      bool? submitFormOnFieldSubmitted,
      @TextInputTypeConverter() TextInputType? keyboardType,
      bool? obscureText,
      bool? autocorrect,
      List<String>? autofillHints,
      bool? autofocus,
      TextInputAction? textInputAction,
      TextCapitalization? textCapitalization,
      int? maxLines,
      String? invalidRegexMessage});
}

/// @nodoc
class _$StringInputUiSettingsCopyWithImpl<$Res,
        $Val extends StringInputUiSettings>
    implements $StringInputUiSettingsCopyWith<$Res> {
  _$StringInputUiSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? hintText = freezed,
    Object? helperText = freezed,
    Object? action = freezed,
    Object? submitFormOnFieldSubmitted = freezed,
    Object? keyboardType = freezed,
    Object? obscureText = freezed,
    Object? autocorrect = freezed,
    Object? autofillHints = freezed,
    Object? autofocus = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = freezed,
    Object? maxLines = freezed,
    Object? invalidRegexMessage = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StringFieldAction?,
      submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted
          ? _value.submitFormOnFieldSubmitted
          : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _value.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      obscureText: freezed == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: freezed == autocorrect
          ? _value.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofillHints: freezed == autofillHints
          ? _value.autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autofocus: freezed == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      textInputAction: freezed == textInputAction
          ? _value.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: freezed == textCapitalization
          ? _value.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidRegexMessage: freezed == invalidRegexMessage
          ? _value.invalidRegexMessage
          : invalidRegexMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringInputUiSettingsImplCopyWith<$Res>
    implements $StringInputUiSettingsCopyWith<$Res> {
  factory _$$StringInputUiSettingsImplCopyWith(
          _$StringInputUiSettingsImpl value,
          $Res Function(_$StringInputUiSettingsImpl) then) =
      __$$StringInputUiSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? hintText,
      String? helperText,
      StringFieldAction? action,
      bool? submitFormOnFieldSubmitted,
      @TextInputTypeConverter() TextInputType? keyboardType,
      bool? obscureText,
      bool? autocorrect,
      List<String>? autofillHints,
      bool? autofocus,
      TextInputAction? textInputAction,
      TextCapitalization? textCapitalization,
      int? maxLines,
      String? invalidRegexMessage});
}

/// @nodoc
class __$$StringInputUiSettingsImplCopyWithImpl<$Res>
    extends _$StringInputUiSettingsCopyWithImpl<$Res,
        _$StringInputUiSettingsImpl>
    implements _$$StringInputUiSettingsImplCopyWith<$Res> {
  __$$StringInputUiSettingsImplCopyWithImpl(_$StringInputUiSettingsImpl _value,
      $Res Function(_$StringInputUiSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? hintText = freezed,
    Object? helperText = freezed,
    Object? action = freezed,
    Object? submitFormOnFieldSubmitted = freezed,
    Object? keyboardType = freezed,
    Object? obscureText = freezed,
    Object? autocorrect = freezed,
    Object? autofillHints = freezed,
    Object? autofocus = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = freezed,
    Object? maxLines = freezed,
    Object? invalidRegexMessage = freezed,
  }) {
    return _then(_$StringInputUiSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StringFieldAction?,
      submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted
          ? _value.submitFormOnFieldSubmitted
          : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _value.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      obscureText: freezed == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: freezed == autocorrect
          ? _value.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofillHints: freezed == autofillHints
          ? _value._autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autofocus: freezed == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      textInputAction: freezed == textInputAction
          ? _value.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: freezed == textCapitalization
          ? _value.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidRegexMessage: freezed == invalidRegexMessage
          ? _value.invalidRegexMessage
          : invalidRegexMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringInputUiSettingsImpl extends _StringInputUiSettings {
  const _$StringInputUiSettingsImpl(
      {this.labelText,
      this.hintText,
      this.helperText,
      this.action,
      this.submitFormOnFieldSubmitted,
      @TextInputTypeConverter() this.keyboardType,
      this.obscureText,
      this.autocorrect,
      final List<String>? autofillHints,
      this.autofocus,
      this.textInputAction,
      this.textCapitalization,
      this.maxLines,
      this.invalidRegexMessage})
      : _autofillHints = autofillHints,
        super._();

  factory _$StringInputUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringInputUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? hintText;
  @override
  final String? helperText;
  @override
  final StringFieldAction? action;
  @override
  final bool? submitFormOnFieldSubmitted;
  @override
  @TextInputTypeConverter()
  final TextInputType? keyboardType;
  @override
  final bool? obscureText;
  @override
  final bool? autocorrect;
  final List<String>? _autofillHints;
  @override
  List<String>? get autofillHints {
    final value = _autofillHints;
    if (value == null) return null;
    if (_autofillHints is EqualUnmodifiableListView) return _autofillHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? autofocus;
  @override
  final TextInputAction? textInputAction;
  @override
  final TextCapitalization? textCapitalization;
  @override
  final int? maxLines;
  @override
  final String? invalidRegexMessage;

  @override
  String toString() {
    return 'StringInputUiSettings(labelText: $labelText, hintText: $hintText, helperText: $helperText, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, invalidRegexMessage: $invalidRegexMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringInputUiSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.submitFormOnFieldSubmitted,
                    submitFormOnFieldSubmitted) ||
                other.submitFormOnFieldSubmitted ==
                    submitFormOnFieldSubmitted) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            const DeepCollectionEquality()
                .equals(other._autofillHints, _autofillHints) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.textCapitalization, textCapitalization) ||
                other.textCapitalization == textCapitalization) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.invalidRegexMessage, invalidRegexMessage) ||
                other.invalidRegexMessage == invalidRegexMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      hintText,
      helperText,
      action,
      submitFormOnFieldSubmitted,
      keyboardType,
      obscureText,
      autocorrect,
      const DeepCollectionEquality().hash(_autofillHints),
      autofocus,
      textInputAction,
      textCapitalization,
      maxLines,
      invalidRegexMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringInputUiSettingsImplCopyWith<_$StringInputUiSettingsImpl>
      get copyWith => __$$StringInputUiSettingsImplCopyWithImpl<
          _$StringInputUiSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringInputUiSettingsImplToJson(
      this,
    );
  }
}

abstract class _StringInputUiSettings extends StringInputUiSettings {
  const factory _StringInputUiSettings(
      {final String? labelText,
      final String? hintText,
      final String? helperText,
      final StringFieldAction? action,
      final bool? submitFormOnFieldSubmitted,
      @TextInputTypeConverter() final TextInputType? keyboardType,
      final bool? obscureText,
      final bool? autocorrect,
      final List<String>? autofillHints,
      final bool? autofocus,
      final TextInputAction? textInputAction,
      final TextCapitalization? textCapitalization,
      final int? maxLines,
      final String? invalidRegexMessage}) = _$StringInputUiSettingsImpl;
  const _StringInputUiSettings._() : super._();

  factory _StringInputUiSettings.fromJson(Map<String, dynamic> json) =
      _$StringInputUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get hintText;
  @override
  String? get helperText;
  @override
  StringFieldAction? get action;
  @override
  bool? get submitFormOnFieldSubmitted;
  @override
  @TextInputTypeConverter()
  TextInputType? get keyboardType;
  @override
  bool? get obscureText;
  @override
  bool? get autocorrect;
  @override
  List<String>? get autofillHints;
  @override
  bool? get autofocus;
  @override
  TextInputAction? get textInputAction;
  @override
  TextCapitalization? get textCapitalization;
  @override
  int? get maxLines;
  @override
  String? get invalidRegexMessage;
  @override
  @JsonKey(ignore: true)
  _$$StringInputUiSettingsImplCopyWith<_$StringInputUiSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WoFormUiSettings _$WoFormUiSettingsFromJson(Map<String, dynamic> json) {
  return _WoFormUiSettings.fromJson(json);
}

/// @nodoc
mixin _$WoFormUiSettings {
  String? get titleText => throw _privateConstructorUsedError;
  String? get submitText => throw _privateConstructorUsedError;
  String? get submittedText => throw _privateConstructorUsedError;
  WoFormDisplayMode? get displayMode => throw _privateConstructorUsedError;
  WoFormSubmitMode? get submitMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WoFormUiSettingsCopyWith<WoFormUiSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormUiSettingsCopyWith<$Res> {
  factory $WoFormUiSettingsCopyWith(
          WoFormUiSettings value, $Res Function(WoFormUiSettings) then) =
      _$WoFormUiSettingsCopyWithImpl<$Res, WoFormUiSettings>;
  @useResult
  $Res call(
      {String? titleText,
      String? submitText,
      String? submittedText,
      WoFormDisplayMode? displayMode,
      WoFormSubmitMode? submitMode});
}

/// @nodoc
class _$WoFormUiSettingsCopyWithImpl<$Res, $Val extends WoFormUiSettings>
    implements $WoFormUiSettingsCopyWith<$Res> {
  _$WoFormUiSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleText = freezed,
    Object? submitText = freezed,
    Object? submittedText = freezed,
    Object? displayMode = freezed,
    Object? submitMode = freezed,
  }) {
    return _then(_value.copyWith(
      titleText: freezed == titleText
          ? _value.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitText: freezed == submitText
          ? _value.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedText: freezed == submittedText
          ? _value.submittedText
          : submittedText // ignore: cast_nullable_to_non_nullable
              as String?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as WoFormDisplayMode?,
      submitMode: freezed == submitMode
          ? _value.submitMode
          : submitMode // ignore: cast_nullable_to_non_nullable
              as WoFormSubmitMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WoFormUiSettingsImplCopyWith<$Res>
    implements $WoFormUiSettingsCopyWith<$Res> {
  factory _$$WoFormUiSettingsImplCopyWith(_$WoFormUiSettingsImpl value,
          $Res Function(_$WoFormUiSettingsImpl) then) =
      __$$WoFormUiSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? titleText,
      String? submitText,
      String? submittedText,
      WoFormDisplayMode? displayMode,
      WoFormSubmitMode? submitMode});
}

/// @nodoc
class __$$WoFormUiSettingsImplCopyWithImpl<$Res>
    extends _$WoFormUiSettingsCopyWithImpl<$Res, _$WoFormUiSettingsImpl>
    implements _$$WoFormUiSettingsImplCopyWith<$Res> {
  __$$WoFormUiSettingsImplCopyWithImpl(_$WoFormUiSettingsImpl _value,
      $Res Function(_$WoFormUiSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleText = freezed,
    Object? submitText = freezed,
    Object? submittedText = freezed,
    Object? displayMode = freezed,
    Object? submitMode = freezed,
  }) {
    return _then(_$WoFormUiSettingsImpl(
      titleText: freezed == titleText
          ? _value.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitText: freezed == submitText
          ? _value.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedText: freezed == submittedText
          ? _value.submittedText
          : submittedText // ignore: cast_nullable_to_non_nullable
              as String?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as WoFormDisplayMode?,
      submitMode: freezed == submitMode
          ? _value.submitMode
          : submitMode // ignore: cast_nullable_to_non_nullable
              as WoFormSubmitMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoFormUiSettingsImpl extends _WoFormUiSettings {
  const _$WoFormUiSettingsImpl(
      {this.titleText,
      this.submitText,
      this.submittedText,
      this.displayMode,
      this.submitMode})
      : super._();

  factory _$WoFormUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoFormUiSettingsImplFromJson(json);

  @override
  final String? titleText;
  @override
  final String? submitText;
  @override
  final String? submittedText;
  @override
  final WoFormDisplayMode? displayMode;
  @override
  final WoFormSubmitMode? submitMode;

  @override
  String toString() {
    return 'WoFormUiSettings(titleText: $titleText, submitText: $submitText, submittedText: $submittedText, displayMode: $displayMode, submitMode: $submitMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormUiSettingsImpl &&
            (identical(other.titleText, titleText) ||
                other.titleText == titleText) &&
            (identical(other.submitText, submitText) ||
                other.submitText == submitText) &&
            (identical(other.submittedText, submittedText) ||
                other.submittedText == submittedText) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode) &&
            (identical(other.submitMode, submitMode) ||
                other.submitMode == submitMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, titleText, submitText,
      submittedText, displayMode, submitMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WoFormUiSettingsImplCopyWith<_$WoFormUiSettingsImpl> get copyWith =>
      __$$WoFormUiSettingsImplCopyWithImpl<_$WoFormUiSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WoFormUiSettingsImplToJson(
      this,
    );
  }
}

abstract class _WoFormUiSettings extends WoFormUiSettings {
  const factory _WoFormUiSettings(
      {final String? titleText,
      final String? submitText,
      final String? submittedText,
      final WoFormDisplayMode? displayMode,
      final WoFormSubmitMode? submitMode}) = _$WoFormUiSettingsImpl;
  const _WoFormUiSettings._() : super._();

  factory _WoFormUiSettings.fromJson(Map<String, dynamic> json) =
      _$WoFormUiSettingsImpl.fromJson;

  @override
  String? get titleText;
  @override
  String? get submitText;
  @override
  String? get submittedText;
  @override
  WoFormDisplayMode? get displayMode;
  @override
  WoFormSubmitMode? get submitMode;
  @override
  @JsonKey(ignore: true)
  _$$WoFormUiSettingsImplCopyWith<_$WoFormUiSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

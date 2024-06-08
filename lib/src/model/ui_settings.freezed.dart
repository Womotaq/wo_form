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

BooleanFieldSettings _$BooleanFieldSettingsFromJson(Map<String, dynamic> json) {
  return _BooleanFieldSettings.fromJson(json);
}

/// @nodoc
mixin _$BooleanFieldSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  BooleanFieldOnOffType? get onOffType => throw _privateConstructorUsedError;
  ListTileControlAffinity? get onOffPosition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooleanFieldSettingsCopyWith<BooleanFieldSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanFieldSettingsCopyWith<$Res> {
  factory $BooleanFieldSettingsCopyWith(BooleanFieldSettings value,
          $Res Function(BooleanFieldSettings) then) =
      _$BooleanFieldSettingsCopyWithImpl<$Res, BooleanFieldSettings>;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      BooleanFieldOnOffType? onOffType,
      ListTileControlAffinity? onOffPosition});
}

/// @nodoc
class _$BooleanFieldSettingsCopyWithImpl<$Res,
        $Val extends BooleanFieldSettings>
    implements $BooleanFieldSettingsCopyWith<$Res> {
  _$BooleanFieldSettingsCopyWithImpl(this._value, this._then);

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
abstract class _$$BooleanFieldSettingsImplCopyWith<$Res>
    implements $BooleanFieldSettingsCopyWith<$Res> {
  factory _$$BooleanFieldSettingsImplCopyWith(_$BooleanFieldSettingsImpl value,
          $Res Function(_$BooleanFieldSettingsImpl) then) =
      __$$BooleanFieldSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      BooleanFieldOnOffType? onOffType,
      ListTileControlAffinity? onOffPosition});
}

/// @nodoc
class __$$BooleanFieldSettingsImplCopyWithImpl<$Res>
    extends _$BooleanFieldSettingsCopyWithImpl<$Res, _$BooleanFieldSettingsImpl>
    implements _$$BooleanFieldSettingsImplCopyWith<$Res> {
  __$$BooleanFieldSettingsImplCopyWithImpl(_$BooleanFieldSettingsImpl _value,
      $Res Function(_$BooleanFieldSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? onOffType = freezed,
    Object? onOffPosition = freezed,
  }) {
    return _then(_$BooleanFieldSettingsImpl(
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
class _$BooleanFieldSettingsImpl extends _BooleanFieldSettings {
  const _$BooleanFieldSettingsImpl(
      {this.labelText, this.helperText, this.onOffType, this.onOffPosition})
      : super._();

  factory _$BooleanFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanFieldSettingsImplFromJson(json);

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
    return 'BooleanFieldSettings(labelText: $labelText, helperText: $helperText, onOffType: $onOffType, onOffPosition: $onOffPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanFieldSettingsImpl &&
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
  _$$BooleanFieldSettingsImplCopyWith<_$BooleanFieldSettingsImpl>
      get copyWith =>
          __$$BooleanFieldSettingsImplCopyWithImpl<_$BooleanFieldSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanFieldSettingsImplToJson(
      this,
    );
  }
}

abstract class _BooleanFieldSettings extends BooleanFieldSettings {
  const factory _BooleanFieldSettings(
          {final String? labelText,
          final String? helperText,
          final BooleanFieldOnOffType? onOffType,
          final ListTileControlAffinity? onOffPosition}) =
      _$BooleanFieldSettingsImpl;
  const _BooleanFieldSettings._() : super._();

  factory _BooleanFieldSettings.fromJson(Map<String, dynamic> json) =
      _$BooleanFieldSettingsImpl.fromJson;

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
  _$$BooleanFieldSettingsImplCopyWith<_$BooleanFieldSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NodeWidgetSettings _$NodeWidgetSettingsFromJson(Map<String, dynamic> json) {
  return _NodeWidgetSettings.fromJson(json);
}

/// @nodoc
mixin _$NodeWidgetSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  NodeDisplayMode? get displayMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeWidgetSettingsCopyWith<NodeWidgetSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeWidgetSettingsCopyWith<$Res> {
  factory $NodeWidgetSettingsCopyWith(
          NodeWidgetSettings value, $Res Function(NodeWidgetSettings) then) =
      _$NodeWidgetSettingsCopyWithImpl<$Res, NodeWidgetSettings>;
  @useResult
  $Res call(
      {String? labelText, String? helperText, NodeDisplayMode? displayMode});
}

/// @nodoc
class _$NodeWidgetSettingsCopyWithImpl<$Res, $Val extends NodeWidgetSettings>
    implements $NodeWidgetSettingsCopyWith<$Res> {
  _$NodeWidgetSettingsCopyWithImpl(this._value, this._then);

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
abstract class _$$NodeWidgetSettingsImplCopyWith<$Res>
    implements $NodeWidgetSettingsCopyWith<$Res> {
  factory _$$NodeWidgetSettingsImplCopyWith(_$NodeWidgetSettingsImpl value,
          $Res Function(_$NodeWidgetSettingsImpl) then) =
      __$$NodeWidgetSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText, String? helperText, NodeDisplayMode? displayMode});
}

/// @nodoc
class __$$NodeWidgetSettingsImplCopyWithImpl<$Res>
    extends _$NodeWidgetSettingsCopyWithImpl<$Res, _$NodeWidgetSettingsImpl>
    implements _$$NodeWidgetSettingsImplCopyWith<$Res> {
  __$$NodeWidgetSettingsImplCopyWithImpl(_$NodeWidgetSettingsImpl _value,
      $Res Function(_$NodeWidgetSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_$NodeWidgetSettingsImpl(
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
class _$NodeWidgetSettingsImpl extends _NodeWidgetSettings {
  const _$NodeWidgetSettingsImpl(
      {this.labelText, this.helperText, this.displayMode})
      : super._();

  factory _$NodeWidgetSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeWidgetSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final NodeDisplayMode? displayMode;

  @override
  String toString() {
    return 'NodeWidgetSettings(labelText: $labelText, helperText: $helperText, displayMode: $displayMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeWidgetSettingsImpl &&
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
  _$$NodeWidgetSettingsImplCopyWith<_$NodeWidgetSettingsImpl> get copyWith =>
      __$$NodeWidgetSettingsImplCopyWithImpl<_$NodeWidgetSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeWidgetSettingsImplToJson(
      this,
    );
  }
}

abstract class _NodeWidgetSettings extends NodeWidgetSettings {
  const factory _NodeWidgetSettings(
      {final String? labelText,
      final String? helperText,
      final NodeDisplayMode? displayMode}) = _$NodeWidgetSettingsImpl;
  const _NodeWidgetSettings._() : super._();

  factory _NodeWidgetSettings.fromJson(Map<String, dynamic> json) =
      _$NodeWidgetSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  NodeDisplayMode? get displayMode;
  @override
  @JsonKey(ignore: true)
  _$$NodeWidgetSettingsImplCopyWith<_$NodeWidgetSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NumFieldSettings _$NumFieldSettingsFromJson(Map<String, dynamic> json) {
  return _NumFieldSettings.fromJson(json);
}

/// @nodoc
mixin _$NumFieldSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumFieldSettingsCopyWith<NumFieldSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumFieldSettingsCopyWith<$Res> {
  factory $NumFieldSettingsCopyWith(
          NumFieldSettings value, $Res Function(NumFieldSettings) then) =
      _$NumFieldSettingsCopyWithImpl<$Res, NumFieldSettings>;
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class _$NumFieldSettingsCopyWithImpl<$Res, $Val extends NumFieldSettings>
    implements $NumFieldSettingsCopyWith<$Res> {
  _$NumFieldSettingsCopyWithImpl(this._value, this._then);

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
abstract class _$$NumFieldSettingsImplCopyWith<$Res>
    implements $NumFieldSettingsCopyWith<$Res> {
  factory _$$NumFieldSettingsImplCopyWith(_$NumFieldSettingsImpl value,
          $Res Function(_$NumFieldSettingsImpl) then) =
      __$$NumFieldSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class __$$NumFieldSettingsImplCopyWithImpl<$Res>
    extends _$NumFieldSettingsCopyWithImpl<$Res, _$NumFieldSettingsImpl>
    implements _$$NumFieldSettingsImplCopyWith<$Res> {
  __$$NumFieldSettingsImplCopyWithImpl(_$NumFieldSettingsImpl _value,
      $Res Function(_$NumFieldSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_$NumFieldSettingsImpl(
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
class _$NumFieldSettingsImpl extends _NumFieldSettings {
  const _$NumFieldSettingsImpl({this.labelText, this.helperText}) : super._();

  factory _$NumFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumFieldSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;

  @override
  String toString() {
    return 'NumFieldSettings(labelText: $labelText, helperText: $helperText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumFieldSettingsImpl &&
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
  _$$NumFieldSettingsImplCopyWith<_$NumFieldSettingsImpl> get copyWith =>
      __$$NumFieldSettingsImplCopyWithImpl<_$NumFieldSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NumFieldSettingsImplToJson(
      this,
    );
  }
}

abstract class _NumFieldSettings extends NumFieldSettings {
  const factory _NumFieldSettings(
      {final String? labelText,
      final String? helperText}) = _$NumFieldSettingsImpl;
  const _NumFieldSettings._() : super._();

  factory _NumFieldSettings.fromJson(Map<String, dynamic> json) =
      _$NumFieldSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  @JsonKey(ignore: true)
  _$$NumFieldSettingsImplCopyWith<_$NumFieldSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectFieldSettings<T> _$SelectFieldSettingsFromJson<T>(
    Map<String, dynamic> json) {
  return _SelectFieldSettings<T>.fromJson(json);
}

/// @nodoc
mixin _$SelectFieldSettings<T> {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  SelectFieldDisplayMode? get displayMode => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget Function(T?)? get valueBuilder => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget? Function(T)? get helpValueBuilder =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectFieldSettingsCopyWith<T, SelectFieldSettings<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectFieldSettingsCopyWith<T, $Res> {
  factory $SelectFieldSettingsCopyWith(SelectFieldSettings<T> value,
          $Res Function(SelectFieldSettings<T>) then) =
      _$SelectFieldSettingsCopyWithImpl<T, $Res, SelectFieldSettings<T>>;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      SelectFieldDisplayMode? displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder});
}

/// @nodoc
class _$SelectFieldSettingsCopyWithImpl<T, $Res,
        $Val extends SelectFieldSettings<T>>
    implements $SelectFieldSettingsCopyWith<T, $Res> {
  _$SelectFieldSettingsCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectFieldSettingsImplCopyWith<T, $Res>
    implements $SelectFieldSettingsCopyWith<T, $Res> {
  factory _$$SelectFieldSettingsImplCopyWith(_$SelectFieldSettingsImpl<T> value,
          $Res Function(_$SelectFieldSettingsImpl<T>) then) =
      __$$SelectFieldSettingsImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      SelectFieldDisplayMode? displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder});
}

/// @nodoc
class __$$SelectFieldSettingsImplCopyWithImpl<T, $Res>
    extends _$SelectFieldSettingsCopyWithImpl<T, $Res,
        _$SelectFieldSettingsImpl<T>>
    implements _$$SelectFieldSettingsImplCopyWith<T, $Res> {
  __$$SelectFieldSettingsImplCopyWithImpl(_$SelectFieldSettingsImpl<T> _value,
      $Res Function(_$SelectFieldSettingsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? displayMode = freezed,
    Object? valueBuilder = freezed,
    Object? helpValueBuilder = freezed,
  }) {
    return _then(_$SelectFieldSettingsImpl<T>(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectFieldSettingsImpl<T> extends _SelectFieldSettings<T> {
  const _$SelectFieldSettingsImpl(
      {this.labelText,
      this.helperText,
      this.displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false) this.valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.helpValueBuilder})
      : super._();

  factory _$SelectFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectFieldSettingsImplFromJson(json);

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
  String toString() {
    return 'SelectFieldSettings<$T>(labelText: $labelText, helperText: $helperText, displayMode: $displayMode, valueBuilder: $valueBuilder, helpValueBuilder: $helpValueBuilder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFieldSettingsImpl<T> &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode) &&
            (identical(other.valueBuilder, valueBuilder) ||
                other.valueBuilder == valueBuilder) &&
            (identical(other.helpValueBuilder, helpValueBuilder) ||
                other.helpValueBuilder == helpValueBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      displayMode, valueBuilder, helpValueBuilder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFieldSettingsImplCopyWith<T, _$SelectFieldSettingsImpl<T>>
      get copyWith => __$$SelectFieldSettingsImplCopyWithImpl<T,
          _$SelectFieldSettingsImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectFieldSettingsImplToJson<T>(
      this,
    );
  }
}

abstract class _SelectFieldSettings<T> extends SelectFieldSettings<T> {
  const factory _SelectFieldSettings(
          {final String? labelText,
          final String? helperText,
          final SelectFieldDisplayMode? displayMode,
          @JsonKey(includeFromJson: false, includeToJson: false)
          final Widget Function(T?)? valueBuilder,
          @JsonKey(includeFromJson: false, includeToJson: false)
          final Widget? Function(T)? helpValueBuilder}) =
      _$SelectFieldSettingsImpl<T>;
  const _SelectFieldSettings._() : super._();

  factory _SelectFieldSettings.fromJson(Map<String, dynamic> json) =
      _$SelectFieldSettingsImpl<T>.fromJson;

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
  @JsonKey(ignore: true)
  _$$SelectFieldSettingsImplCopyWith<T, _$SelectFieldSettingsImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

StringFieldSettings _$StringFieldSettingsFromJson(Map<String, dynamic> json) {
  return _StringFieldSettings.fromJson(json);
}

/// @nodoc
mixin _$StringFieldSettings {
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
  $StringFieldSettingsCopyWith<StringFieldSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFieldSettingsCopyWith<$Res> {
  factory $StringFieldSettingsCopyWith(
          StringFieldSettings value, $Res Function(StringFieldSettings) then) =
      _$StringFieldSettingsCopyWithImpl<$Res, StringFieldSettings>;
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
class _$StringFieldSettingsCopyWithImpl<$Res, $Val extends StringFieldSettings>
    implements $StringFieldSettingsCopyWith<$Res> {
  _$StringFieldSettingsCopyWithImpl(this._value, this._then);

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
abstract class _$$StringFieldSettingsImplCopyWith<$Res>
    implements $StringFieldSettingsCopyWith<$Res> {
  factory _$$StringFieldSettingsImplCopyWith(_$StringFieldSettingsImpl value,
          $Res Function(_$StringFieldSettingsImpl) then) =
      __$$StringFieldSettingsImplCopyWithImpl<$Res>;
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
class __$$StringFieldSettingsImplCopyWithImpl<$Res>
    extends _$StringFieldSettingsCopyWithImpl<$Res, _$StringFieldSettingsImpl>
    implements _$$StringFieldSettingsImplCopyWith<$Res> {
  __$$StringFieldSettingsImplCopyWithImpl(_$StringFieldSettingsImpl _value,
      $Res Function(_$StringFieldSettingsImpl) _then)
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
    return _then(_$StringFieldSettingsImpl(
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
class _$StringFieldSettingsImpl extends _StringFieldSettings {
  const _$StringFieldSettingsImpl(
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

  factory _$StringFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringFieldSettingsImplFromJson(json);

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
    return 'StringFieldSettings(labelText: $labelText, hintText: $hintText, helperText: $helperText, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, invalidRegexMessage: $invalidRegexMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringFieldSettingsImpl &&
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
  _$$StringFieldSettingsImplCopyWith<_$StringFieldSettingsImpl> get copyWith =>
      __$$StringFieldSettingsImplCopyWithImpl<_$StringFieldSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringFieldSettingsImplToJson(
      this,
    );
  }
}

abstract class _StringFieldSettings extends StringFieldSettings {
  const factory _StringFieldSettings(
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
      final String? invalidRegexMessage}) = _$StringFieldSettingsImpl;
  const _StringFieldSettings._() : super._();

  factory _StringFieldSettings.fromJson(Map<String, dynamic> json) =
      _$StringFieldSettingsImpl.fromJson;

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
  _$$StringFieldSettingsImplCopyWith<_$StringFieldSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WoFormUiSettings _$WoFormUiSettingsFromJson(Map<String, dynamic> json) {
  return _WoFormUiSettings.fromJson(json);
}

/// @nodoc
mixin _$WoFormUiSettings {
  String? get title => throw _privateConstructorUsedError;

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
  $Res call({String? title});
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
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? title});
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
    Object? title = freezed,
  }) {
    return _then(_$WoFormUiSettingsImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoFormUiSettingsImpl extends _WoFormUiSettings {
  const _$WoFormUiSettingsImpl({this.title}) : super._();

  factory _$WoFormUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoFormUiSettingsImplFromJson(json);

  @override
  final String? title;

  @override
  String toString() {
    return 'WoFormUiSettings(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormUiSettingsImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

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
  const factory _WoFormUiSettings({final String? title}) =
      _$WoFormUiSettingsImpl;
  const _WoFormUiSettings._() : super._();

  factory _WoFormUiSettings.fromJson(Map<String, dynamic> json) =
      _$WoFormUiSettingsImpl.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$WoFormUiSettingsImplCopyWith<_$WoFormUiSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

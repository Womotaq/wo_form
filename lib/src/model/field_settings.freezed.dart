// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_settings.dart';

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
    Object? onOffType = freezed,
    Object? onOffPosition = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
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
    Object? onOffType = freezed,
    Object? onOffPosition = freezed,
  }) {
    return _then(_$BooleanFieldSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
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
      {this.labelText, this.onOffType, this.onOffPosition})
      : super._();

  factory _$BooleanFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanFieldSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final BooleanFieldOnOffType? onOffType;
  @override
  final ListTileControlAffinity? onOffPosition;

  @override
  String toString() {
    return 'BooleanFieldSettings(labelText: $labelText, onOffType: $onOffType, onOffPosition: $onOffPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanFieldSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.onOffType, onOffType) ||
                other.onOffType == onOffType) &&
            (identical(other.onOffPosition, onOffPosition) ||
                other.onOffPosition == onOffPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, onOffType, onOffPosition);

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
          final BooleanFieldOnOffType? onOffType,
          final ListTileControlAffinity? onOffPosition}) =
      _$BooleanFieldSettingsImpl;
  const _BooleanFieldSettings._() : super._();

  factory _BooleanFieldSettings.fromJson(Map<String, dynamic> json) =
      _$BooleanFieldSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  BooleanFieldOnOffType? get onOffType;
  @override
  ListTileControlAffinity? get onOffPosition;
  @override
  @JsonKey(ignore: true)
  _$$BooleanFieldSettingsImplCopyWith<_$BooleanFieldSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MapFieldSettings _$MapFieldSettingsFromJson(Map<String, dynamic> json) {
  return _MapFieldSettings.fromJson(json);
}

/// @nodoc
mixin _$MapFieldSettings {
  String? get labelText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapFieldSettingsCopyWith<MapFieldSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapFieldSettingsCopyWith<$Res> {
  factory $MapFieldSettingsCopyWith(
          MapFieldSettings value, $Res Function(MapFieldSettings) then) =
      _$MapFieldSettingsCopyWithImpl<$Res, MapFieldSettings>;
  @useResult
  $Res call({String? labelText});
}

/// @nodoc
class _$MapFieldSettingsCopyWithImpl<$Res, $Val extends MapFieldSettings>
    implements $MapFieldSettingsCopyWith<$Res> {
  _$MapFieldSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapFieldSettingsImplCopyWith<$Res>
    implements $MapFieldSettingsCopyWith<$Res> {
  factory _$$MapFieldSettingsImplCopyWith(_$MapFieldSettingsImpl value,
          $Res Function(_$MapFieldSettingsImpl) then) =
      __$$MapFieldSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? labelText});
}

/// @nodoc
class __$$MapFieldSettingsImplCopyWithImpl<$Res>
    extends _$MapFieldSettingsCopyWithImpl<$Res, _$MapFieldSettingsImpl>
    implements _$$MapFieldSettingsImplCopyWith<$Res> {
  __$$MapFieldSettingsImplCopyWithImpl(_$MapFieldSettingsImpl _value,
      $Res Function(_$MapFieldSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
  }) {
    return _then(_$MapFieldSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapFieldSettingsImpl extends _MapFieldSettings {
  const _$MapFieldSettingsImpl({this.labelText}) : super._();

  factory _$MapFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapFieldSettingsImplFromJson(json);

  @override
  final String? labelText;

  @override
  String toString() {
    return 'MapFieldSettings(labelText: $labelText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapFieldSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapFieldSettingsImplCopyWith<_$MapFieldSettingsImpl> get copyWith =>
      __$$MapFieldSettingsImplCopyWithImpl<_$MapFieldSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapFieldSettingsImplToJson(
      this,
    );
  }
}

abstract class _MapFieldSettings extends MapFieldSettings {
  const factory _MapFieldSettings({final String? labelText}) =
      _$MapFieldSettingsImpl;
  const _MapFieldSettings._() : super._();

  factory _MapFieldSettings.fromJson(Map<String, dynamic> json) =
      _$MapFieldSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  @JsonKey(ignore: true)
  _$$MapFieldSettingsImplCopyWith<_$MapFieldSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectFieldSettings<T> {
  String? get labelText => throw _privateConstructorUsedError;
  List<T>? get values => throw _privateConstructorUsedError;
  SelectFieldDisplayMode? get displayMode => throw _privateConstructorUsedError;

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
      List<T>? values,
      SelectFieldDisplayMode? displayMode});
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
    Object? values = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
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
      List<T>? values,
      SelectFieldDisplayMode? displayMode});
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
    Object? values = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_$SelectFieldSettingsImpl<T>(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
    ));
  }
}

/// @nodoc

class _$SelectFieldSettingsImpl<T> extends _SelectFieldSettings<T> {
  const _$SelectFieldSettingsImpl(
      {this.labelText, final List<T>? values, this.displayMode})
      : _values = values,
        super._();

  @override
  final String? labelText;
  final List<T>? _values;
  @override
  List<T>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SelectFieldDisplayMode? displayMode;

  @override
  String toString() {
    return 'SelectFieldSettings<$T>(labelText: $labelText, values: $values, displayMode: $displayMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFieldSettingsImpl<T> &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelText,
      const DeepCollectionEquality().hash(_values), displayMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFieldSettingsImplCopyWith<T, _$SelectFieldSettingsImpl<T>>
      get copyWith => __$$SelectFieldSettingsImplCopyWithImpl<T,
          _$SelectFieldSettingsImpl<T>>(this, _$identity);
}

abstract class _SelectFieldSettings<T> extends SelectFieldSettings<T> {
  const factory _SelectFieldSettings(
          {final String? labelText,
          final List<T>? values,
          final SelectFieldDisplayMode? displayMode}) =
      _$SelectFieldSettingsImpl<T>;
  const _SelectFieldSettings._() : super._();

  @override
  String? get labelText;
  @override
  List<T>? get values;
  @override
  SelectFieldDisplayMode? get displayMode;
  @override
  @JsonKey(ignore: true)
  _$$SelectFieldSettingsImplCopyWith<T, _$SelectFieldSettingsImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

SelectStringFieldSettings _$SelectStringFieldSettingsFromJson(
    Map<String, dynamic> json) {
  return _SelectStringFieldSettings.fromJson(json);
}

/// @nodoc
mixin _$SelectStringFieldSettings {
  String? get labelText => throw _privateConstructorUsedError;
  List<String>? get values => throw _privateConstructorUsedError;
  SelectFieldDisplayMode? get displayMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectStringFieldSettingsCopyWith<SelectStringFieldSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectStringFieldSettingsCopyWith<$Res> {
  factory $SelectStringFieldSettingsCopyWith(SelectStringFieldSettings value,
          $Res Function(SelectStringFieldSettings) then) =
      _$SelectStringFieldSettingsCopyWithImpl<$Res, SelectStringFieldSettings>;
  @useResult
  $Res call(
      {String? labelText,
      List<String>? values,
      SelectFieldDisplayMode? displayMode});
}

/// @nodoc
class _$SelectStringFieldSettingsCopyWithImpl<$Res,
        $Val extends SelectStringFieldSettings>
    implements $SelectStringFieldSettingsCopyWith<$Res> {
  _$SelectStringFieldSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? values = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectStringFieldSettingsImplCopyWith<$Res>
    implements $SelectStringFieldSettingsCopyWith<$Res> {
  factory _$$SelectStringFieldSettingsImplCopyWith(
          _$SelectStringFieldSettingsImpl value,
          $Res Function(_$SelectStringFieldSettingsImpl) then) =
      __$$SelectStringFieldSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      List<String>? values,
      SelectFieldDisplayMode? displayMode});
}

/// @nodoc
class __$$SelectStringFieldSettingsImplCopyWithImpl<$Res>
    extends _$SelectStringFieldSettingsCopyWithImpl<$Res,
        _$SelectStringFieldSettingsImpl>
    implements _$$SelectStringFieldSettingsImplCopyWith<$Res> {
  __$$SelectStringFieldSettingsImplCopyWithImpl(
      _$SelectStringFieldSettingsImpl _value,
      $Res Function(_$SelectStringFieldSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? values = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_$SelectStringFieldSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectStringFieldSettingsImpl extends _SelectStringFieldSettings {
  const _$SelectStringFieldSettingsImpl(
      {this.labelText, final List<String>? values, this.displayMode})
      : _values = values,
        super._();

  factory _$SelectStringFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectStringFieldSettingsImplFromJson(json);

  @override
  final String? labelText;
  final List<String>? _values;
  @override
  List<String>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SelectFieldDisplayMode? displayMode;

  @override
  String toString() {
    return 'SelectStringFieldSettings(labelText: $labelText, values: $values, displayMode: $displayMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStringFieldSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText,
      const DeepCollectionEquality().hash(_values), displayMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectStringFieldSettingsImplCopyWith<_$SelectStringFieldSettingsImpl>
      get copyWith => __$$SelectStringFieldSettingsImplCopyWithImpl<
          _$SelectStringFieldSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectStringFieldSettingsImplToJson(
      this,
    );
  }
}

abstract class _SelectStringFieldSettings extends SelectStringFieldSettings {
  const factory _SelectStringFieldSettings(
          {final String? labelText,
          final List<String>? values,
          final SelectFieldDisplayMode? displayMode}) =
      _$SelectStringFieldSettingsImpl;
  const _SelectStringFieldSettings._() : super._();

  factory _SelectStringFieldSettings.fromJson(Map<String, dynamic> json) =
      _$SelectStringFieldSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  List<String>? get values;
  @override
  SelectFieldDisplayMode? get displayMode;
  @override
  @JsonKey(ignore: true)
  _$$SelectStringFieldSettingsImplCopyWith<_$SelectStringFieldSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StringFieldSettings _$StringFieldSettingsFromJson(Map<String, dynamic> json) {
  return _StringFieldSettings.fromJson(json);
}

/// @nodoc
mixin _$StringFieldSettings {
  String? get labelText => throw _privateConstructorUsedError;
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
  String? get hintText => throw _privateConstructorUsedError;
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
      String? hintText,
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
    Object? hintText = freezed,
    Object? invalidRegexMessage = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
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
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? hintText,
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
    Object? hintText = freezed,
    Object? invalidRegexMessage = freezed,
  }) {
    return _then(_$StringFieldSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
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
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.hintText,
      this.invalidRegexMessage})
      : _autofillHints = autofillHints,
        super._();

  factory _$StringFieldSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringFieldSettingsImplFromJson(json);

  @override
  final String? labelText;
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
  final String? hintText;
  @override
  final String? invalidRegexMessage;

  @override
  String toString() {
    return 'StringFieldSettings(labelText: $labelText, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, hintText: $hintText, invalidRegexMessage: $invalidRegexMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringFieldSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
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
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.invalidRegexMessage, invalidRegexMessage) ||
                other.invalidRegexMessage == invalidRegexMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
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
      hintText,
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
      final String? hintText,
      final String? invalidRegexMessage}) = _$StringFieldSettingsImpl;
  const _StringFieldSettings._() : super._();

  factory _StringFieldSettings.fromJson(Map<String, dynamic> json) =
      _$StringFieldSettingsImpl.fromJson;

  @override
  String? get labelText;
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
  String? get hintText;
  @override
  String? get invalidRegexMessage;
  @override
  @JsonKey(ignore: true)
  _$$StringFieldSettingsImplCopyWith<_$StringFieldSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

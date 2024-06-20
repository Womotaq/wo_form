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
  BooleanFieldControlType? get controlType =>
      throw _privateConstructorUsedError;
  ListTileControlAffinity? get controlAffinity =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  BooleanFieldBuilderDef? get widgetBuilder =>
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
      BooleanFieldControlType? controlType,
      ListTileControlAffinity? controlAffinity,
      @JsonKey(includeToJson: false, includeFromJson: false)
      BooleanFieldBuilderDef? widgetBuilder});
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
    Object? controlType = freezed,
    Object? controlAffinity = freezed,
    Object? widgetBuilder = freezed,
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
      controlType: freezed == controlType
          ? _value.controlType
          : controlType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldControlType?,
      controlAffinity: freezed == controlAffinity
          ? _value.controlAffinity
          : controlAffinity // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as BooleanFieldBuilderDef?,
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
      BooleanFieldControlType? controlType,
      ListTileControlAffinity? controlAffinity,
      @JsonKey(includeToJson: false, includeFromJson: false)
      BooleanFieldBuilderDef? widgetBuilder});
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
    Object? controlType = freezed,
    Object? controlAffinity = freezed,
    Object? widgetBuilder = freezed,
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
      controlType: freezed == controlType
          ? _value.controlType
          : controlType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldControlType?,
      controlAffinity: freezed == controlAffinity
          ? _value.controlAffinity
          : controlAffinity // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as BooleanFieldBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanInputUiSettingsImpl extends _BooleanInputUiSettings {
  const _$BooleanInputUiSettingsImpl(
      {this.labelText,
      this.helperText,
      this.controlType,
      this.controlAffinity,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();

  factory _$BooleanInputUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanInputUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final BooleanFieldControlType? controlType;
  @override
  final ListTileControlAffinity? controlAffinity;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final BooleanFieldBuilderDef? widgetBuilder;

  @override
  String toString() {
    return 'BooleanInputUiSettings(labelText: $labelText, helperText: $helperText, controlType: $controlType, controlAffinity: $controlAffinity, widgetBuilder: $widgetBuilder)';
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
            (identical(other.controlType, controlType) ||
                other.controlType == controlType) &&
            (identical(other.controlAffinity, controlAffinity) ||
                other.controlAffinity == controlAffinity) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      controlType, controlAffinity, widgetBuilder);

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
          final BooleanFieldControlType? controlType,
          final ListTileControlAffinity? controlAffinity,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final BooleanFieldBuilderDef? widgetBuilder}) =
      _$BooleanInputUiSettingsImpl;
  const _BooleanInputUiSettings._() : super._();

  factory _BooleanInputUiSettings.fromJson(Map<String, dynamic> json) =
      _$BooleanInputUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  BooleanFieldControlType? get controlType;
  @override
  ListTileControlAffinity? get controlAffinity;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  BooleanFieldBuilderDef? get widgetBuilder;
  @override
  @JsonKey(ignore: true)
  _$$BooleanInputUiSettingsImplCopyWith<_$BooleanInputUiSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DynamicInputsNodeUiSettings _$DynamicInputsNodeUiSettingsFromJson(
    Map<String, dynamic> json) {
  return _DynamicInputsNodeUiSettings.fromJson(json);
}

/// @nodoc
mixin _$DynamicInputsNodeUiSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  DynamicInputNodeWidgetBuilderDef? get widgetBuilder =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicInputsNodeUiSettingsCopyWith<DynamicInputsNodeUiSettings>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  factory $DynamicInputsNodeUiSettingsCopyWith(
          DynamicInputsNodeUiSettings value,
          $Res Function(DynamicInputsNodeUiSettings) then) =
      _$DynamicInputsNodeUiSettingsCopyWithImpl<$Res,
          DynamicInputsNodeUiSettings>;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DynamicInputNodeWidgetBuilderDef? widgetBuilder});
}

/// @nodoc
class _$DynamicInputsNodeUiSettingsCopyWithImpl<$Res,
        $Val extends DynamicInputsNodeUiSettings>
    implements $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  _$DynamicInputsNodeUiSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? widgetBuilder = freezed,
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
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DynamicInputNodeWidgetBuilderDef?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicInputsNodeUiSettingsImplCopyWith<$Res>
    implements $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  factory _$$DynamicInputsNodeUiSettingsImplCopyWith(
          _$DynamicInputsNodeUiSettingsImpl value,
          $Res Function(_$DynamicInputsNodeUiSettingsImpl) then) =
      __$$DynamicInputsNodeUiSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DynamicInputNodeWidgetBuilderDef? widgetBuilder});
}

/// @nodoc
class __$$DynamicInputsNodeUiSettingsImplCopyWithImpl<$Res>
    extends _$DynamicInputsNodeUiSettingsCopyWithImpl<$Res,
        _$DynamicInputsNodeUiSettingsImpl>
    implements _$$DynamicInputsNodeUiSettingsImplCopyWith<$Res> {
  __$$DynamicInputsNodeUiSettingsImplCopyWithImpl(
      _$DynamicInputsNodeUiSettingsImpl _value,
      $Res Function(_$DynamicInputsNodeUiSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_$DynamicInputsNodeUiSettingsImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DynamicInputNodeWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicInputsNodeUiSettingsImpl extends _DynamicInputsNodeUiSettings {
  const _$DynamicInputsNodeUiSettingsImpl(
      {this.labelText,
      this.helperText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();

  factory _$DynamicInputsNodeUiSettingsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DynamicInputsNodeUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final DynamicInputNodeWidgetBuilderDef? widgetBuilder;

  @override
  String toString() {
    return 'DynamicInputsNodeUiSettings(labelText: $labelText, helperText: $helperText, widgetBuilder: $widgetBuilder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicInputsNodeUiSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, helperText, widgetBuilder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicInputsNodeUiSettingsImplCopyWith<_$DynamicInputsNodeUiSettingsImpl>
      get copyWith => __$$DynamicInputsNodeUiSettingsImplCopyWithImpl<
          _$DynamicInputsNodeUiSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicInputsNodeUiSettingsImplToJson(
      this,
    );
  }
}

abstract class _DynamicInputsNodeUiSettings
    extends DynamicInputsNodeUiSettings {
  const factory _DynamicInputsNodeUiSettings(
          {final String? labelText,
          final String? helperText,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final DynamicInputNodeWidgetBuilderDef? widgetBuilder}) =
      _$DynamicInputsNodeUiSettingsImpl;
  const _DynamicInputsNodeUiSettings._() : super._();

  factory _DynamicInputsNodeUiSettings.fromJson(Map<String, dynamic> json) =
      _$DynamicInputsNodeUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  DynamicInputNodeWidgetBuilderDef? get widgetBuilder;
  @override
  @JsonKey(ignore: true)
  _$$DynamicInputsNodeUiSettingsImplCopyWith<_$DynamicInputsNodeUiSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InputsNodeUiSettings _$InputsNodeUiSettingsFromJson(Map<String, dynamic> json) {
  return _InputsNodeUiSettings.fromJson(json);
}

/// @nodoc
mixin _$InputsNodeUiSettings {
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;
  InputsNodeDisplayMode? get displayMode => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputNodeWidgetBuilderDef? get widgetBuilder =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  HeaderBuilderDef? get headerBuilder => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputNodeWidgetBuilderDef? get expanderBuilder =>
      throw _privateConstructorUsedError;

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
      {String? labelText,
      String? helperText,
      InputsNodeDisplayMode? displayMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      HeaderBuilderDef? headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? expanderBuilder});
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
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? expanderBuilder = freezed,
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
              as InputsNodeDisplayMode?,
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
      headerBuilder: freezed == headerBuilder
          ? _value.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      expanderBuilder: freezed == expanderBuilder
          ? _value.expanderBuilder
          : expanderBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
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
      {String? labelText,
      String? helperText,
      InputsNodeDisplayMode? displayMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      HeaderBuilderDef? headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? expanderBuilder});
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
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? expanderBuilder = freezed,
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
              as InputsNodeDisplayMode?,
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
      headerBuilder: freezed == headerBuilder
          ? _value.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      expanderBuilder: freezed == expanderBuilder
          ? _value.expanderBuilder
          : expanderBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputsNodeUiSettingsImpl extends _InputsNodeUiSettings {
  const _$InputsNodeUiSettingsImpl(
      {this.labelText,
      this.helperText,
      this.displayMode,
      @JsonKey(includeToJson: false, includeFromJson: false) this.widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false) this.headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.expanderBuilder})
      : super._();

  factory _$InputsNodeUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputsNodeUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final InputsNodeDisplayMode? displayMode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final InputNodeWidgetBuilderDef? widgetBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final HeaderBuilderDef? headerBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final InputNodeWidgetBuilderDef? expanderBuilder;

  @override
  String toString() {
    return 'InputsNodeUiSettings(labelText: $labelText, helperText: $helperText, displayMode: $displayMode, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, expanderBuilder: $expanderBuilder)';
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
                other.displayMode == displayMode) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.headerBuilder, headerBuilder) ||
                other.headerBuilder == headerBuilder) &&
            (identical(other.expanderBuilder, expanderBuilder) ||
                other.expanderBuilder == expanderBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      displayMode, widgetBuilder, headerBuilder, expanderBuilder);

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
          final InputsNodeDisplayMode? displayMode,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final InputNodeWidgetBuilderDef? widgetBuilder,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final HeaderBuilderDef? headerBuilder,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final InputNodeWidgetBuilderDef? expanderBuilder}) =
      _$InputsNodeUiSettingsImpl;
  const _InputsNodeUiSettings._() : super._();

  factory _InputsNodeUiSettings.fromJson(Map<String, dynamic> json) =
      _$InputsNodeUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  InputsNodeDisplayMode? get displayMode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputNodeWidgetBuilderDef? get widgetBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  HeaderBuilderDef? get headerBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputNodeWidgetBuilderDef? get expanderBuilder;
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  NumFieldBuilderDef? get widgetBuilder => throw _privateConstructorUsedError;

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
  $Res call(
      {String? labelText,
      String? helperText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      NumFieldBuilderDef? widgetBuilder});
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
    Object? widgetBuilder = freezed,
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
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as NumFieldBuilderDef?,
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
  $Res call(
      {String? labelText,
      String? helperText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      NumFieldBuilderDef? widgetBuilder});
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
    Object? widgetBuilder = freezed,
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
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as NumFieldBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumInputUiSettingsImpl extends _NumInputUiSettings {
  const _$NumInputUiSettingsImpl(
      {this.labelText,
      this.helperText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();

  factory _$NumInputUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumInputUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final NumFieldBuilderDef? widgetBuilder;

  @override
  String toString() {
    return 'NumInputUiSettings(labelText: $labelText, helperText: $helperText, widgetBuilder: $widgetBuilder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumInputUiSettingsImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, helperText, widgetBuilder);

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
      final String? helperText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final NumFieldBuilderDef? widgetBuilder}) = _$NumInputUiSettingsImpl;
  const _NumInputUiSettings._() : super._();

  factory _NumInputUiSettings.fromJson(Map<String, dynamic> json) =
      _$NumInputUiSettingsImpl.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  NumFieldBuilderDef? get widgetBuilder;
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
  String? get hintText => throw _privateConstructorUsedError;
  SelectFieldDisplayMode? get displayMode => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget Function(T?)? get valueBuilder => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget? Function(T)? get helpValueBuilder =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  double Function(String, T)? get searcher =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  SelectFieldBuilderDef<T>? get widgetBuilder =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputHeaderBuilderDef? get headerBuilder =>
      throw _privateConstructorUsedError;

  /// Only applies to unique choices
  bool get submitFormOnSelect => throw _privateConstructorUsedError;

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
      String? hintText,
      SelectFieldDisplayMode? displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      double Function(String, T)? searcher,
      @JsonKey(includeToJson: false, includeFromJson: false)
      SelectFieldBuilderDef<T>? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputHeaderBuilderDef? headerBuilder,
      bool submitFormOnSelect});
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
    Object? hintText = freezed,
    Object? displayMode = freezed,
    Object? valueBuilder = freezed,
    Object? helpValueBuilder = freezed,
    Object? searcher = freezed,
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? submitFormOnSelect = null,
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
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
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
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as SelectFieldBuilderDef<T>?,
      headerBuilder: freezed == headerBuilder
          ? _value.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as InputHeaderBuilderDef?,
      submitFormOnSelect: null == submitFormOnSelect
          ? _value.submitFormOnSelect
          : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String? hintText,
      SelectFieldDisplayMode? displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      double Function(String, T)? searcher,
      @JsonKey(includeToJson: false, includeFromJson: false)
      SelectFieldBuilderDef<T>? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputHeaderBuilderDef? headerBuilder,
      bool submitFormOnSelect});
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
    Object? hintText = freezed,
    Object? displayMode = freezed,
    Object? valueBuilder = freezed,
    Object? helpValueBuilder = freezed,
    Object? searcher = freezed,
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? submitFormOnSelect = null,
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
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
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
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as SelectFieldBuilderDef<T>?,
      headerBuilder: freezed == headerBuilder
          ? _value.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as InputHeaderBuilderDef?,
      submitFormOnSelect: null == submitFormOnSelect
          ? _value.submitFormOnSelect
          : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectInputUiSettingsImpl<T> extends _SelectInputUiSettings<T> {
  const _$SelectInputUiSettingsImpl(
      {this.labelText,
      this.helperText,
      this.hintText,
      this.displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false) this.valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false) this.searcher,
      @JsonKey(includeToJson: false, includeFromJson: false) this.widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false) this.headerBuilder,
      this.submitFormOnSelect = false})
      : super._();

  factory _$SelectInputUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectInputUiSettingsImplFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final String? hintText;
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  final SelectFieldBuilderDef<T>? widgetBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final InputHeaderBuilderDef? headerBuilder;

  /// Only applies to unique choices
  @override
  @JsonKey()
  final bool submitFormOnSelect;

  @override
  String toString() {
    return 'SelectInputUiSettings<$T>(labelText: $labelText, helperText: $helperText, hintText: $hintText, displayMode: $displayMode, valueBuilder: $valueBuilder, helpValueBuilder: $helpValueBuilder, searcher: $searcher, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, submitFormOnSelect: $submitFormOnSelect)';
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
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode) &&
            (identical(other.valueBuilder, valueBuilder) ||
                other.valueBuilder == valueBuilder) &&
            (identical(other.helpValueBuilder, helpValueBuilder) ||
                other.helpValueBuilder == helpValueBuilder) &&
            (identical(other.searcher, searcher) ||
                other.searcher == searcher) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.headerBuilder, headerBuilder) ||
                other.headerBuilder == headerBuilder) &&
            (identical(other.submitFormOnSelect, submitFormOnSelect) ||
                other.submitFormOnSelect == submitFormOnSelect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      helperText,
      hintText,
      displayMode,
      valueBuilder,
      helpValueBuilder,
      searcher,
      widgetBuilder,
      headerBuilder,
      submitFormOnSelect);

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
      final String? hintText,
      final SelectFieldDisplayMode? displayMode,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Widget? Function(T)? helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final double Function(String, T)? searcher,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final SelectFieldBuilderDef<T>? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final InputHeaderBuilderDef? headerBuilder,
      final bool submitFormOnSelect}) = _$SelectInputUiSettingsImpl<T>;
  const _SelectInputUiSettings._() : super._();

  factory _SelectInputUiSettings.fromJson(Map<String, dynamic> json) =
      _$SelectInputUiSettingsImpl<T>.fromJson;

  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  String? get hintText;
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  SelectFieldBuilderDef<T>? get widgetBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputHeaderBuilderDef? get headerBuilder;
  @override

  /// Only applies to unique choices
  bool get submitFormOnSelect;
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  Widget? get prefixIcon => throw _privateConstructorUsedError;
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

  /// Defaults to 1. If you want to set it to null, enter 0.
  int? get maxLines => throw _privateConstructorUsedError;
  String? get invalidRegexMessage => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  TextStyle? get style => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  StringFieldBuilderDef? get widgetBuilder =>
      throw _privateConstructorUsedError;

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
      @JsonKey(includeToJson: false, includeFromJson: false) Widget? prefixIcon,
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
      String? invalidRegexMessage,
      @JsonKey(includeToJson: false, includeFromJson: false) TextStyle? style,
      @JsonKey(includeToJson: false, includeFromJson: false)
      StringFieldBuilderDef? widgetBuilder});
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
    Object? prefixIcon = freezed,
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
    Object? style = freezed,
    Object? widgetBuilder = freezed,
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
      prefixIcon: freezed == prefixIcon
          ? _value.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
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
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as StringFieldBuilderDef?,
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
      @JsonKey(includeToJson: false, includeFromJson: false) Widget? prefixIcon,
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
      String? invalidRegexMessage,
      @JsonKey(includeToJson: false, includeFromJson: false) TextStyle? style,
      @JsonKey(includeToJson: false, includeFromJson: false)
      StringFieldBuilderDef? widgetBuilder});
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
    Object? prefixIcon = freezed,
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
    Object? style = freezed,
    Object? widgetBuilder = freezed,
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
      prefixIcon: freezed == prefixIcon
          ? _value.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
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
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      widgetBuilder: freezed == widgetBuilder
          ? _value.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as StringFieldBuilderDef?,
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
      @JsonKey(includeToJson: false, includeFromJson: false) this.prefixIcon,
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
      this.invalidRegexMessage,
      @JsonKey(includeToJson: false, includeFromJson: false) this.style,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Widget? prefixIcon;
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

  /// Defaults to 1. If you want to set it to null, enter 0.
  @override
  final int? maxLines;
  @override
  final String? invalidRegexMessage;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final TextStyle? style;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final StringFieldBuilderDef? widgetBuilder;

  @override
  String toString() {
    return 'StringInputUiSettings(labelText: $labelText, hintText: $hintText, helperText: $helperText, prefixIcon: $prefixIcon, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, invalidRegexMessage: $invalidRegexMessage, style: $style, widgetBuilder: $widgetBuilder)';
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
            (identical(other.prefixIcon, prefixIcon) ||
                other.prefixIcon == prefixIcon) &&
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
                other.invalidRegexMessage == invalidRegexMessage) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      hintText,
      helperText,
      prefixIcon,
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
      invalidRegexMessage,
      style,
      widgetBuilder);

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
          @JsonKey(includeToJson: false, includeFromJson: false)
          final Widget? prefixIcon,
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
          final String? invalidRegexMessage,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final TextStyle? style,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final StringFieldBuilderDef? widgetBuilder}) =
      _$StringInputUiSettingsImpl;
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
  @JsonKey(includeToJson: false, includeFromJson: false)
  Widget? get prefixIcon;
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

  /// Defaults to 1. If you want to set it to null, enter 0.
  int? get maxLines;
  @override
  String? get invalidRegexMessage;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  TextStyle? get style;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  StringFieldBuilderDef? get widgetBuilder;
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
  String get titleText => throw _privateConstructorUsedError;
  WoFormTitlePosition get titlePosition => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  HeaderBuilderDef? get headerBuilder => throw _privateConstructorUsedError;
  @JsonKey(toJson: WoFormSubmitMode.staticToJson)
  WoFormSubmitMode get submitMode => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  SubmitButtonBuilderDef? get submitButtonBuilder =>
      throw _privateConstructorUsedError;
  bool? get showAsteriskIfRequired => throw _privateConstructorUsedError;

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
      {String titleText,
      WoFormTitlePosition titlePosition,
      @JsonKey(includeToJson: false, includeFromJson: false)
      HeaderBuilderDef? headerBuilder,
      @JsonKey(toJson: WoFormSubmitMode.staticToJson)
      WoFormSubmitMode submitMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      SubmitButtonBuilderDef? submitButtonBuilder,
      bool? showAsteriskIfRequired});

  $WoFormSubmitModeCopyWith<$Res> get submitMode;
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
    Object? titleText = null,
    Object? titlePosition = null,
    Object? headerBuilder = freezed,
    Object? submitMode = null,
    Object? submitButtonBuilder = freezed,
    Object? showAsteriskIfRequired = freezed,
  }) {
    return _then(_value.copyWith(
      titleText: null == titleText
          ? _value.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as String,
      titlePosition: null == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as WoFormTitlePosition,
      headerBuilder: freezed == headerBuilder
          ? _value.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      submitMode: null == submitMode
          ? _value.submitMode
          : submitMode // ignore: cast_nullable_to_non_nullable
              as WoFormSubmitMode,
      submitButtonBuilder: freezed == submitButtonBuilder
          ? _value.submitButtonBuilder
          : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
              as SubmitButtonBuilderDef?,
      showAsteriskIfRequired: freezed == showAsteriskIfRequired
          ? _value.showAsteriskIfRequired
          : showAsteriskIfRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WoFormSubmitModeCopyWith<$Res> get submitMode {
    return $WoFormSubmitModeCopyWith<$Res>(_value.submitMode, (value) {
      return _then(_value.copyWith(submitMode: value) as $Val);
    });
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
      {String titleText,
      WoFormTitlePosition titlePosition,
      @JsonKey(includeToJson: false, includeFromJson: false)
      HeaderBuilderDef? headerBuilder,
      @JsonKey(toJson: WoFormSubmitMode.staticToJson)
      WoFormSubmitMode submitMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      SubmitButtonBuilderDef? submitButtonBuilder,
      bool? showAsteriskIfRequired});

  @override
  $WoFormSubmitModeCopyWith<$Res> get submitMode;
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
    Object? titleText = null,
    Object? titlePosition = null,
    Object? headerBuilder = freezed,
    Object? submitMode = null,
    Object? submitButtonBuilder = freezed,
    Object? showAsteriskIfRequired = freezed,
  }) {
    return _then(_$WoFormUiSettingsImpl(
      titleText: null == titleText
          ? _value.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as String,
      titlePosition: null == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as WoFormTitlePosition,
      headerBuilder: freezed == headerBuilder
          ? _value.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      submitMode: null == submitMode
          ? _value.submitMode
          : submitMode // ignore: cast_nullable_to_non_nullable
              as WoFormSubmitMode,
      submitButtonBuilder: freezed == submitButtonBuilder
          ? _value.submitButtonBuilder
          : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
              as SubmitButtonBuilderDef?,
      showAsteriskIfRequired: freezed == showAsteriskIfRequired
          ? _value.showAsteriskIfRequired
          : showAsteriskIfRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoFormUiSettingsImpl extends _WoFormUiSettings {
  const _$WoFormUiSettingsImpl(
      {this.titleText = '',
      this.titlePosition = WoFormTitlePosition.header,
      @JsonKey(includeToJson: false, includeFromJson: false) this.headerBuilder,
      @JsonKey(toJson: WoFormSubmitMode.staticToJson)
      this.submitMode = const WoFormSubmitMode.standard(),
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.submitButtonBuilder,
      this.showAsteriskIfRequired})
      : super._();

  factory _$WoFormUiSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoFormUiSettingsImplFromJson(json);

  @override
  @JsonKey()
  final String titleText;
  @override
  @JsonKey()
  final WoFormTitlePosition titlePosition;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final HeaderBuilderDef? headerBuilder;
  @override
  @JsonKey(toJson: WoFormSubmitMode.staticToJson)
  final WoFormSubmitMode submitMode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final SubmitButtonBuilderDef? submitButtonBuilder;
  @override
  final bool? showAsteriskIfRequired;

  @override
  String toString() {
    return 'WoFormUiSettings(titleText: $titleText, titlePosition: $titlePosition, headerBuilder: $headerBuilder, submitMode: $submitMode, submitButtonBuilder: $submitButtonBuilder, showAsteriskIfRequired: $showAsteriskIfRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormUiSettingsImpl &&
            (identical(other.titleText, titleText) ||
                other.titleText == titleText) &&
            (identical(other.titlePosition, titlePosition) ||
                other.titlePosition == titlePosition) &&
            (identical(other.headerBuilder, headerBuilder) ||
                other.headerBuilder == headerBuilder) &&
            (identical(other.submitMode, submitMode) ||
                other.submitMode == submitMode) &&
            (identical(other.submitButtonBuilder, submitButtonBuilder) ||
                other.submitButtonBuilder == submitButtonBuilder) &&
            (identical(other.showAsteriskIfRequired, showAsteriskIfRequired) ||
                other.showAsteriskIfRequired == showAsteriskIfRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, titleText, titlePosition,
      headerBuilder, submitMode, submitButtonBuilder, showAsteriskIfRequired);

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
      {final String titleText,
      final WoFormTitlePosition titlePosition,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final HeaderBuilderDef? headerBuilder,
      @JsonKey(toJson: WoFormSubmitMode.staticToJson)
      final WoFormSubmitMode submitMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final SubmitButtonBuilderDef? submitButtonBuilder,
      final bool? showAsteriskIfRequired}) = _$WoFormUiSettingsImpl;
  const _WoFormUiSettings._() : super._();

  factory _WoFormUiSettings.fromJson(Map<String, dynamic> json) =
      _$WoFormUiSettingsImpl.fromJson;

  @override
  String get titleText;
  @override
  WoFormTitlePosition get titlePosition;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  HeaderBuilderDef? get headerBuilder;
  @override
  @JsonKey(toJson: WoFormSubmitMode.staticToJson)
  WoFormSubmitMode get submitMode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  SubmitButtonBuilderDef? get submitButtonBuilder;
  @override
  bool? get showAsteriskIfRequired;
  @override
  @JsonKey(ignore: true)
  _$$WoFormUiSettingsImplCopyWith<_$WoFormUiSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WoFormSubmitMode _$WoFormSubmitModeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'standard':
      return StandardSubmitMode.fromJson(json);
    case 'pageByPage':
      return PageByPageSubmitMode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormSubmitMode',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormSubmitMode {
  String? get submitText => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  IconData? get submitIcon => throw _privateConstructorUsedError;
  DisableSubmitButton get disableSubmitMode =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)
        standard,
    required TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)
        pageByPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)?
        standard,
    TResult? Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)?
        pageByPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)?
        standard,
    TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)?
        pageByPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardSubmitMode value) standard,
    required TResult Function(PageByPageSubmitMode value) pageByPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardSubmitMode value)? standard,
    TResult? Function(PageByPageSubmitMode value)? pageByPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardSubmitMode value)? standard,
    TResult Function(PageByPageSubmitMode value)? pageByPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WoFormSubmitModeCopyWith<WoFormSubmitMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormSubmitModeCopyWith<$Res> {
  factory $WoFormSubmitModeCopyWith(
          WoFormSubmitMode value, $Res Function(WoFormSubmitMode) then) =
      _$WoFormSubmitModeCopyWithImpl<$Res, WoFormSubmitMode>;
  @useResult
  $Res call(
      {String? submitText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      IconData? submitIcon,
      DisableSubmitButton disableSubmitMode});
}

/// @nodoc
class _$WoFormSubmitModeCopyWithImpl<$Res, $Val extends WoFormSubmitMode>
    implements $WoFormSubmitModeCopyWith<$Res> {
  _$WoFormSubmitModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitText = freezed,
    Object? submitIcon = freezed,
    Object? disableSubmitMode = null,
  }) {
    return _then(_value.copyWith(
      submitText: freezed == submitText
          ? _value.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitIcon: freezed == submitIcon
          ? _value.submitIcon
          : submitIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      disableSubmitMode: null == disableSubmitMode
          ? _value.disableSubmitMode
          : disableSubmitMode // ignore: cast_nullable_to_non_nullable
              as DisableSubmitButton,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandardSubmitModeImplCopyWith<$Res>
    implements $WoFormSubmitModeCopyWith<$Res> {
  factory _$$StandardSubmitModeImplCopyWith(_$StandardSubmitModeImpl value,
          $Res Function(_$StandardSubmitModeImpl) then) =
      __$$StandardSubmitModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? submitText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      IconData? submitIcon,
      DisableSubmitButton disableSubmitMode,
      SubmitButtonPosition buttonPosition});
}

/// @nodoc
class __$$StandardSubmitModeImplCopyWithImpl<$Res>
    extends _$WoFormSubmitModeCopyWithImpl<$Res, _$StandardSubmitModeImpl>
    implements _$$StandardSubmitModeImplCopyWith<$Res> {
  __$$StandardSubmitModeImplCopyWithImpl(_$StandardSubmitModeImpl _value,
      $Res Function(_$StandardSubmitModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitText = freezed,
    Object? submitIcon = freezed,
    Object? disableSubmitMode = null,
    Object? buttonPosition = null,
  }) {
    return _then(_$StandardSubmitModeImpl(
      submitText: freezed == submitText
          ? _value.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitIcon: freezed == submitIcon
          ? _value.submitIcon
          : submitIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      disableSubmitMode: null == disableSubmitMode
          ? _value.disableSubmitMode
          : disableSubmitMode // ignore: cast_nullable_to_non_nullable
              as DisableSubmitButton,
      buttonPosition: null == buttonPosition
          ? _value.buttonPosition
          : buttonPosition // ignore: cast_nullable_to_non_nullable
              as SubmitButtonPosition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StandardSubmitModeImpl extends StandardSubmitMode {
  const _$StandardSubmitModeImpl(
      {this.submitText,
      @JsonKey(includeToJson: false, includeFromJson: false) this.submitIcon,
      this.disableSubmitMode = DisableSubmitButton.never,
      this.buttonPosition = SubmitButtonPosition.bottom,
      final String? $type})
      : $type = $type ?? 'standard',
        super._();

  factory _$StandardSubmitModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandardSubmitModeImplFromJson(json);

  @override
  final String? submitText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final IconData? submitIcon;
  @override
  @JsonKey()
  final DisableSubmitButton disableSubmitMode;
  @override
  @JsonKey()
  final SubmitButtonPosition buttonPosition;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormSubmitMode.standard(submitText: $submitText, submitIcon: $submitIcon, disableSubmitMode: $disableSubmitMode, buttonPosition: $buttonPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandardSubmitModeImpl &&
            (identical(other.submitText, submitText) ||
                other.submitText == submitText) &&
            (identical(other.submitIcon, submitIcon) ||
                other.submitIcon == submitIcon) &&
            (identical(other.disableSubmitMode, disableSubmitMode) ||
                other.disableSubmitMode == disableSubmitMode) &&
            (identical(other.buttonPosition, buttonPosition) ||
                other.buttonPosition == buttonPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, submitText, submitIcon, disableSubmitMode, buttonPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandardSubmitModeImplCopyWith<_$StandardSubmitModeImpl> get copyWith =>
      __$$StandardSubmitModeImplCopyWithImpl<_$StandardSubmitModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)
        standard,
    required TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)
        pageByPage,
  }) {
    return standard(submitText, submitIcon, disableSubmitMode, buttonPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)?
        standard,
    TResult? Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)?
        pageByPage,
  }) {
    return standard?.call(
        submitText, submitIcon, disableSubmitMode, buttonPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)?
        standard,
    TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)?
        pageByPage,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(
          submitText, submitIcon, disableSubmitMode, buttonPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardSubmitMode value) standard,
    required TResult Function(PageByPageSubmitMode value) pageByPage,
  }) {
    return standard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardSubmitMode value)? standard,
    TResult? Function(PageByPageSubmitMode value)? pageByPage,
  }) {
    return standard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardSubmitMode value)? standard,
    TResult Function(PageByPageSubmitMode value)? pageByPage,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StandardSubmitModeImplToJson(
      this,
    );
  }
}

abstract class StandardSubmitMode extends WoFormSubmitMode {
  const factory StandardSubmitMode(
      {final String? submitText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final IconData? submitIcon,
      final DisableSubmitButton disableSubmitMode,
      final SubmitButtonPosition buttonPosition}) = _$StandardSubmitModeImpl;
  const StandardSubmitMode._() : super._();

  factory StandardSubmitMode.fromJson(Map<String, dynamic> json) =
      _$StandardSubmitModeImpl.fromJson;

  @override
  String? get submitText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  IconData? get submitIcon;
  @override
  DisableSubmitButton get disableSubmitMode;
  SubmitButtonPosition get buttonPosition;
  @override
  @JsonKey(ignore: true)
  _$$StandardSubmitModeImplCopyWith<_$StandardSubmitModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageByPageSubmitModeImplCopyWith<$Res>
    implements $WoFormSubmitModeCopyWith<$Res> {
  factory _$$PageByPageSubmitModeImplCopyWith(_$PageByPageSubmitModeImpl value,
          $Res Function(_$PageByPageSubmitModeImpl) then) =
      __$$PageByPageSubmitModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? submitText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      IconData? submitIcon,
      String? nextText,
      DisableSubmitButton disableSubmitMode,
      bool showProgressIndicator});
}

/// @nodoc
class __$$PageByPageSubmitModeImplCopyWithImpl<$Res>
    extends _$WoFormSubmitModeCopyWithImpl<$Res, _$PageByPageSubmitModeImpl>
    implements _$$PageByPageSubmitModeImplCopyWith<$Res> {
  __$$PageByPageSubmitModeImplCopyWithImpl(_$PageByPageSubmitModeImpl _value,
      $Res Function(_$PageByPageSubmitModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitText = freezed,
    Object? submitIcon = freezed,
    Object? nextText = freezed,
    Object? disableSubmitMode = null,
    Object? showProgressIndicator = null,
  }) {
    return _then(_$PageByPageSubmitModeImpl(
      submitText: freezed == submitText
          ? _value.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitIcon: freezed == submitIcon
          ? _value.submitIcon
          : submitIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      nextText: freezed == nextText
          ? _value.nextText
          : nextText // ignore: cast_nullable_to_non_nullable
              as String?,
      disableSubmitMode: null == disableSubmitMode
          ? _value.disableSubmitMode
          : disableSubmitMode // ignore: cast_nullable_to_non_nullable
              as DisableSubmitButton,
      showProgressIndicator: null == showProgressIndicator
          ? _value.showProgressIndicator
          : showProgressIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageByPageSubmitModeImpl extends PageByPageSubmitMode {
  const _$PageByPageSubmitModeImpl(
      {this.submitText,
      @JsonKey(includeToJson: false, includeFromJson: false) this.submitIcon,
      this.nextText,
      this.disableSubmitMode = DisableSubmitButton.never,
      this.showProgressIndicator = true,
      final String? $type})
      : $type = $type ?? 'pageByPage',
        super._();

  factory _$PageByPageSubmitModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageByPageSubmitModeImplFromJson(json);

  @override
  final String? submitText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final IconData? submitIcon;
  @override
  final String? nextText;
  @override
  @JsonKey()
  final DisableSubmitButton disableSubmitMode;
  @override
  @JsonKey()
  final bool showProgressIndicator;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormSubmitMode.pageByPage(submitText: $submitText, submitIcon: $submitIcon, nextText: $nextText, disableSubmitMode: $disableSubmitMode, showProgressIndicator: $showProgressIndicator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageByPageSubmitModeImpl &&
            (identical(other.submitText, submitText) ||
                other.submitText == submitText) &&
            (identical(other.submitIcon, submitIcon) ||
                other.submitIcon == submitIcon) &&
            (identical(other.nextText, nextText) ||
                other.nextText == nextText) &&
            (identical(other.disableSubmitMode, disableSubmitMode) ||
                other.disableSubmitMode == disableSubmitMode) &&
            (identical(other.showProgressIndicator, showProgressIndicator) ||
                other.showProgressIndicator == showProgressIndicator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, submitText, submitIcon, nextText,
      disableSubmitMode, showProgressIndicator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageByPageSubmitModeImplCopyWith<_$PageByPageSubmitModeImpl>
      get copyWith =>
          __$$PageByPageSubmitModeImplCopyWithImpl<_$PageByPageSubmitModeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)
        standard,
    required TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)
        pageByPage,
  }) {
    return pageByPage(submitText, submitIcon, nextText, disableSubmitMode,
        showProgressIndicator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)?
        standard,
    TResult? Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)?
        pageByPage,
  }) {
    return pageByPage?.call(submitText, submitIcon, nextText, disableSubmitMode,
        showProgressIndicator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            DisableSubmitButton disableSubmitMode,
            SubmitButtonPosition buttonPosition)?
        standard,
    TResult Function(
            String? submitText,
            @JsonKey(includeToJson: false, includeFromJson: false)
            IconData? submitIcon,
            String? nextText,
            DisableSubmitButton disableSubmitMode,
            bool showProgressIndicator)?
        pageByPage,
    required TResult orElse(),
  }) {
    if (pageByPage != null) {
      return pageByPage(submitText, submitIcon, nextText, disableSubmitMode,
          showProgressIndicator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardSubmitMode value) standard,
    required TResult Function(PageByPageSubmitMode value) pageByPage,
  }) {
    return pageByPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardSubmitMode value)? standard,
    TResult? Function(PageByPageSubmitMode value)? pageByPage,
  }) {
    return pageByPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardSubmitMode value)? standard,
    TResult Function(PageByPageSubmitMode value)? pageByPage,
    required TResult orElse(),
  }) {
    if (pageByPage != null) {
      return pageByPage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PageByPageSubmitModeImplToJson(
      this,
    );
  }
}

abstract class PageByPageSubmitMode extends WoFormSubmitMode {
  const factory PageByPageSubmitMode(
      {final String? submitText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final IconData? submitIcon,
      final String? nextText,
      final DisableSubmitButton disableSubmitMode,
      final bool showProgressIndicator}) = _$PageByPageSubmitModeImpl;
  const PageByPageSubmitMode._() : super._();

  factory PageByPageSubmitMode.fromJson(Map<String, dynamic> json) =
      _$PageByPageSubmitModeImpl.fromJson;

  @override
  String? get submitText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  IconData? get submitIcon;
  String? get nextText;
  @override
  DisableSubmitButton get disableSubmitMode;
  bool get showProgressIndicator;
  @override
  @JsonKey(ignore: true)
  _$$PageByPageSubmitModeImplCopyWith<_$PageByPageSubmitModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

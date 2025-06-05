// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BooleanInputUiSettings {
  String? get labelText;
  String? get helperText;
  BooleanFieldControlType? get controlType;
  ListTileControlAffinity? get controlAffinity;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Widget? get secondary;
  @JsonKey(includeToJson: false, includeFromJson: false)
  BooleanFieldBuilderDef? get widgetBuilder;

  /// Create a copy of BooleanInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BooleanInputUiSettingsCopyWith<BooleanInputUiSettings> get copyWith =>
      _$BooleanInputUiSettingsCopyWithImpl<BooleanInputUiSettings>(
          this as BooleanInputUiSettings, _$identity);

  /// Serializes this BooleanInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BooleanInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.controlType, controlType) ||
                other.controlType == controlType) &&
            (identical(other.controlAffinity, controlAffinity) ||
                other.controlAffinity == controlAffinity) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      controlType, controlAffinity, secondary, widgetBuilder);

  @override
  String toString() {
    return 'BooleanInputUiSettings(labelText: $labelText, helperText: $helperText, controlType: $controlType, controlAffinity: $controlAffinity, secondary: $secondary, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class $BooleanInputUiSettingsCopyWith<$Res> {
  factory $BooleanInputUiSettingsCopyWith(BooleanInputUiSettings value,
          $Res Function(BooleanInputUiSettings) _then) =
      _$BooleanInputUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      BooleanFieldControlType? controlType,
      ListTileControlAffinity? controlAffinity,
      @JsonKey(includeToJson: false, includeFromJson: false) Widget? secondary,
      @JsonKey(includeToJson: false, includeFromJson: false)
      BooleanFieldBuilderDef? widgetBuilder});
}

/// @nodoc
class _$BooleanInputUiSettingsCopyWithImpl<$Res>
    implements $BooleanInputUiSettingsCopyWith<$Res> {
  _$BooleanInputUiSettingsCopyWithImpl(this._self, this._then);

  final BooleanInputUiSettings _self;
  final $Res Function(BooleanInputUiSettings) _then;

  /// Create a copy of BooleanInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? controlType = freezed,
    Object? controlAffinity = freezed,
    Object? secondary = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      controlType: freezed == controlType
          ? _self.controlType
          : controlType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldControlType?,
      controlAffinity: freezed == controlAffinity
          ? _self.controlAffinity
          : controlAffinity // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
      secondary: freezed == secondary
          ? _self.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Widget?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as BooleanFieldBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BooleanInputUiSettings extends BooleanInputUiSettings {
  const _BooleanInputUiSettings(
      {this.labelText,
      this.helperText,
      this.controlType,
      this.controlAffinity,
      @JsonKey(includeToJson: false, includeFromJson: false) this.secondary,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();
  factory _BooleanInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$BooleanInputUiSettingsFromJson(json);

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
  final Widget? secondary;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final BooleanFieldBuilderDef? widgetBuilder;

  /// Create a copy of BooleanInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BooleanInputUiSettingsCopyWith<_BooleanInputUiSettings> get copyWith =>
      __$BooleanInputUiSettingsCopyWithImpl<_BooleanInputUiSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BooleanInputUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BooleanInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.controlType, controlType) ||
                other.controlType == controlType) &&
            (identical(other.controlAffinity, controlAffinity) ||
                other.controlAffinity == controlAffinity) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      controlType, controlAffinity, secondary, widgetBuilder);

  @override
  String toString() {
    return 'BooleanInputUiSettings(labelText: $labelText, helperText: $helperText, controlType: $controlType, controlAffinity: $controlAffinity, secondary: $secondary, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class _$BooleanInputUiSettingsCopyWith<$Res>
    implements $BooleanInputUiSettingsCopyWith<$Res> {
  factory _$BooleanInputUiSettingsCopyWith(_BooleanInputUiSettings value,
          $Res Function(_BooleanInputUiSettings) _then) =
      __$BooleanInputUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      BooleanFieldControlType? controlType,
      ListTileControlAffinity? controlAffinity,
      @JsonKey(includeToJson: false, includeFromJson: false) Widget? secondary,
      @JsonKey(includeToJson: false, includeFromJson: false)
      BooleanFieldBuilderDef? widgetBuilder});
}

/// @nodoc
class __$BooleanInputUiSettingsCopyWithImpl<$Res>
    implements _$BooleanInputUiSettingsCopyWith<$Res> {
  __$BooleanInputUiSettingsCopyWithImpl(this._self, this._then);

  final _BooleanInputUiSettings _self;
  final $Res Function(_BooleanInputUiSettings) _then;

  /// Create a copy of BooleanInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? controlType = freezed,
    Object? controlAffinity = freezed,
    Object? secondary = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_BooleanInputUiSettings(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      controlType: freezed == controlType
          ? _self.controlType
          : controlType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldControlType?,
      controlAffinity: freezed == controlAffinity
          ? _self.controlAffinity
          : controlAffinity // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
      secondary: freezed == secondary
          ? _self.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Widget?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as BooleanFieldBuilderDef?,
    ));
  }
}

/// @nodoc
mixin _$DateTimeInputUiSettings {
  String? get dateFormat;
  String? get timeFormat;
  String? get labelText;
  String? get helperText;
  String? get hintText;

  /// If null, label will be placed above the date selector.
  /// Else, label and selector will be in a flexible row,
  /// selector with a flex value of 10,
  /// and label with a flex value of [labelFlex].
  int? get labelFlex;

  /// If DateTimeInput.initialValue is null, this value will be used instead.
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  FlexibleDateTime? get initialEditValue;
  DatePickerEntryMode? get initialDateEntryMode;
  DatePickerMode? get initialDatePickerMode;
  DateEditMode? get editMode;
  @JsonKey(includeToJson: false, includeFromJson: false)
  PickDateDef? get pickDate;
  @JsonKey(includeToJson: false, includeFromJson: false)
  PickTimeDef? get pickTime;
  TimePickerEntryMode? get initialTimeEntryMode;
  @JsonKey(includeToJson: false, includeFromJson: false)
  DateTimeFieldBuilderDef? get widgetBuilder;

  /// Create a copy of DateTimeInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateTimeInputUiSettingsCopyWith<DateTimeInputUiSettings> get copyWith =>
      _$DateTimeInputUiSettingsCopyWithImpl<DateTimeInputUiSettings>(
          this as DateTimeInputUiSettings, _$identity);

  /// Serializes this DateTimeInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateTimeInputUiSettings &&
            (identical(other.dateFormat, dateFormat) ||
                other.dateFormat == dateFormat) &&
            (identical(other.timeFormat, timeFormat) ||
                other.timeFormat == timeFormat) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.labelFlex, labelFlex) ||
                other.labelFlex == labelFlex) &&
            (identical(other.initialEditValue, initialEditValue) ||
                other.initialEditValue == initialEditValue) &&
            (identical(other.initialDateEntryMode, initialDateEntryMode) ||
                other.initialDateEntryMode == initialDateEntryMode) &&
            (identical(other.initialDatePickerMode, initialDatePickerMode) ||
                other.initialDatePickerMode == initialDatePickerMode) &&
            (identical(other.editMode, editMode) ||
                other.editMode == editMode) &&
            (identical(other.pickDate, pickDate) ||
                other.pickDate == pickDate) &&
            (identical(other.pickTime, pickTime) ||
                other.pickTime == pickTime) &&
            (identical(other.initialTimeEntryMode, initialTimeEntryMode) ||
                other.initialTimeEntryMode == initialTimeEntryMode) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateFormat,
      timeFormat,
      labelText,
      helperText,
      hintText,
      labelFlex,
      initialEditValue,
      initialDateEntryMode,
      initialDatePickerMode,
      editMode,
      pickDate,
      pickTime,
      initialTimeEntryMode,
      widgetBuilder);

  @override
  String toString() {
    return 'DateTimeInputUiSettings(dateFormat: $dateFormat, timeFormat: $timeFormat, labelText: $labelText, helperText: $helperText, hintText: $hintText, labelFlex: $labelFlex, initialEditValue: $initialEditValue, initialDateEntryMode: $initialDateEntryMode, initialDatePickerMode: $initialDatePickerMode, editMode: $editMode, pickDate: $pickDate, pickTime: $pickTime, initialTimeEntryMode: $initialTimeEntryMode, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class $DateTimeInputUiSettingsCopyWith<$Res> {
  factory $DateTimeInputUiSettingsCopyWith(DateTimeInputUiSettings value,
          $Res Function(DateTimeInputUiSettings) _then) =
      _$DateTimeInputUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? dateFormat,
      String? timeFormat,
      String? labelText,
      String? helperText,
      String? hintText,
      int? labelFlex,
      @JsonKey(toJson: FlexibleDateTime.staticToJson)
      FlexibleDateTime? initialEditValue,
      DatePickerEntryMode? initialDateEntryMode,
      DatePickerMode? initialDatePickerMode,
      DateEditMode? editMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickDateDef? pickDate,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickTimeDef? pickTime,
      TimePickerEntryMode? initialTimeEntryMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DateTimeFieldBuilderDef? widgetBuilder});

  $FlexibleDateTimeCopyWith<$Res>? get initialEditValue;
}

/// @nodoc
class _$DateTimeInputUiSettingsCopyWithImpl<$Res>
    implements $DateTimeInputUiSettingsCopyWith<$Res> {
  _$DateTimeInputUiSettingsCopyWithImpl(this._self, this._then);

  final DateTimeInputUiSettings _self;
  final $Res Function(DateTimeInputUiSettings) _then;

  /// Create a copy of DateTimeInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateFormat = freezed,
    Object? timeFormat = freezed,
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? hintText = freezed,
    Object? labelFlex = freezed,
    Object? initialEditValue = freezed,
    Object? initialDateEntryMode = freezed,
    Object? initialDatePickerMode = freezed,
    Object? editMode = freezed,
    Object? pickDate = freezed,
    Object? pickTime = freezed,
    Object? initialTimeEntryMode = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_self.copyWith(
      dateFormat: freezed == dateFormat
          ? _self.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFormat: freezed == timeFormat
          ? _self.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelFlex: freezed == labelFlex
          ? _self.labelFlex
          : labelFlex // ignore: cast_nullable_to_non_nullable
              as int?,
      initialEditValue: freezed == initialEditValue
          ? _self.initialEditValue
          : initialEditValue // ignore: cast_nullable_to_non_nullable
              as FlexibleDateTime?,
      initialDateEntryMode: freezed == initialDateEntryMode
          ? _self.initialDateEntryMode
          : initialDateEntryMode // ignore: cast_nullable_to_non_nullable
              as DatePickerEntryMode?,
      initialDatePickerMode: freezed == initialDatePickerMode
          ? _self.initialDatePickerMode
          : initialDatePickerMode // ignore: cast_nullable_to_non_nullable
              as DatePickerMode?,
      editMode: freezed == editMode
          ? _self.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as DateEditMode?,
      pickDate: freezed == pickDate
          ? _self.pickDate
          : pickDate // ignore: cast_nullable_to_non_nullable
              as PickDateDef?,
      pickTime: freezed == pickTime
          ? _self.pickTime
          : pickTime // ignore: cast_nullable_to_non_nullable
              as PickTimeDef?,
      initialTimeEntryMode: freezed == initialTimeEntryMode
          ? _self.initialTimeEntryMode
          : initialTimeEntryMode // ignore: cast_nullable_to_non_nullable
              as TimePickerEntryMode?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DateTimeFieldBuilderDef?,
    ));
  }

  /// Create a copy of DateTimeInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlexibleDateTimeCopyWith<$Res>? get initialEditValue {
    if (_self.initialEditValue == null) {
      return null;
    }

    return $FlexibleDateTimeCopyWith<$Res>(_self.initialEditValue!, (value) {
      return _then(_self.copyWith(initialEditValue: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DateTimeInputUiSettings extends DateTimeInputUiSettings {
  const _DateTimeInputUiSettings(
      {this.dateFormat,
      this.timeFormat,
      this.labelText,
      this.helperText,
      this.hintText,
      this.labelFlex,
      @JsonKey(toJson: FlexibleDateTime.staticToJson) this.initialEditValue,
      this.initialDateEntryMode,
      this.initialDatePickerMode,
      this.editMode,
      @JsonKey(includeToJson: false, includeFromJson: false) this.pickDate,
      @JsonKey(includeToJson: false, includeFromJson: false) this.pickTime,
      this.initialTimeEntryMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();
  factory _DateTimeInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DateTimeInputUiSettingsFromJson(json);

  @override
  final String? dateFormat;
  @override
  final String? timeFormat;
  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final String? hintText;

  /// If null, label will be placed above the date selector.
  /// Else, label and selector will be in a flexible row,
  /// selector with a flex value of 10,
  /// and label with a flex value of [labelFlex].
  @override
  final int? labelFlex;

  /// If DateTimeInput.initialValue is null, this value will be used instead.
  @override
  @JsonKey(toJson: FlexibleDateTime.staticToJson)
  final FlexibleDateTime? initialEditValue;
  @override
  final DatePickerEntryMode? initialDateEntryMode;
  @override
  final DatePickerMode? initialDatePickerMode;
  @override
  final DateEditMode? editMode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final PickDateDef? pickDate;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final PickTimeDef? pickTime;
  @override
  final TimePickerEntryMode? initialTimeEntryMode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final DateTimeFieldBuilderDef? widgetBuilder;

  /// Create a copy of DateTimeInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateTimeInputUiSettingsCopyWith<_DateTimeInputUiSettings> get copyWith =>
      __$DateTimeInputUiSettingsCopyWithImpl<_DateTimeInputUiSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DateTimeInputUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateTimeInputUiSettings &&
            (identical(other.dateFormat, dateFormat) ||
                other.dateFormat == dateFormat) &&
            (identical(other.timeFormat, timeFormat) ||
                other.timeFormat == timeFormat) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.labelFlex, labelFlex) ||
                other.labelFlex == labelFlex) &&
            (identical(other.initialEditValue, initialEditValue) ||
                other.initialEditValue == initialEditValue) &&
            (identical(other.initialDateEntryMode, initialDateEntryMode) ||
                other.initialDateEntryMode == initialDateEntryMode) &&
            (identical(other.initialDatePickerMode, initialDatePickerMode) ||
                other.initialDatePickerMode == initialDatePickerMode) &&
            (identical(other.editMode, editMode) ||
                other.editMode == editMode) &&
            (identical(other.pickDate, pickDate) ||
                other.pickDate == pickDate) &&
            (identical(other.pickTime, pickTime) ||
                other.pickTime == pickTime) &&
            (identical(other.initialTimeEntryMode, initialTimeEntryMode) ||
                other.initialTimeEntryMode == initialTimeEntryMode) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateFormat,
      timeFormat,
      labelText,
      helperText,
      hintText,
      labelFlex,
      initialEditValue,
      initialDateEntryMode,
      initialDatePickerMode,
      editMode,
      pickDate,
      pickTime,
      initialTimeEntryMode,
      widgetBuilder);

  @override
  String toString() {
    return 'DateTimeInputUiSettings(dateFormat: $dateFormat, timeFormat: $timeFormat, labelText: $labelText, helperText: $helperText, hintText: $hintText, labelFlex: $labelFlex, initialEditValue: $initialEditValue, initialDateEntryMode: $initialDateEntryMode, initialDatePickerMode: $initialDatePickerMode, editMode: $editMode, pickDate: $pickDate, pickTime: $pickTime, initialTimeEntryMode: $initialTimeEntryMode, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class _$DateTimeInputUiSettingsCopyWith<$Res>
    implements $DateTimeInputUiSettingsCopyWith<$Res> {
  factory _$DateTimeInputUiSettingsCopyWith(_DateTimeInputUiSettings value,
          $Res Function(_DateTimeInputUiSettings) _then) =
      __$DateTimeInputUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? dateFormat,
      String? timeFormat,
      String? labelText,
      String? helperText,
      String? hintText,
      int? labelFlex,
      @JsonKey(toJson: FlexibleDateTime.staticToJson)
      FlexibleDateTime? initialEditValue,
      DatePickerEntryMode? initialDateEntryMode,
      DatePickerMode? initialDatePickerMode,
      DateEditMode? editMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickDateDef? pickDate,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickTimeDef? pickTime,
      TimePickerEntryMode? initialTimeEntryMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DateTimeFieldBuilderDef? widgetBuilder});

  @override
  $FlexibleDateTimeCopyWith<$Res>? get initialEditValue;
}

/// @nodoc
class __$DateTimeInputUiSettingsCopyWithImpl<$Res>
    implements _$DateTimeInputUiSettingsCopyWith<$Res> {
  __$DateTimeInputUiSettingsCopyWithImpl(this._self, this._then);

  final _DateTimeInputUiSettings _self;
  final $Res Function(_DateTimeInputUiSettings) _then;

  /// Create a copy of DateTimeInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dateFormat = freezed,
    Object? timeFormat = freezed,
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? hintText = freezed,
    Object? labelFlex = freezed,
    Object? initialEditValue = freezed,
    Object? initialDateEntryMode = freezed,
    Object? initialDatePickerMode = freezed,
    Object? editMode = freezed,
    Object? pickDate = freezed,
    Object? pickTime = freezed,
    Object? initialTimeEntryMode = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_DateTimeInputUiSettings(
      dateFormat: freezed == dateFormat
          ? _self.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFormat: freezed == timeFormat
          ? _self.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelFlex: freezed == labelFlex
          ? _self.labelFlex
          : labelFlex // ignore: cast_nullable_to_non_nullable
              as int?,
      initialEditValue: freezed == initialEditValue
          ? _self.initialEditValue
          : initialEditValue // ignore: cast_nullable_to_non_nullable
              as FlexibleDateTime?,
      initialDateEntryMode: freezed == initialDateEntryMode
          ? _self.initialDateEntryMode
          : initialDateEntryMode // ignore: cast_nullable_to_non_nullable
              as DatePickerEntryMode?,
      initialDatePickerMode: freezed == initialDatePickerMode
          ? _self.initialDatePickerMode
          : initialDatePickerMode // ignore: cast_nullable_to_non_nullable
              as DatePickerMode?,
      editMode: freezed == editMode
          ? _self.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as DateEditMode?,
      pickDate: freezed == pickDate
          ? _self.pickDate
          : pickDate // ignore: cast_nullable_to_non_nullable
              as PickDateDef?,
      pickTime: freezed == pickTime
          ? _self.pickTime
          : pickTime // ignore: cast_nullable_to_non_nullable
              as PickTimeDef?,
      initialTimeEntryMode: freezed == initialTimeEntryMode
          ? _self.initialTimeEntryMode
          : initialTimeEntryMode // ignore: cast_nullable_to_non_nullable
              as TimePickerEntryMode?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DateTimeFieldBuilderDef?,
    ));
  }

  /// Create a copy of DateTimeInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlexibleDateTimeCopyWith<$Res>? get initialEditValue {
    if (_self.initialEditValue == null) {
      return null;
    }

    return $FlexibleDateTimeCopyWith<$Res>(_self.initialEditValue!, (value) {
      return _then(_self.copyWith(initialEditValue: value));
    });
  }
}

/// @nodoc
mixin _$DurationInputUiSettings {
  String? get labelText;
  String? get helperText;
  String? get hintText;
  DurationEditMode? get editMode;

  /// If null, label will be placed above the date selector.
  /// Else, label and selector will be in a flexible row,
  /// selector with a flex value of 10,
  /// and label with a flex value of [labelFlex].
  int? get labelFlex;
  @JsonKey(includeToJson: false, includeFromJson: false)
  PickDurationDef? get pickDuration;
  @JsonKey(includeToJson: false, includeFromJson: false)
  FormatDurationDef? get formatDuration;
  @JsonKey(includeToJson: false, includeFromJson: false)
  DurationFieldBuilderDef? get widgetBuilder;

  /// The following fields are used if editMode is dateTime
  String? get dateTimeLabelText;
  String? get dateTimeHelperText;
  String? get dateTimeHintText;
  String? get dateFormat;
  String? get timeFormat;
  DateEditMode? get dateTimeEditMode;
  @JsonKey(includeToJson: false, includeFromJson: false)
  PickDateDef? get pickDate;
  @JsonKey(includeToJson: false, includeFromJson: false)
  PickTimeDef? get pickTime;

  /// Create a copy of DurationInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DurationInputUiSettingsCopyWith<DurationInputUiSettings> get copyWith =>
      _$DurationInputUiSettingsCopyWithImpl<DurationInputUiSettings>(
          this as DurationInputUiSettings, _$identity);

  /// Serializes this DurationInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DurationInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.editMode, editMode) ||
                other.editMode == editMode) &&
            (identical(other.labelFlex, labelFlex) ||
                other.labelFlex == labelFlex) &&
            (identical(other.pickDuration, pickDuration) ||
                other.pickDuration == pickDuration) &&
            (identical(other.formatDuration, formatDuration) ||
                other.formatDuration == formatDuration) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.dateTimeLabelText, dateTimeLabelText) ||
                other.dateTimeLabelText == dateTimeLabelText) &&
            (identical(other.dateTimeHelperText, dateTimeHelperText) ||
                other.dateTimeHelperText == dateTimeHelperText) &&
            (identical(other.dateTimeHintText, dateTimeHintText) ||
                other.dateTimeHintText == dateTimeHintText) &&
            (identical(other.dateFormat, dateFormat) ||
                other.dateFormat == dateFormat) &&
            (identical(other.timeFormat, timeFormat) ||
                other.timeFormat == timeFormat) &&
            (identical(other.dateTimeEditMode, dateTimeEditMode) ||
                other.dateTimeEditMode == dateTimeEditMode) &&
            (identical(other.pickDate, pickDate) ||
                other.pickDate == pickDate) &&
            (identical(other.pickTime, pickTime) ||
                other.pickTime == pickTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      helperText,
      hintText,
      editMode,
      labelFlex,
      pickDuration,
      formatDuration,
      widgetBuilder,
      dateTimeLabelText,
      dateTimeHelperText,
      dateTimeHintText,
      dateFormat,
      timeFormat,
      dateTimeEditMode,
      pickDate,
      pickTime);

  @override
  String toString() {
    return 'DurationInputUiSettings(labelText: $labelText, helperText: $helperText, hintText: $hintText, editMode: $editMode, labelFlex: $labelFlex, pickDuration: $pickDuration, formatDuration: $formatDuration, widgetBuilder: $widgetBuilder, dateTimeLabelText: $dateTimeLabelText, dateTimeHelperText: $dateTimeHelperText, dateTimeHintText: $dateTimeHintText, dateFormat: $dateFormat, timeFormat: $timeFormat, dateTimeEditMode: $dateTimeEditMode, pickDate: $pickDate, pickTime: $pickTime)';
  }
}

/// @nodoc
abstract mixin class $DurationInputUiSettingsCopyWith<$Res> {
  factory $DurationInputUiSettingsCopyWith(DurationInputUiSettings value,
          $Res Function(DurationInputUiSettings) _then) =
      _$DurationInputUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      String? hintText,
      DurationEditMode? editMode,
      int? labelFlex,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickDurationDef? pickDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      FormatDurationDef? formatDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DurationFieldBuilderDef? widgetBuilder,
      String? dateTimeLabelText,
      String? dateTimeHelperText,
      String? dateTimeHintText,
      String? dateFormat,
      String? timeFormat,
      DateEditMode? dateTimeEditMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickDateDef? pickDate,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickTimeDef? pickTime});
}

/// @nodoc
class _$DurationInputUiSettingsCopyWithImpl<$Res>
    implements $DurationInputUiSettingsCopyWith<$Res> {
  _$DurationInputUiSettingsCopyWithImpl(this._self, this._then);

  final DurationInputUiSettings _self;
  final $Res Function(DurationInputUiSettings) _then;

  /// Create a copy of DurationInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? hintText = freezed,
    Object? editMode = freezed,
    Object? labelFlex = freezed,
    Object? pickDuration = freezed,
    Object? formatDuration = freezed,
    Object? widgetBuilder = freezed,
    Object? dateTimeLabelText = freezed,
    Object? dateTimeHelperText = freezed,
    Object? dateTimeHintText = freezed,
    Object? dateFormat = freezed,
    Object? timeFormat = freezed,
    Object? dateTimeEditMode = freezed,
    Object? pickDate = freezed,
    Object? pickTime = freezed,
  }) {
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      editMode: freezed == editMode
          ? _self.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as DurationEditMode?,
      labelFlex: freezed == labelFlex
          ? _self.labelFlex
          : labelFlex // ignore: cast_nullable_to_non_nullable
              as int?,
      pickDuration: freezed == pickDuration
          ? _self.pickDuration
          : pickDuration // ignore: cast_nullable_to_non_nullable
              as PickDurationDef?,
      formatDuration: freezed == formatDuration
          ? _self.formatDuration
          : formatDuration // ignore: cast_nullable_to_non_nullable
              as FormatDurationDef?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DurationFieldBuilderDef?,
      dateTimeLabelText: freezed == dateTimeLabelText
          ? _self.dateTimeLabelText
          : dateTimeLabelText // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimeHelperText: freezed == dateTimeHelperText
          ? _self.dateTimeHelperText
          : dateTimeHelperText // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimeHintText: freezed == dateTimeHintText
          ? _self.dateTimeHintText
          : dateTimeHintText // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFormat: freezed == dateFormat
          ? _self.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFormat: freezed == timeFormat
          ? _self.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimeEditMode: freezed == dateTimeEditMode
          ? _self.dateTimeEditMode
          : dateTimeEditMode // ignore: cast_nullable_to_non_nullable
              as DateEditMode?,
      pickDate: freezed == pickDate
          ? _self.pickDate
          : pickDate // ignore: cast_nullable_to_non_nullable
              as PickDateDef?,
      pickTime: freezed == pickTime
          ? _self.pickTime
          : pickTime // ignore: cast_nullable_to_non_nullable
              as PickTimeDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DurationInputUiSettings extends DurationInputUiSettings {
  const _DurationInputUiSettings(
      {this.labelText,
      this.helperText,
      this.hintText,
      this.editMode,
      this.labelFlex,
      @JsonKey(includeToJson: false, includeFromJson: false) this.pickDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.formatDuration,
      @JsonKey(includeToJson: false, includeFromJson: false) this.widgetBuilder,
      this.dateTimeLabelText,
      this.dateTimeHelperText,
      this.dateTimeHintText,
      this.dateFormat,
      this.timeFormat,
      this.dateTimeEditMode,
      @JsonKey(includeToJson: false, includeFromJson: false) this.pickDate,
      @JsonKey(includeToJson: false, includeFromJson: false) this.pickTime})
      : super._();
  factory _DurationInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DurationInputUiSettingsFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final String? hintText;
  @override
  final DurationEditMode? editMode;

  /// If null, label will be placed above the date selector.
  /// Else, label and selector will be in a flexible row,
  /// selector with a flex value of 10,
  /// and label with a flex value of [labelFlex].
  @override
  final int? labelFlex;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final PickDurationDef? pickDuration;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final FormatDurationDef? formatDuration;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final DurationFieldBuilderDef? widgetBuilder;

  /// The following fields are used if editMode is dateTime
  @override
  final String? dateTimeLabelText;
  @override
  final String? dateTimeHelperText;
  @override
  final String? dateTimeHintText;
  @override
  final String? dateFormat;
  @override
  final String? timeFormat;
  @override
  final DateEditMode? dateTimeEditMode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final PickDateDef? pickDate;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final PickTimeDef? pickTime;

  /// Create a copy of DurationInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DurationInputUiSettingsCopyWith<_DurationInputUiSettings> get copyWith =>
      __$DurationInputUiSettingsCopyWithImpl<_DurationInputUiSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DurationInputUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DurationInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.editMode, editMode) ||
                other.editMode == editMode) &&
            (identical(other.labelFlex, labelFlex) ||
                other.labelFlex == labelFlex) &&
            (identical(other.pickDuration, pickDuration) ||
                other.pickDuration == pickDuration) &&
            (identical(other.formatDuration, formatDuration) ||
                other.formatDuration == formatDuration) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.dateTimeLabelText, dateTimeLabelText) ||
                other.dateTimeLabelText == dateTimeLabelText) &&
            (identical(other.dateTimeHelperText, dateTimeHelperText) ||
                other.dateTimeHelperText == dateTimeHelperText) &&
            (identical(other.dateTimeHintText, dateTimeHintText) ||
                other.dateTimeHintText == dateTimeHintText) &&
            (identical(other.dateFormat, dateFormat) ||
                other.dateFormat == dateFormat) &&
            (identical(other.timeFormat, timeFormat) ||
                other.timeFormat == timeFormat) &&
            (identical(other.dateTimeEditMode, dateTimeEditMode) ||
                other.dateTimeEditMode == dateTimeEditMode) &&
            (identical(other.pickDate, pickDate) ||
                other.pickDate == pickDate) &&
            (identical(other.pickTime, pickTime) ||
                other.pickTime == pickTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      helperText,
      hintText,
      editMode,
      labelFlex,
      pickDuration,
      formatDuration,
      widgetBuilder,
      dateTimeLabelText,
      dateTimeHelperText,
      dateTimeHintText,
      dateFormat,
      timeFormat,
      dateTimeEditMode,
      pickDate,
      pickTime);

  @override
  String toString() {
    return 'DurationInputUiSettings(labelText: $labelText, helperText: $helperText, hintText: $hintText, editMode: $editMode, labelFlex: $labelFlex, pickDuration: $pickDuration, formatDuration: $formatDuration, widgetBuilder: $widgetBuilder, dateTimeLabelText: $dateTimeLabelText, dateTimeHelperText: $dateTimeHelperText, dateTimeHintText: $dateTimeHintText, dateFormat: $dateFormat, timeFormat: $timeFormat, dateTimeEditMode: $dateTimeEditMode, pickDate: $pickDate, pickTime: $pickTime)';
  }
}

/// @nodoc
abstract mixin class _$DurationInputUiSettingsCopyWith<$Res>
    implements $DurationInputUiSettingsCopyWith<$Res> {
  factory _$DurationInputUiSettingsCopyWith(_DurationInputUiSettings value,
          $Res Function(_DurationInputUiSettings) _then) =
      __$DurationInputUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      String? hintText,
      DurationEditMode? editMode,
      int? labelFlex,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickDurationDef? pickDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      FormatDurationDef? formatDuration,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DurationFieldBuilderDef? widgetBuilder,
      String? dateTimeLabelText,
      String? dateTimeHelperText,
      String? dateTimeHintText,
      String? dateFormat,
      String? timeFormat,
      DateEditMode? dateTimeEditMode,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickDateDef? pickDate,
      @JsonKey(includeToJson: false, includeFromJson: false)
      PickTimeDef? pickTime});
}

/// @nodoc
class __$DurationInputUiSettingsCopyWithImpl<$Res>
    implements _$DurationInputUiSettingsCopyWith<$Res> {
  __$DurationInputUiSettingsCopyWithImpl(this._self, this._then);

  final _DurationInputUiSettings _self;
  final $Res Function(_DurationInputUiSettings) _then;

  /// Create a copy of DurationInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? hintText = freezed,
    Object? editMode = freezed,
    Object? labelFlex = freezed,
    Object? pickDuration = freezed,
    Object? formatDuration = freezed,
    Object? widgetBuilder = freezed,
    Object? dateTimeLabelText = freezed,
    Object? dateTimeHelperText = freezed,
    Object? dateTimeHintText = freezed,
    Object? dateFormat = freezed,
    Object? timeFormat = freezed,
    Object? dateTimeEditMode = freezed,
    Object? pickDate = freezed,
    Object? pickTime = freezed,
  }) {
    return _then(_DurationInputUiSettings(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      editMode: freezed == editMode
          ? _self.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as DurationEditMode?,
      labelFlex: freezed == labelFlex
          ? _self.labelFlex
          : labelFlex // ignore: cast_nullable_to_non_nullable
              as int?,
      pickDuration: freezed == pickDuration
          ? _self.pickDuration
          : pickDuration // ignore: cast_nullable_to_non_nullable
              as PickDurationDef?,
      formatDuration: freezed == formatDuration
          ? _self.formatDuration
          : formatDuration // ignore: cast_nullable_to_non_nullable
              as FormatDurationDef?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DurationFieldBuilderDef?,
      dateTimeLabelText: freezed == dateTimeLabelText
          ? _self.dateTimeLabelText
          : dateTimeLabelText // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimeHelperText: freezed == dateTimeHelperText
          ? _self.dateTimeHelperText
          : dateTimeHelperText // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimeHintText: freezed == dateTimeHintText
          ? _self.dateTimeHintText
          : dateTimeHintText // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFormat: freezed == dateFormat
          ? _self.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFormat: freezed == timeFormat
          ? _self.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimeEditMode: freezed == dateTimeEditMode
          ? _self.dateTimeEditMode
          : dateTimeEditMode // ignore: cast_nullable_to_non_nullable
              as DateEditMode?,
      pickDate: freezed == pickDate
          ? _self.pickDate
          : pickDate // ignore: cast_nullable_to_non_nullable
              as PickDateDef?,
      pickTime: freezed == pickTime
          ? _self.pickTime
          : pickTime // ignore: cast_nullable_to_non_nullable
              as PickTimeDef?,
    ));
  }
}

/// @nodoc
mixin _$DynamicInputsNodeUiSettings {
  String? get labelText;
  String? get helperText;

  /// Default to true
  bool? get reorderable;
  @JsonKey(includeToJson: false, includeFromJson: false)
  GenerateIdDef? get generateId;
  @JsonKey(includeToJson: false, includeFromJson: false)
  OnDynamicInputDeletionDef? get onChildDeletion;
  @JsonKey(includeToJson: false, includeFromJson: false)
  DynamicInputsNodeWidgetBuilderDef? get widgetBuilder;

  /// Create a copy of DynamicInputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicInputsNodeUiSettingsCopyWith<DynamicInputsNodeUiSettings>
      get copyWith => _$DynamicInputsNodeUiSettingsCopyWithImpl<
              DynamicInputsNodeUiSettings>(
          this as DynamicInputsNodeUiSettings, _$identity);

  /// Serializes this DynamicInputsNodeUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicInputsNodeUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.reorderable, reorderable) ||
                other.reorderable == reorderable) &&
            (identical(other.generateId, generateId) ||
                other.generateId == generateId) &&
            (identical(other.onChildDeletion, onChildDeletion) ||
                other.onChildDeletion == onChildDeletion) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      reorderable, generateId, onChildDeletion, widgetBuilder);

  @override
  String toString() {
    return 'DynamicInputsNodeUiSettings(labelText: $labelText, helperText: $helperText, reorderable: $reorderable, generateId: $generateId, onChildDeletion: $onChildDeletion, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  factory $DynamicInputsNodeUiSettingsCopyWith(
          DynamicInputsNodeUiSettings value,
          $Res Function(DynamicInputsNodeUiSettings) _then) =
      _$DynamicInputsNodeUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      bool? reorderable,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GenerateIdDef? generateId,
      @JsonKey(includeToJson: false, includeFromJson: false)
      OnDynamicInputDeletionDef? onChildDeletion,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DynamicInputsNodeWidgetBuilderDef? widgetBuilder});
}

/// @nodoc
class _$DynamicInputsNodeUiSettingsCopyWithImpl<$Res>
    implements $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  _$DynamicInputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final DynamicInputsNodeUiSettings _self;
  final $Res Function(DynamicInputsNodeUiSettings) _then;

  /// Create a copy of DynamicInputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? reorderable = freezed,
    Object? generateId = freezed,
    Object? onChildDeletion = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      reorderable: freezed == reorderable
          ? _self.reorderable
          : reorderable // ignore: cast_nullable_to_non_nullable
              as bool?,
      generateId: freezed == generateId
          ? _self.generateId
          : generateId // ignore: cast_nullable_to_non_nullable
              as GenerateIdDef?,
      onChildDeletion: freezed == onChildDeletion
          ? _self.onChildDeletion
          : onChildDeletion // ignore: cast_nullable_to_non_nullable
              as OnDynamicInputDeletionDef?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DynamicInputsNodeWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DynamicInputsNodeUiSettings extends DynamicInputsNodeUiSettings {
  const _DynamicInputsNodeUiSettings(
      {this.labelText,
      this.helperText,
      this.reorderable,
      @JsonKey(includeToJson: false, includeFromJson: false) this.generateId,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onChildDeletion,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();
  factory _DynamicInputsNodeUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputsNodeUiSettingsFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;

  /// Default to true
  @override
  final bool? reorderable;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final GenerateIdDef? generateId;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final OnDynamicInputDeletionDef? onChildDeletion;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final DynamicInputsNodeWidgetBuilderDef? widgetBuilder;

  /// Create a copy of DynamicInputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DynamicInputsNodeUiSettingsCopyWith<_DynamicInputsNodeUiSettings>
      get copyWith => __$DynamicInputsNodeUiSettingsCopyWithImpl<
          _DynamicInputsNodeUiSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DynamicInputsNodeUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DynamicInputsNodeUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.reorderable, reorderable) ||
                other.reorderable == reorderable) &&
            (identical(other.generateId, generateId) ||
                other.generateId == generateId) &&
            (identical(other.onChildDeletion, onChildDeletion) ||
                other.onChildDeletion == onChildDeletion) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText,
      reorderable, generateId, onChildDeletion, widgetBuilder);

  @override
  String toString() {
    return 'DynamicInputsNodeUiSettings(labelText: $labelText, helperText: $helperText, reorderable: $reorderable, generateId: $generateId, onChildDeletion: $onChildDeletion, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class _$DynamicInputsNodeUiSettingsCopyWith<$Res>
    implements $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  factory _$DynamicInputsNodeUiSettingsCopyWith(
          _DynamicInputsNodeUiSettings value,
          $Res Function(_DynamicInputsNodeUiSettings) _then) =
      __$DynamicInputsNodeUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      bool? reorderable,
      @JsonKey(includeToJson: false, includeFromJson: false)
      GenerateIdDef? generateId,
      @JsonKey(includeToJson: false, includeFromJson: false)
      OnDynamicInputDeletionDef? onChildDeletion,
      @JsonKey(includeToJson: false, includeFromJson: false)
      DynamicInputsNodeWidgetBuilderDef? widgetBuilder});
}

/// @nodoc
class __$DynamicInputsNodeUiSettingsCopyWithImpl<$Res>
    implements _$DynamicInputsNodeUiSettingsCopyWith<$Res> {
  __$DynamicInputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final _DynamicInputsNodeUiSettings _self;
  final $Res Function(_DynamicInputsNodeUiSettings) _then;

  /// Create a copy of DynamicInputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? reorderable = freezed,
    Object? generateId = freezed,
    Object? onChildDeletion = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_DynamicInputsNodeUiSettings(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      reorderable: freezed == reorderable
          ? _self.reorderable
          : reorderable // ignore: cast_nullable_to_non_nullable
              as bool?,
      generateId: freezed == generateId
          ? _self.generateId
          : generateId // ignore: cast_nullable_to_non_nullable
              as GenerateIdDef?,
      onChildDeletion: freezed == onChildDeletion
          ? _self.onChildDeletion
          : onChildDeletion // ignore: cast_nullable_to_non_nullable
              as OnDynamicInputDeletionDef?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as DynamicInputsNodeWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
mixin _$DynamicInputUiSettings {
  String? get labelText;
  String? get helperText;

  /// Create a copy of DynamicInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicInputUiSettingsCopyWith<DynamicInputUiSettings> get copyWith =>
      _$DynamicInputUiSettingsCopyWithImpl<DynamicInputUiSettings>(
          this as DynamicInputUiSettings, _$identity);

  /// Serializes this DynamicInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText);

  @override
  String toString() {
    return 'DynamicInputUiSettings(labelText: $labelText, helperText: $helperText)';
  }
}

/// @nodoc
abstract mixin class $DynamicInputUiSettingsCopyWith<$Res> {
  factory $DynamicInputUiSettingsCopyWith(DynamicInputUiSettings value,
          $Res Function(DynamicInputUiSettings) _then) =
      _$DynamicInputUiSettingsCopyWithImpl;
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class _$DynamicInputUiSettingsCopyWithImpl<$Res>
    implements $DynamicInputUiSettingsCopyWith<$Res> {
  _$DynamicInputUiSettingsCopyWithImpl(this._self, this._then);

  final DynamicInputUiSettings _self;
  final $Res Function(DynamicInputUiSettings) _then;

  /// Create a copy of DynamicInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DynamicInputUiSettings extends DynamicInputUiSettings {
  const _DynamicInputUiSettings({this.labelText, this.helperText}) : super._();
  factory _DynamicInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputUiSettingsFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;

  /// Create a copy of DynamicInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DynamicInputUiSettingsCopyWith<_DynamicInputUiSettings> get copyWith =>
      __$DynamicInputUiSettingsCopyWithImpl<_DynamicInputUiSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DynamicInputUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DynamicInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelText, helperText);

  @override
  String toString() {
    return 'DynamicInputUiSettings(labelText: $labelText, helperText: $helperText)';
  }
}

/// @nodoc
abstract mixin class _$DynamicInputUiSettingsCopyWith<$Res>
    implements $DynamicInputUiSettingsCopyWith<$Res> {
  factory _$DynamicInputUiSettingsCopyWith(_DynamicInputUiSettings value,
          $Res Function(_DynamicInputUiSettings) _then) =
      __$DynamicInputUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call({String? labelText, String? helperText});
}

/// @nodoc
class __$DynamicInputUiSettingsCopyWithImpl<$Res>
    implements _$DynamicInputUiSettingsCopyWith<$Res> {
  __$DynamicInputUiSettingsCopyWithImpl(this._self, this._then);

  final _DynamicInputUiSettings _self;
  final $Res Function(_DynamicInputUiSettings) _then;

  /// Create a copy of DynamicInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_DynamicInputUiSettings(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$InputsNodeUiSettings {
  String? get labelText;
  String? get labelTextWhenChildrenHidden;
  String? get helperText;
  ChildrenVisibility? get childrenVisibility;

  /// Only used by [ChildrenVisibility.whenAsked].
  /// If true, when the widget will be rendered,
  /// the children's visibility will be asked.
  bool get showChildrenInitially;
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputNodeWidgetBuilderDef? get widgetBuilder;
  @JsonKey(includeToJson: false, includeFromJson: false)
  HeaderBuilderDef? get headerBuilder;
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputNodeWidgetBuilderDef? get expanderBuilder;

  /// Create a copy of InputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputsNodeUiSettingsCopyWith<InputsNodeUiSettings> get copyWith =>
      _$InputsNodeUiSettingsCopyWithImpl<InputsNodeUiSettings>(
          this as InputsNodeUiSettings, _$identity);

  /// Serializes this InputsNodeUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InputsNodeUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.labelTextWhenChildrenHidden,
                    labelTextWhenChildrenHidden) ||
                other.labelTextWhenChildrenHidden ==
                    labelTextWhenChildrenHidden) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.childrenVisibility, childrenVisibility) ||
                other.childrenVisibility == childrenVisibility) &&
            (identical(other.showChildrenInitially, showChildrenInitially) ||
                other.showChildrenInitially == showChildrenInitially) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.headerBuilder, headerBuilder) ||
                other.headerBuilder == headerBuilder) &&
            (identical(other.expanderBuilder, expanderBuilder) ||
                other.expanderBuilder == expanderBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      labelTextWhenChildrenHidden,
      helperText,
      childrenVisibility,
      showChildrenInitially,
      widgetBuilder,
      headerBuilder,
      expanderBuilder);

  @override
  String toString() {
    return 'InputsNodeUiSettings(labelText: $labelText, labelTextWhenChildrenHidden: $labelTextWhenChildrenHidden, helperText: $helperText, childrenVisibility: $childrenVisibility, showChildrenInitially: $showChildrenInitially, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, expanderBuilder: $expanderBuilder)';
  }
}

/// @nodoc
abstract mixin class $InputsNodeUiSettingsCopyWith<$Res> {
  factory $InputsNodeUiSettingsCopyWith(InputsNodeUiSettings value,
          $Res Function(InputsNodeUiSettings) _then) =
      _$InputsNodeUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? labelText,
      String? labelTextWhenChildrenHidden,
      String? helperText,
      ChildrenVisibility? childrenVisibility,
      bool showChildrenInitially,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      HeaderBuilderDef? headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? expanderBuilder});
}

/// @nodoc
class _$InputsNodeUiSettingsCopyWithImpl<$Res>
    implements $InputsNodeUiSettingsCopyWith<$Res> {
  _$InputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final InputsNodeUiSettings _self;
  final $Res Function(InputsNodeUiSettings) _then;

  /// Create a copy of InputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? labelTextWhenChildrenHidden = freezed,
    Object? helperText = freezed,
    Object? childrenVisibility = freezed,
    Object? showChildrenInitially = null,
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? expanderBuilder = freezed,
  }) {
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelTextWhenChildrenHidden: freezed == labelTextWhenChildrenHidden
          ? _self.labelTextWhenChildrenHidden
          : labelTextWhenChildrenHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenVisibility: freezed == childrenVisibility
          ? _self.childrenVisibility
          : childrenVisibility // ignore: cast_nullable_to_non_nullable
              as ChildrenVisibility?,
      showChildrenInitially: null == showChildrenInitially
          ? _self.showChildrenInitially
          : showChildrenInitially // ignore: cast_nullable_to_non_nullable
              as bool,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
      headerBuilder: freezed == headerBuilder
          ? _self.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      expanderBuilder: freezed == expanderBuilder
          ? _self.expanderBuilder
          : expanderBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InputsNodeUiSettings extends InputsNodeUiSettings {
  const _InputsNodeUiSettings(
      {this.labelText,
      this.labelTextWhenChildrenHidden,
      this.helperText,
      this.childrenVisibility,
      this.showChildrenInitially = false,
      @JsonKey(includeToJson: false, includeFromJson: false) this.widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false) this.headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.expanderBuilder})
      : super._();
  factory _InputsNodeUiSettings.fromJson(Map<String, dynamic> json) =>
      _$InputsNodeUiSettingsFromJson(json);

  @override
  final String? labelText;
  @override
  final String? labelTextWhenChildrenHidden;
  @override
  final String? helperText;
  @override
  final ChildrenVisibility? childrenVisibility;

  /// Only used by [ChildrenVisibility.whenAsked].
  /// If true, when the widget will be rendered,
  /// the children's visibility will be asked.
  @override
  @JsonKey()
  final bool showChildrenInitially;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final InputNodeWidgetBuilderDef? widgetBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final HeaderBuilderDef? headerBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final InputNodeWidgetBuilderDef? expanderBuilder;

  /// Create a copy of InputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputsNodeUiSettingsCopyWith<_InputsNodeUiSettings> get copyWith =>
      __$InputsNodeUiSettingsCopyWithImpl<_InputsNodeUiSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputsNodeUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InputsNodeUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.labelTextWhenChildrenHidden,
                    labelTextWhenChildrenHidden) ||
                other.labelTextWhenChildrenHidden ==
                    labelTextWhenChildrenHidden) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.childrenVisibility, childrenVisibility) ||
                other.childrenVisibility == childrenVisibility) &&
            (identical(other.showChildrenInitially, showChildrenInitially) ||
                other.showChildrenInitially == showChildrenInitially) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.headerBuilder, headerBuilder) ||
                other.headerBuilder == headerBuilder) &&
            (identical(other.expanderBuilder, expanderBuilder) ||
                other.expanderBuilder == expanderBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      labelTextWhenChildrenHidden,
      helperText,
      childrenVisibility,
      showChildrenInitially,
      widgetBuilder,
      headerBuilder,
      expanderBuilder);

  @override
  String toString() {
    return 'InputsNodeUiSettings(labelText: $labelText, labelTextWhenChildrenHidden: $labelTextWhenChildrenHidden, helperText: $helperText, childrenVisibility: $childrenVisibility, showChildrenInitially: $showChildrenInitially, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, expanderBuilder: $expanderBuilder)';
  }
}

/// @nodoc
abstract mixin class _$InputsNodeUiSettingsCopyWith<$Res>
    implements $InputsNodeUiSettingsCopyWith<$Res> {
  factory _$InputsNodeUiSettingsCopyWith(_InputsNodeUiSettings value,
          $Res Function(_InputsNodeUiSettings) _then) =
      __$InputsNodeUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? labelTextWhenChildrenHidden,
      String? helperText,
      ChildrenVisibility? childrenVisibility,
      bool showChildrenInitially,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      HeaderBuilderDef? headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputNodeWidgetBuilderDef? expanderBuilder});
}

/// @nodoc
class __$InputsNodeUiSettingsCopyWithImpl<$Res>
    implements _$InputsNodeUiSettingsCopyWith<$Res> {
  __$InputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final _InputsNodeUiSettings _self;
  final $Res Function(_InputsNodeUiSettings) _then;

  /// Create a copy of InputsNodeUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? labelText = freezed,
    Object? labelTextWhenChildrenHidden = freezed,
    Object? helperText = freezed,
    Object? childrenVisibility = freezed,
    Object? showChildrenInitially = null,
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? expanderBuilder = freezed,
  }) {
    return _then(_InputsNodeUiSettings(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelTextWhenChildrenHidden: freezed == labelTextWhenChildrenHidden
          ? _self.labelTextWhenChildrenHidden
          : labelTextWhenChildrenHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenVisibility: freezed == childrenVisibility
          ? _self.childrenVisibility
          : childrenVisibility // ignore: cast_nullable_to_non_nullable
              as ChildrenVisibility?,
      showChildrenInitially: null == showChildrenInitially
          ? _self.showChildrenInitially
          : showChildrenInitially // ignore: cast_nullable_to_non_nullable
              as bool,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
      headerBuilder: freezed == headerBuilder
          ? _self.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      expanderBuilder: freezed == expanderBuilder
          ? _self.expanderBuilder
          : expanderBuilder // ignore: cast_nullable_to_non_nullable
              as InputNodeWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
mixin _$MediaInputUiSettings {
  String? get addMediaText;
  int? get fieldHeight;
  @JsonKey(includeToJson: false, includeFromJson: false)
  MediaFieldBuilderDef? get widgetBuilder;

  /// Create a copy of MediaInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MediaInputUiSettingsCopyWith<MediaInputUiSettings> get copyWith =>
      _$MediaInputUiSettingsCopyWithImpl<MediaInputUiSettings>(
          this as MediaInputUiSettings, _$identity);

  /// Serializes this MediaInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MediaInputUiSettings &&
            (identical(other.addMediaText, addMediaText) ||
                other.addMediaText == addMediaText) &&
            (identical(other.fieldHeight, fieldHeight) ||
                other.fieldHeight == fieldHeight) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, addMediaText, fieldHeight, widgetBuilder);

  @override
  String toString() {
    return 'MediaInputUiSettings(addMediaText: $addMediaText, fieldHeight: $fieldHeight, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class $MediaInputUiSettingsCopyWith<$Res> {
  factory $MediaInputUiSettingsCopyWith(MediaInputUiSettings value,
          $Res Function(MediaInputUiSettings) _then) =
      _$MediaInputUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? addMediaText,
      int? fieldHeight,
      @JsonKey(includeToJson: false, includeFromJson: false)
      MediaFieldBuilderDef? widgetBuilder});
}

/// @nodoc
class _$MediaInputUiSettingsCopyWithImpl<$Res>
    implements $MediaInputUiSettingsCopyWith<$Res> {
  _$MediaInputUiSettingsCopyWithImpl(this._self, this._then);

  final MediaInputUiSettings _self;
  final $Res Function(MediaInputUiSettings) _then;

  /// Create a copy of MediaInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addMediaText = freezed,
    Object? fieldHeight = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_self.copyWith(
      addMediaText: freezed == addMediaText
          ? _self.addMediaText
          : addMediaText // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldHeight: freezed == fieldHeight
          ? _self.fieldHeight
          : fieldHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as MediaFieldBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MediaInputUiSettings extends MediaInputUiSettings {
  const _MediaInputUiSettings(
      {this.addMediaText,
      this.fieldHeight,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();
  factory _MediaInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$MediaInputUiSettingsFromJson(json);

  @override
  final String? addMediaText;
  @override
  final int? fieldHeight;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final MediaFieldBuilderDef? widgetBuilder;

  /// Create a copy of MediaInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MediaInputUiSettingsCopyWith<_MediaInputUiSettings> get copyWith =>
      __$MediaInputUiSettingsCopyWithImpl<_MediaInputUiSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MediaInputUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MediaInputUiSettings &&
            (identical(other.addMediaText, addMediaText) ||
                other.addMediaText == addMediaText) &&
            (identical(other.fieldHeight, fieldHeight) ||
                other.fieldHeight == fieldHeight) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, addMediaText, fieldHeight, widgetBuilder);

  @override
  String toString() {
    return 'MediaInputUiSettings(addMediaText: $addMediaText, fieldHeight: $fieldHeight, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class _$MediaInputUiSettingsCopyWith<$Res>
    implements $MediaInputUiSettingsCopyWith<$Res> {
  factory _$MediaInputUiSettingsCopyWith(_MediaInputUiSettings value,
          $Res Function(_MediaInputUiSettings) _then) =
      __$MediaInputUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? addMediaText,
      int? fieldHeight,
      @JsonKey(includeToJson: false, includeFromJson: false)
      MediaFieldBuilderDef? widgetBuilder});
}

/// @nodoc
class __$MediaInputUiSettingsCopyWithImpl<$Res>
    implements _$MediaInputUiSettingsCopyWith<$Res> {
  __$MediaInputUiSettingsCopyWithImpl(this._self, this._then);

  final _MediaInputUiSettings _self;
  final $Res Function(_MediaInputUiSettings) _then;

  /// Create a copy of MediaInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addMediaText = freezed,
    Object? fieldHeight = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_MediaInputUiSettings(
      addMediaText: freezed == addMediaText
          ? _self.addMediaText
          : addMediaText // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldHeight: freezed == fieldHeight
          ? _self.fieldHeight
          : fieldHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as MediaFieldBuilderDef?,
    ));
  }
}

/// @nodoc
mixin _$NumInputUiSettings {
  String? get labelText;
  String? get helperText;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Widget? get unit;
  @JsonKey(includeToJson: false, includeFromJson: false)
  NumFieldBuilderDef? get widgetBuilder;

  /// Create a copy of NumInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NumInputUiSettingsCopyWith<NumInputUiSettings> get copyWith =>
      _$NumInputUiSettingsCopyWithImpl<NumInputUiSettings>(
          this as NumInputUiSettings, _$identity);

  /// Serializes this NumInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, helperText, unit, widgetBuilder);

  @override
  String toString() {
    return 'NumInputUiSettings(labelText: $labelText, helperText: $helperText, unit: $unit, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class $NumInputUiSettingsCopyWith<$Res> {
  factory $NumInputUiSettingsCopyWith(
          NumInputUiSettings value, $Res Function(NumInputUiSettings) _then) =
      _$NumInputUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      @JsonKey(includeToJson: false, includeFromJson: false) Widget? unit,
      @JsonKey(includeToJson: false, includeFromJson: false)
      NumFieldBuilderDef? widgetBuilder});
}

/// @nodoc
class _$NumInputUiSettingsCopyWithImpl<$Res>
    implements $NumInputUiSettingsCopyWith<$Res> {
  _$NumInputUiSettingsCopyWithImpl(this._self, this._then);

  final NumInputUiSettings _self;
  final $Res Function(NumInputUiSettings) _then;

  /// Create a copy of NumInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? unit = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Widget?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as NumFieldBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NumInputUiSettings extends NumInputUiSettings {
  const _NumInputUiSettings(
      {this.labelText,
      this.helperText,
      @JsonKey(includeToJson: false, includeFromJson: false) this.unit,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.widgetBuilder})
      : super._();
  factory _NumInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$NumInputUiSettingsFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Widget? unit;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final NumFieldBuilderDef? widgetBuilder;

  /// Create a copy of NumInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NumInputUiSettingsCopyWith<_NumInputUiSettings> get copyWith =>
      __$NumInputUiSettingsCopyWithImpl<_NumInputUiSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NumInputUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NumInputUiSettings &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, helperText, unit, widgetBuilder);

  @override
  String toString() {
    return 'NumInputUiSettings(labelText: $labelText, helperText: $helperText, unit: $unit, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class _$NumInputUiSettingsCopyWith<$Res>
    implements $NumInputUiSettingsCopyWith<$Res> {
  factory _$NumInputUiSettingsCopyWith(
          _NumInputUiSettings value, $Res Function(_NumInputUiSettings) _then) =
      __$NumInputUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      @JsonKey(includeToJson: false, includeFromJson: false) Widget? unit,
      @JsonKey(includeToJson: false, includeFromJson: false)
      NumFieldBuilderDef? widgetBuilder});
}

/// @nodoc
class __$NumInputUiSettingsCopyWithImpl<$Res>
    implements _$NumInputUiSettingsCopyWith<$Res> {
  __$NumInputUiSettingsCopyWithImpl(this._self, this._then);

  final _NumInputUiSettings _self;
  final $Res Function(_NumInputUiSettings) _then;

  /// Create a copy of NumInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? unit = freezed,
    Object? widgetBuilder = freezed,
  }) {
    return _then(_NumInputUiSettings(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Widget?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as NumFieldBuilderDef?,
    ));
  }
}

/// @nodoc
mixin _$SelectInputUiSettings<T> {
  String? get labelText;
  String? get helperText;
  String? get hintText;
  ChildrenVisibility? get childrenVisibility;

  /// Only used when SelectInput.maxCount is 1
  /// and childrenVisibility is whenAsked.
  ///
  /// If null, label will be placed above the selector.
  /// Else, label and selector will be in a flexible row,
  /// selector with a flex value of 10,
  /// and label with a flex value of [labelFlex].
  int? get labelFlex;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget Function(T?)? get valueBuilder;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget Function(T?)? get selectedBuilder;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Widget? Function(T)? get helpValueBuilder;
  @JsonKey(includeFromJson: false, includeToJson: false)
  double Function(String query, T value)? get searcher;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SearchScreenDef<T>? get searchScreenBuilder;
  @JsonKey(includeToJson: false, includeFromJson: false)
  SelectFieldBuilderDef<T>? get widgetBuilder;
  @JsonKey(includeToJson: false, includeFromJson: false)
  InputHeaderBuilderDef? get headerBuilder;
  @JsonKey(includeToJson: false, includeFromJson: false)
  ScoreWidgetBuilderDef? get scoreBuilder;

  /// Create a copy of SelectInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectInputUiSettingsCopyWith<T, SelectInputUiSettings<T>> get copyWith =>
      _$SelectInputUiSettingsCopyWithImpl<T, SelectInputUiSettings<T>>(
          this as SelectInputUiSettings<T>, _$identity);

  /// Serializes this SelectInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectInputUiSettings<T> &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.childrenVisibility, childrenVisibility) ||
                other.childrenVisibility == childrenVisibility) &&
            (identical(other.labelFlex, labelFlex) ||
                other.labelFlex == labelFlex) &&
            (identical(other.valueBuilder, valueBuilder) ||
                other.valueBuilder == valueBuilder) &&
            (identical(other.selectedBuilder, selectedBuilder) ||
                other.selectedBuilder == selectedBuilder) &&
            (identical(other.helpValueBuilder, helpValueBuilder) ||
                other.helpValueBuilder == helpValueBuilder) &&
            (identical(other.searcher, searcher) ||
                other.searcher == searcher) &&
            (identical(other.searchScreenBuilder, searchScreenBuilder) ||
                other.searchScreenBuilder == searchScreenBuilder) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.headerBuilder, headerBuilder) ||
                other.headerBuilder == headerBuilder) &&
            (identical(other.scoreBuilder, scoreBuilder) ||
                other.scoreBuilder == scoreBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      helperText,
      hintText,
      childrenVisibility,
      labelFlex,
      valueBuilder,
      selectedBuilder,
      helpValueBuilder,
      searcher,
      searchScreenBuilder,
      widgetBuilder,
      headerBuilder,
      scoreBuilder);

  @override
  String toString() {
    return 'SelectInputUiSettings<$T>(labelText: $labelText, helperText: $helperText, hintText: $hintText, childrenVisibility: $childrenVisibility, labelFlex: $labelFlex, valueBuilder: $valueBuilder, selectedBuilder: $selectedBuilder, helpValueBuilder: $helpValueBuilder, searcher: $searcher, searchScreenBuilder: $searchScreenBuilder, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, scoreBuilder: $scoreBuilder)';
  }
}

/// @nodoc
abstract mixin class $SelectInputUiSettingsCopyWith<T, $Res> {
  factory $SelectInputUiSettingsCopyWith(SelectInputUiSettings<T> value,
          $Res Function(SelectInputUiSettings<T>) _then) =
      _$SelectInputUiSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      String? hintText,
      ChildrenVisibility? childrenVisibility,
      int? labelFlex,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? selectedBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      double Function(String query, T value)? searcher,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SearchScreenDef<T>? searchScreenBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      SelectFieldBuilderDef<T>? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputHeaderBuilderDef? headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      ScoreWidgetBuilderDef? scoreBuilder});
}

/// @nodoc
class _$SelectInputUiSettingsCopyWithImpl<T, $Res>
    implements $SelectInputUiSettingsCopyWith<T, $Res> {
  _$SelectInputUiSettingsCopyWithImpl(this._self, this._then);

  final SelectInputUiSettings<T> _self;
  final $Res Function(SelectInputUiSettings<T>) _then;

  /// Create a copy of SelectInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? hintText = freezed,
    Object? childrenVisibility = freezed,
    Object? labelFlex = freezed,
    Object? valueBuilder = freezed,
    Object? selectedBuilder = freezed,
    Object? helpValueBuilder = freezed,
    Object? searcher = freezed,
    Object? searchScreenBuilder = freezed,
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? scoreBuilder = freezed,
  }) {
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenVisibility: freezed == childrenVisibility
          ? _self.childrenVisibility
          : childrenVisibility // ignore: cast_nullable_to_non_nullable
              as ChildrenVisibility?,
      labelFlex: freezed == labelFlex
          ? _self.labelFlex
          : labelFlex // ignore: cast_nullable_to_non_nullable
              as int?,
      valueBuilder: freezed == valueBuilder
          ? _self.valueBuilder
          : valueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(T?)?,
      selectedBuilder: freezed == selectedBuilder
          ? _self.selectedBuilder
          : selectedBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(T?)?,
      helpValueBuilder: freezed == helpValueBuilder
          ? _self.helpValueBuilder
          : helpValueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget? Function(T)?,
      searcher: freezed == searcher
          ? _self.searcher
          : searcher // ignore: cast_nullable_to_non_nullable
              as double Function(String query, T value)?,
      searchScreenBuilder: freezed == searchScreenBuilder
          ? _self.searchScreenBuilder
          : searchScreenBuilder // ignore: cast_nullable_to_non_nullable
              as SearchScreenDef<T>?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as SelectFieldBuilderDef<T>?,
      headerBuilder: freezed == headerBuilder
          ? _self.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as InputHeaderBuilderDef?,
      scoreBuilder: freezed == scoreBuilder
          ? _self.scoreBuilder
          : scoreBuilder // ignore: cast_nullable_to_non_nullable
              as ScoreWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SelectInputUiSettings<T> extends SelectInputUiSettings<T> {
  const _SelectInputUiSettings(
      {this.labelText,
      this.helperText,
      this.hintText,
      this.childrenVisibility,
      this.labelFlex,
      @JsonKey(includeFromJson: false, includeToJson: false) this.valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.selectedBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false) this.searcher,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.searchScreenBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false) this.widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false) this.headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false) this.scoreBuilder})
      : super._();
  factory _SelectInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectInputUiSettingsFromJson(json);

  @override
  final String? labelText;
  @override
  final String? helperText;
  @override
  final String? hintText;
  @override
  final ChildrenVisibility? childrenVisibility;

  /// Only used when SelectInput.maxCount is 1
  /// and childrenVisibility is whenAsked.
  ///
  /// If null, label will be placed above the selector.
  /// Else, label and selector will be in a flexible row,
  /// selector with a flex value of 10,
  /// and label with a flex value of [labelFlex].
  @override
  final int? labelFlex;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Widget Function(T?)? valueBuilder;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Widget Function(T?)? selectedBuilder;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Widget? Function(T)? helpValueBuilder;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double Function(String query, T value)? searcher;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SearchScreenDef<T>? searchScreenBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final SelectFieldBuilderDef<T>? widgetBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final InputHeaderBuilderDef? headerBuilder;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final ScoreWidgetBuilderDef? scoreBuilder;

  /// Create a copy of SelectInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectInputUiSettingsCopyWith<T, _SelectInputUiSettings<T>> get copyWith =>
      __$SelectInputUiSettingsCopyWithImpl<T, _SelectInputUiSettings<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SelectInputUiSettingsToJson<T>(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectInputUiSettings<T> &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.childrenVisibility, childrenVisibility) ||
                other.childrenVisibility == childrenVisibility) &&
            (identical(other.labelFlex, labelFlex) ||
                other.labelFlex == labelFlex) &&
            (identical(other.valueBuilder, valueBuilder) ||
                other.valueBuilder == valueBuilder) &&
            (identical(other.selectedBuilder, selectedBuilder) ||
                other.selectedBuilder == selectedBuilder) &&
            (identical(other.helpValueBuilder, helpValueBuilder) ||
                other.helpValueBuilder == helpValueBuilder) &&
            (identical(other.searcher, searcher) ||
                other.searcher == searcher) &&
            (identical(other.searchScreenBuilder, searchScreenBuilder) ||
                other.searchScreenBuilder == searchScreenBuilder) &&
            (identical(other.widgetBuilder, widgetBuilder) ||
                other.widgetBuilder == widgetBuilder) &&
            (identical(other.headerBuilder, headerBuilder) ||
                other.headerBuilder == headerBuilder) &&
            (identical(other.scoreBuilder, scoreBuilder) ||
                other.scoreBuilder == scoreBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      helperText,
      hintText,
      childrenVisibility,
      labelFlex,
      valueBuilder,
      selectedBuilder,
      helpValueBuilder,
      searcher,
      searchScreenBuilder,
      widgetBuilder,
      headerBuilder,
      scoreBuilder);

  @override
  String toString() {
    return 'SelectInputUiSettings<$T>(labelText: $labelText, helperText: $helperText, hintText: $hintText, childrenVisibility: $childrenVisibility, labelFlex: $labelFlex, valueBuilder: $valueBuilder, selectedBuilder: $selectedBuilder, helpValueBuilder: $helpValueBuilder, searcher: $searcher, searchScreenBuilder: $searchScreenBuilder, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, scoreBuilder: $scoreBuilder)';
  }
}

/// @nodoc
abstract mixin class _$SelectInputUiSettingsCopyWith<T, $Res>
    implements $SelectInputUiSettingsCopyWith<T, $Res> {
  factory _$SelectInputUiSettingsCopyWith(_SelectInputUiSettings<T> value,
          $Res Function(_SelectInputUiSettings<T>) _then) =
      __$SelectInputUiSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? labelText,
      String? helperText,
      String? hintText,
      ChildrenVisibility? childrenVisibility,
      int? labelFlex,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? valueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget Function(T?)? selectedBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Widget? Function(T)? helpValueBuilder,
      @JsonKey(includeFromJson: false, includeToJson: false)
      double Function(String query, T value)? searcher,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SearchScreenDef<T>? searchScreenBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      SelectFieldBuilderDef<T>? widgetBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      InputHeaderBuilderDef? headerBuilder,
      @JsonKey(includeToJson: false, includeFromJson: false)
      ScoreWidgetBuilderDef? scoreBuilder});
}

/// @nodoc
class __$SelectInputUiSettingsCopyWithImpl<T, $Res>
    implements _$SelectInputUiSettingsCopyWith<T, $Res> {
  __$SelectInputUiSettingsCopyWithImpl(this._self, this._then);

  final _SelectInputUiSettings<T> _self;
  final $Res Function(_SelectInputUiSettings<T>) _then;

  /// Create a copy of SelectInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? labelText = freezed,
    Object? helperText = freezed,
    Object? hintText = freezed,
    Object? childrenVisibility = freezed,
    Object? labelFlex = freezed,
    Object? valueBuilder = freezed,
    Object? selectedBuilder = freezed,
    Object? helpValueBuilder = freezed,
    Object? searcher = freezed,
    Object? searchScreenBuilder = freezed,
    Object? widgetBuilder = freezed,
    Object? headerBuilder = freezed,
    Object? scoreBuilder = freezed,
  }) {
    return _then(_SelectInputUiSettings<T>(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenVisibility: freezed == childrenVisibility
          ? _self.childrenVisibility
          : childrenVisibility // ignore: cast_nullable_to_non_nullable
              as ChildrenVisibility?,
      labelFlex: freezed == labelFlex
          ? _self.labelFlex
          : labelFlex // ignore: cast_nullable_to_non_nullable
              as int?,
      valueBuilder: freezed == valueBuilder
          ? _self.valueBuilder
          : valueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(T?)?,
      selectedBuilder: freezed == selectedBuilder
          ? _self.selectedBuilder
          : selectedBuilder // ignore: cast_nullable_to_non_nullable
              as Widget Function(T?)?,
      helpValueBuilder: freezed == helpValueBuilder
          ? _self.helpValueBuilder
          : helpValueBuilder // ignore: cast_nullable_to_non_nullable
              as Widget? Function(T)?,
      searcher: freezed == searcher
          ? _self.searcher
          : searcher // ignore: cast_nullable_to_non_nullable
              as double Function(String query, T value)?,
      searchScreenBuilder: freezed == searchScreenBuilder
          ? _self.searchScreenBuilder
          : searchScreenBuilder // ignore: cast_nullable_to_non_nullable
              as SearchScreenDef<T>?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as SelectFieldBuilderDef<T>?,
      headerBuilder: freezed == headerBuilder
          ? _self.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as InputHeaderBuilderDef?,
      scoreBuilder: freezed == scoreBuilder
          ? _self.scoreBuilder
          : scoreBuilder // ignore: cast_nullable_to_non_nullable
              as ScoreWidgetBuilderDef?,
    ));
  }
}

/// @nodoc
mixin _$StringInputUiSettings {
  String? get labelText;
  String? get hintText;
  String? get helperText;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Widget? get prefixIcon;
  StringFieldAction? get action;
  bool? get submitFormOnFieldSubmitted;
  @TextInputTypeConverter()
  TextInputType? get keyboardType;
  bool? get obscureText;
  bool? get autocorrect;
  List<String>? get autofillHints;
  bool? get autofocus;
  TextInputAction? get textInputAction;
  TextCapitalization? get textCapitalization;

  /// Defaults to 1. If you want to set it to null, enter 0.
  int? get maxLines;
  String? get invalidRegexMessage;
  @JsonKey(includeToJson: false, includeFromJson: false)
  TextStyle? get style;
  @JsonKey(includeToJson: false, includeFromJson: false)
  StringFieldBuilderDef? get widgetBuilder;

  /// Create a copy of StringInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StringInputUiSettingsCopyWith<StringInputUiSettings> get copyWith =>
      _$StringInputUiSettingsCopyWithImpl<StringInputUiSettings>(
          this as StringInputUiSettings, _$identity);

  /// Serializes this StringInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StringInputUiSettings &&
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
                .equals(other.autofillHints, autofillHints) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(autofillHints),
      autofocus,
      textInputAction,
      textCapitalization,
      maxLines,
      invalidRegexMessage,
      style,
      widgetBuilder);

  @override
  String toString() {
    return 'StringInputUiSettings(labelText: $labelText, hintText: $hintText, helperText: $helperText, prefixIcon: $prefixIcon, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, invalidRegexMessage: $invalidRegexMessage, style: $style, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class $StringInputUiSettingsCopyWith<$Res> {
  factory $StringInputUiSettingsCopyWith(StringInputUiSettings value,
          $Res Function(StringInputUiSettings) _then) =
      _$StringInputUiSettingsCopyWithImpl;
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
class _$StringInputUiSettingsCopyWithImpl<$Res>
    implements $StringInputUiSettingsCopyWith<$Res> {
  _$StringInputUiSettingsCopyWithImpl(this._self, this._then);

  final StringInputUiSettings _self;
  final $Res Function(StringInputUiSettings) _then;

  /// Create a copy of StringInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      prefixIcon: freezed == prefixIcon
          ? _self.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as StringFieldAction?,
      submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted
          ? _self.submitFormOnFieldSubmitted
          : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      obscureText: freezed == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: freezed == autocorrect
          ? _self.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofillHints: freezed == autofillHints
          ? _self.autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autofocus: freezed == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      textInputAction: freezed == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: freezed == textCapitalization
          ? _self.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization?,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidRegexMessage: freezed == invalidRegexMessage
          ? _self.invalidRegexMessage
          : invalidRegexMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as StringFieldBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StringInputUiSettings extends StringInputUiSettings {
  const _StringInputUiSettings(
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
  factory _StringInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$StringInputUiSettingsFromJson(json);

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

  /// Create a copy of StringInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StringInputUiSettingsCopyWith<_StringInputUiSettings> get copyWith =>
      __$StringInputUiSettingsCopyWithImpl<_StringInputUiSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StringInputUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StringInputUiSettings &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'StringInputUiSettings(labelText: $labelText, hintText: $hintText, helperText: $helperText, prefixIcon: $prefixIcon, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, invalidRegexMessage: $invalidRegexMessage, style: $style, widgetBuilder: $widgetBuilder)';
  }
}

/// @nodoc
abstract mixin class _$StringInputUiSettingsCopyWith<$Res>
    implements $StringInputUiSettingsCopyWith<$Res> {
  factory _$StringInputUiSettingsCopyWith(_StringInputUiSettings value,
          $Res Function(_StringInputUiSettings) _then) =
      __$StringInputUiSettingsCopyWithImpl;
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
class __$StringInputUiSettingsCopyWithImpl<$Res>
    implements _$StringInputUiSettingsCopyWith<$Res> {
  __$StringInputUiSettingsCopyWithImpl(this._self, this._then);

  final _StringInputUiSettings _self;
  final $Res Function(_StringInputUiSettings) _then;

  /// Create a copy of StringInputUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_StringInputUiSettings(
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      prefixIcon: freezed == prefixIcon
          ? _self.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as StringFieldAction?,
      submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted
          ? _self.submitFormOnFieldSubmitted
          : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      obscureText: freezed == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: freezed == autocorrect
          ? _self.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofillHints: freezed == autofillHints
          ? _self._autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autofocus: freezed == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      textInputAction: freezed == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: freezed == textCapitalization
          ? _self.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization?,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidRegexMessage: freezed == invalidRegexMessage
          ? _self.invalidRegexMessage
          : invalidRegexMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      style: freezed == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      widgetBuilder: freezed == widgetBuilder
          ? _self.widgetBuilder
          : widgetBuilder // ignore: cast_nullable_to_non_nullable
              as StringFieldBuilderDef?,
    ));
  }
}

/// @nodoc
mixin _$WoFormUiSettings {
  String get titleText;
  WoFormTitlePosition get titlePosition;
  @JsonKey(includeToJson: false, includeFromJson: false)
  HeaderBuilderDef? get headerBuilder;
  @JsonKey(toJson: WoFormSubmitMode.staticToJson)
  WoFormSubmitMode get submitMode;
  @JsonKey(includeToJson: false, includeFromJson: false)
  SubmitButtonBuilderDef? get submitButtonBuilder;
  bool? get showAsteriskIfRequired;
  bool? get canModifySubmittedValues;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Future<bool?> Function(BuildContext context)? get canQuit;

  /// Create a copy of WoFormUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WoFormUiSettingsCopyWith<WoFormUiSettings> get copyWith =>
      _$WoFormUiSettingsCopyWithImpl<WoFormUiSettings>(
          this as WoFormUiSettings, _$identity);

  /// Serializes this WoFormUiSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WoFormUiSettings &&
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
                other.showAsteriskIfRequired == showAsteriskIfRequired) &&
            (identical(
                    other.canModifySubmittedValues, canModifySubmittedValues) ||
                other.canModifySubmittedValues == canModifySubmittedValues) &&
            (identical(other.canQuit, canQuit) || other.canQuit == canQuit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      titleText,
      titlePosition,
      headerBuilder,
      submitMode,
      submitButtonBuilder,
      showAsteriskIfRequired,
      canModifySubmittedValues,
      canQuit);

  @override
  String toString() {
    return 'WoFormUiSettings(titleText: $titleText, titlePosition: $titlePosition, headerBuilder: $headerBuilder, submitMode: $submitMode, submitButtonBuilder: $submitButtonBuilder, showAsteriskIfRequired: $showAsteriskIfRequired, canModifySubmittedValues: $canModifySubmittedValues, canQuit: $canQuit)';
  }
}

/// @nodoc
abstract mixin class $WoFormUiSettingsCopyWith<$Res> {
  factory $WoFormUiSettingsCopyWith(
          WoFormUiSettings value, $Res Function(WoFormUiSettings) _then) =
      _$WoFormUiSettingsCopyWithImpl;
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
      bool? showAsteriskIfRequired,
      bool? canModifySubmittedValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<bool?> Function(BuildContext context)? canQuit});

  $WoFormSubmitModeCopyWith<$Res> get submitMode;
}

/// @nodoc
class _$WoFormUiSettingsCopyWithImpl<$Res>
    implements $WoFormUiSettingsCopyWith<$Res> {
  _$WoFormUiSettingsCopyWithImpl(this._self, this._then);

  final WoFormUiSettings _self;
  final $Res Function(WoFormUiSettings) _then;

  /// Create a copy of WoFormUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleText = null,
    Object? titlePosition = null,
    Object? headerBuilder = freezed,
    Object? submitMode = null,
    Object? submitButtonBuilder = freezed,
    Object? showAsteriskIfRequired = freezed,
    Object? canModifySubmittedValues = freezed,
    Object? canQuit = freezed,
  }) {
    return _then(_self.copyWith(
      titleText: null == titleText
          ? _self.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as String,
      titlePosition: null == titlePosition
          ? _self.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as WoFormTitlePosition,
      headerBuilder: freezed == headerBuilder
          ? _self.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      submitMode: null == submitMode
          ? _self.submitMode
          : submitMode // ignore: cast_nullable_to_non_nullable
              as WoFormSubmitMode,
      submitButtonBuilder: freezed == submitButtonBuilder
          ? _self.submitButtonBuilder
          : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
              as SubmitButtonBuilderDef?,
      showAsteriskIfRequired: freezed == showAsteriskIfRequired
          ? _self.showAsteriskIfRequired
          : showAsteriskIfRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      canModifySubmittedValues: freezed == canModifySubmittedValues
          ? _self.canModifySubmittedValues
          : canModifySubmittedValues // ignore: cast_nullable_to_non_nullable
              as bool?,
      canQuit: freezed == canQuit
          ? _self.canQuit
          : canQuit // ignore: cast_nullable_to_non_nullable
              as Future<bool?> Function(BuildContext context)?,
    ));
  }

  /// Create a copy of WoFormUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WoFormSubmitModeCopyWith<$Res> get submitMode {
    return $WoFormSubmitModeCopyWith<$Res>(_self.submitMode, (value) {
      return _then(_self.copyWith(submitMode: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _WoFormUiSettings extends WoFormUiSettings {
  const _WoFormUiSettings(
      {this.titleText = '',
      this.titlePosition = WoFormTitlePosition.header,
      @JsonKey(includeToJson: false, includeFromJson: false) this.headerBuilder,
      @JsonKey(toJson: WoFormSubmitMode.staticToJson)
      this.submitMode = const WoFormSubmitMode.standard(),
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.submitButtonBuilder,
      this.showAsteriskIfRequired,
      this.canModifySubmittedValues,
      @JsonKey(includeToJson: false, includeFromJson: false) this.canQuit})
      : super._();
  factory _WoFormUiSettings.fromJson(Map<String, dynamic> json) =>
      _$WoFormUiSettingsFromJson(json);

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
  final bool? canModifySubmittedValues;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Future<bool?> Function(BuildContext context)? canQuit;

  /// Create a copy of WoFormUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WoFormUiSettingsCopyWith<_WoFormUiSettings> get copyWith =>
      __$WoFormUiSettingsCopyWithImpl<_WoFormUiSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WoFormUiSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WoFormUiSettings &&
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
                other.showAsteriskIfRequired == showAsteriskIfRequired) &&
            (identical(
                    other.canModifySubmittedValues, canModifySubmittedValues) ||
                other.canModifySubmittedValues == canModifySubmittedValues) &&
            (identical(other.canQuit, canQuit) || other.canQuit == canQuit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      titleText,
      titlePosition,
      headerBuilder,
      submitMode,
      submitButtonBuilder,
      showAsteriskIfRequired,
      canModifySubmittedValues,
      canQuit);

  @override
  String toString() {
    return 'WoFormUiSettings(titleText: $titleText, titlePosition: $titlePosition, headerBuilder: $headerBuilder, submitMode: $submitMode, submitButtonBuilder: $submitButtonBuilder, showAsteriskIfRequired: $showAsteriskIfRequired, canModifySubmittedValues: $canModifySubmittedValues, canQuit: $canQuit)';
  }
}

/// @nodoc
abstract mixin class _$WoFormUiSettingsCopyWith<$Res>
    implements $WoFormUiSettingsCopyWith<$Res> {
  factory _$WoFormUiSettingsCopyWith(
          _WoFormUiSettings value, $Res Function(_WoFormUiSettings) _then) =
      __$WoFormUiSettingsCopyWithImpl;
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
      bool? showAsteriskIfRequired,
      bool? canModifySubmittedValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<bool?> Function(BuildContext context)? canQuit});

  @override
  $WoFormSubmitModeCopyWith<$Res> get submitMode;
}

/// @nodoc
class __$WoFormUiSettingsCopyWithImpl<$Res>
    implements _$WoFormUiSettingsCopyWith<$Res> {
  __$WoFormUiSettingsCopyWithImpl(this._self, this._then);

  final _WoFormUiSettings _self;
  final $Res Function(_WoFormUiSettings) _then;

  /// Create a copy of WoFormUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? titleText = null,
    Object? titlePosition = null,
    Object? headerBuilder = freezed,
    Object? submitMode = null,
    Object? submitButtonBuilder = freezed,
    Object? showAsteriskIfRequired = freezed,
    Object? canModifySubmittedValues = freezed,
    Object? canQuit = freezed,
  }) {
    return _then(_WoFormUiSettings(
      titleText: null == titleText
          ? _self.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as String,
      titlePosition: null == titlePosition
          ? _self.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as WoFormTitlePosition,
      headerBuilder: freezed == headerBuilder
          ? _self.headerBuilder
          : headerBuilder // ignore: cast_nullable_to_non_nullable
              as HeaderBuilderDef?,
      submitMode: null == submitMode
          ? _self.submitMode
          : submitMode // ignore: cast_nullable_to_non_nullable
              as WoFormSubmitMode,
      submitButtonBuilder: freezed == submitButtonBuilder
          ? _self.submitButtonBuilder
          : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
              as SubmitButtonBuilderDef?,
      showAsteriskIfRequired: freezed == showAsteriskIfRequired
          ? _self.showAsteriskIfRequired
          : showAsteriskIfRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      canModifySubmittedValues: freezed == canModifySubmittedValues
          ? _self.canModifySubmittedValues
          : canModifySubmittedValues // ignore: cast_nullable_to_non_nullable
              as bool?,
      canQuit: freezed == canQuit
          ? _self.canQuit
          : canQuit // ignore: cast_nullable_to_non_nullable
              as Future<bool?> Function(BuildContext context)?,
    ));
  }

  /// Create a copy of WoFormUiSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WoFormSubmitModeCopyWith<$Res> get submitMode {
    return $WoFormSubmitModeCopyWith<$Res>(_self.submitMode, (value) {
      return _then(_self.copyWith(submitMode: value));
    });
  }
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
  String? get submitText;
  @JsonKey(includeToJson: false, includeFromJson: false)
  IconData? get submitIcon;
  DisableSubmitButton get disableSubmitMode;

  /// Create a copy of WoFormSubmitMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WoFormSubmitModeCopyWith<WoFormSubmitMode> get copyWith =>
      _$WoFormSubmitModeCopyWithImpl<WoFormSubmitMode>(
          this as WoFormSubmitMode, _$identity);

  /// Serializes this WoFormSubmitMode to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WoFormSubmitMode &&
            (identical(other.submitText, submitText) ||
                other.submitText == submitText) &&
            (identical(other.submitIcon, submitIcon) ||
                other.submitIcon == submitIcon) &&
            (identical(other.disableSubmitMode, disableSubmitMode) ||
                other.disableSubmitMode == disableSubmitMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, submitText, submitIcon, disableSubmitMode);

  @override
  String toString() {
    return 'WoFormSubmitMode(submitText: $submitText, submitIcon: $submitIcon, disableSubmitMode: $disableSubmitMode)';
  }
}

/// @nodoc
abstract mixin class $WoFormSubmitModeCopyWith<$Res> {
  factory $WoFormSubmitModeCopyWith(
          WoFormSubmitMode value, $Res Function(WoFormSubmitMode) _then) =
      _$WoFormSubmitModeCopyWithImpl;
  @useResult
  $Res call(
      {String? submitText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      IconData? submitIcon,
      DisableSubmitButton disableSubmitMode});
}

/// @nodoc
class _$WoFormSubmitModeCopyWithImpl<$Res>
    implements $WoFormSubmitModeCopyWith<$Res> {
  _$WoFormSubmitModeCopyWithImpl(this._self, this._then);

  final WoFormSubmitMode _self;
  final $Res Function(WoFormSubmitMode) _then;

  /// Create a copy of WoFormSubmitMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitText = freezed,
    Object? submitIcon = freezed,
    Object? disableSubmitMode = null,
  }) {
    return _then(_self.copyWith(
      submitText: freezed == submitText
          ? _self.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitIcon: freezed == submitIcon
          ? _self.submitIcon
          : submitIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      disableSubmitMode: null == disableSubmitMode
          ? _self.disableSubmitMode
          : disableSubmitMode // ignore: cast_nullable_to_non_nullable
              as DisableSubmitButton,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StandardSubmitMode extends WoFormSubmitMode {
  const StandardSubmitMode(
      {this.submitText,
      @JsonKey(includeToJson: false, includeFromJson: false) this.submitIcon,
      this.disableSubmitMode = DisableSubmitButton.never,
      this.buttonPosition = SubmitButtonPosition.body,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.scaffoldBuilder,
      final String? $type})
      : $type = $type ?? 'standard',
        super._();
  factory StandardSubmitMode.fromJson(Map<String, dynamic> json) =>
      _$StandardSubmitModeFromJson(json);

  @override
  final String? submitText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final IconData? submitIcon;
  @override
  @JsonKey()
  final DisableSubmitButton disableSubmitMode;
  @JsonKey()
  final SubmitButtonPosition buttonPosition;
  @JsonKey(includeToJson: false, includeFromJson: false)
  final ScaffoldBuilderDef? scaffoldBuilder;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of WoFormSubmitMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StandardSubmitModeCopyWith<StandardSubmitMode> get copyWith =>
      _$StandardSubmitModeCopyWithImpl<StandardSubmitMode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StandardSubmitModeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StandardSubmitMode &&
            (identical(other.submitText, submitText) ||
                other.submitText == submitText) &&
            (identical(other.submitIcon, submitIcon) ||
                other.submitIcon == submitIcon) &&
            (identical(other.disableSubmitMode, disableSubmitMode) ||
                other.disableSubmitMode == disableSubmitMode) &&
            (identical(other.buttonPosition, buttonPosition) ||
                other.buttonPosition == buttonPosition) &&
            (identical(other.scaffoldBuilder, scaffoldBuilder) ||
                other.scaffoldBuilder == scaffoldBuilder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, submitText, submitIcon,
      disableSubmitMode, buttonPosition, scaffoldBuilder);

  @override
  String toString() {
    return 'WoFormSubmitMode.standard(submitText: $submitText, submitIcon: $submitIcon, disableSubmitMode: $disableSubmitMode, buttonPosition: $buttonPosition, scaffoldBuilder: $scaffoldBuilder)';
  }
}

/// @nodoc
abstract mixin class $StandardSubmitModeCopyWith<$Res>
    implements $WoFormSubmitModeCopyWith<$Res> {
  factory $StandardSubmitModeCopyWith(
          StandardSubmitMode value, $Res Function(StandardSubmitMode) _then) =
      _$StandardSubmitModeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? submitText,
      @JsonKey(includeToJson: false, includeFromJson: false)
      IconData? submitIcon,
      DisableSubmitButton disableSubmitMode,
      SubmitButtonPosition buttonPosition,
      @JsonKey(includeToJson: false, includeFromJson: false)
      ScaffoldBuilderDef? scaffoldBuilder});
}

/// @nodoc
class _$StandardSubmitModeCopyWithImpl<$Res>
    implements $StandardSubmitModeCopyWith<$Res> {
  _$StandardSubmitModeCopyWithImpl(this._self, this._then);

  final StandardSubmitMode _self;
  final $Res Function(StandardSubmitMode) _then;

  /// Create a copy of WoFormSubmitMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? submitText = freezed,
    Object? submitIcon = freezed,
    Object? disableSubmitMode = null,
    Object? buttonPosition = null,
    Object? scaffoldBuilder = freezed,
  }) {
    return _then(StandardSubmitMode(
      submitText: freezed == submitText
          ? _self.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitIcon: freezed == submitIcon
          ? _self.submitIcon
          : submitIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      disableSubmitMode: null == disableSubmitMode
          ? _self.disableSubmitMode
          : disableSubmitMode // ignore: cast_nullable_to_non_nullable
              as DisableSubmitButton,
      buttonPosition: null == buttonPosition
          ? _self.buttonPosition
          : buttonPosition // ignore: cast_nullable_to_non_nullable
              as SubmitButtonPosition,
      scaffoldBuilder: freezed == scaffoldBuilder
          ? _self.scaffoldBuilder
          : scaffoldBuilder // ignore: cast_nullable_to_non_nullable
              as ScaffoldBuilderDef?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PageByPageSubmitMode extends WoFormSubmitMode {
  const PageByPageSubmitMode(
      {this.submitText,
      @JsonKey(includeToJson: false, includeFromJson: false) this.submitIcon,
      this.nextText,
      this.disableSubmitMode = DisableSubmitButton.never,
      this.showProgressIndicator = true,
      final String? $type})
      : $type = $type ?? 'pageByPage',
        super._();
  factory PageByPageSubmitMode.fromJson(Map<String, dynamic> json) =>
      _$PageByPageSubmitModeFromJson(json);

  @override
  final String? submitText;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final IconData? submitIcon;
  final String? nextText;
  @override
  @JsonKey()
  final DisableSubmitButton disableSubmitMode;
  @JsonKey()
  final bool showProgressIndicator;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of WoFormSubmitMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageByPageSubmitModeCopyWith<PageByPageSubmitMode> get copyWith =>
      _$PageByPageSubmitModeCopyWithImpl<PageByPageSubmitMode>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageByPageSubmitModeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageByPageSubmitMode &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, submitText, submitIcon, nextText,
      disableSubmitMode, showProgressIndicator);

  @override
  String toString() {
    return 'WoFormSubmitMode.pageByPage(submitText: $submitText, submitIcon: $submitIcon, nextText: $nextText, disableSubmitMode: $disableSubmitMode, showProgressIndicator: $showProgressIndicator)';
  }
}

/// @nodoc
abstract mixin class $PageByPageSubmitModeCopyWith<$Res>
    implements $WoFormSubmitModeCopyWith<$Res> {
  factory $PageByPageSubmitModeCopyWith(PageByPageSubmitMode value,
          $Res Function(PageByPageSubmitMode) _then) =
      _$PageByPageSubmitModeCopyWithImpl;
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
class _$PageByPageSubmitModeCopyWithImpl<$Res>
    implements $PageByPageSubmitModeCopyWith<$Res> {
  _$PageByPageSubmitModeCopyWithImpl(this._self, this._then);

  final PageByPageSubmitMode _self;
  final $Res Function(PageByPageSubmitMode) _then;

  /// Create a copy of WoFormSubmitMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? submitText = freezed,
    Object? submitIcon = freezed,
    Object? nextText = freezed,
    Object? disableSubmitMode = null,
    Object? showProgressIndicator = null,
  }) {
    return _then(PageByPageSubmitMode(
      submitText: freezed == submitText
          ? _self.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String?,
      submitIcon: freezed == submitIcon
          ? _self.submitIcon
          : submitIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      nextText: freezed == nextText
          ? _self.nextText
          : nextText // ignore: cast_nullable_to_non_nullable
              as String?,
      disableSubmitMode: null == disableSubmitMode
          ? _self.disableSubmitMode
          : disableSubmitMode // ignore: cast_nullable_to_non_nullable
              as DisableSubmitButton,
      showProgressIndicator: null == showProgressIndicator
          ? _self.showProgressIndicator
          : showProgressIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on

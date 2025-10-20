// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputUiSettings {

/// Requires [WoFormUiSettings.layout] at [LayoutMethod.flexible].
 int? get flex;
/// Create a copy of InputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputUiSettingsCopyWith<InputUiSettings> get copyWith => _$InputUiSettingsCopyWithImpl<InputUiSettings>(this as InputUiSettings, _$identity);

  /// Serializes this InputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputUiSettings&&(identical(other.flex, flex) || other.flex == flex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex);

@override
String toString() {
  return 'InputUiSettings(flex: $flex)';
}


}

/// @nodoc
abstract mixin class $InputUiSettingsCopyWith<$Res>  {
  factory $InputUiSettingsCopyWith(InputUiSettings value, $Res Function(InputUiSettings) _then) = _$InputUiSettingsCopyWithImpl;
@useResult
$Res call({
 int? flex
});




}
/// @nodoc
class _$InputUiSettingsCopyWithImpl<$Res>
    implements $InputUiSettingsCopyWith<$Res> {
  _$InputUiSettingsCopyWithImpl(this._self, this._then);

  final InputUiSettings _self;
  final $Res Function(InputUiSettings) _then;

/// Create a copy of InputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flex = freezed,}) {
  return _then(_self.copyWith(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _InputUiSettings extends InputUiSettings {
  const _InputUiSettings({this.flex}): super._();
  factory _InputUiSettings.fromJson(Map<String, dynamic> json) => _$InputUiSettingsFromJson(json);

/// Requires [WoFormUiSettings.layout] at [LayoutMethod.flexible].
@override final  int? flex;

/// Create a copy of InputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputUiSettingsCopyWith<_InputUiSettings> get copyWith => __$InputUiSettingsCopyWithImpl<_InputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputUiSettings&&(identical(other.flex, flex) || other.flex == flex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex);

@override
String toString() {
  return 'InputUiSettings(flex: $flex)';
}


}

/// @nodoc
abstract mixin class _$InputUiSettingsCopyWith<$Res> implements $InputUiSettingsCopyWith<$Res> {
  factory _$InputUiSettingsCopyWith(_InputUiSettings value, $Res Function(_InputUiSettings) _then) = __$InputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 int? flex
});




}
/// @nodoc
class __$InputUiSettingsCopyWithImpl<$Res>
    implements _$InputUiSettingsCopyWith<$Res> {
  __$InputUiSettingsCopyWithImpl(this._self, this._then);

  final _InputUiSettings _self;
  final $Res Function(_InputUiSettings) _then;

/// Create a copy of InputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flex = freezed,}) {
  return _then(_InputUiSettings(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$BooleanInputUiSettings {

 String? get labelText; String? get helperText; BooleanFieldControlType? get controlType; ListTileControlAffinity? get controlAffinity;@notSerializable Widget? get secondary;@notSerializable BooleanFieldBuilderDef? get widgetBuilder;
/// Create a copy of BooleanInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooleanInputUiSettingsCopyWith<BooleanInputUiSettings> get copyWith => _$BooleanInputUiSettingsCopyWithImpl<BooleanInputUiSettings>(this as BooleanInputUiSettings, _$identity);

  /// Serializes this BooleanInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooleanInputUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.controlType, controlType) || other.controlType == controlType)&&(identical(other.controlAffinity, controlAffinity) || other.controlAffinity == controlAffinity)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,controlType,controlAffinity,secondary,widgetBuilder);

@override
String toString() {
  return 'BooleanInputUiSettings(labelText: $labelText, helperText: $helperText, controlType: $controlType, controlAffinity: $controlAffinity, secondary: $secondary, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class $BooleanInputUiSettingsCopyWith<$Res>  {
  factory $BooleanInputUiSettingsCopyWith(BooleanInputUiSettings value, $Res Function(BooleanInputUiSettings) _then) = _$BooleanInputUiSettingsCopyWithImpl;
@useResult
$Res call({
 String? labelText, String? helperText, BooleanFieldControlType? controlType, ListTileControlAffinity? controlAffinity,@notSerializable Widget? secondary,@notSerializable BooleanFieldBuilderDef? widgetBuilder
});




}
/// @nodoc
class _$BooleanInputUiSettingsCopyWithImpl<$Res>
    implements $BooleanInputUiSettingsCopyWith<$Res> {
  _$BooleanInputUiSettingsCopyWithImpl(this._self, this._then);

  final BooleanInputUiSettings _self;
  final $Res Function(BooleanInputUiSettings) _then;

/// Create a copy of BooleanInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? controlType = freezed,Object? controlAffinity = freezed,Object? secondary = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_self.copyWith(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,controlType: freezed == controlType ? _self.controlType : controlType // ignore: cast_nullable_to_non_nullable
as BooleanFieldControlType?,controlAffinity: freezed == controlAffinity ? _self.controlAffinity : controlAffinity // ignore: cast_nullable_to_non_nullable
as ListTileControlAffinity?,secondary: freezed == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as Widget?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as BooleanFieldBuilderDef?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _BooleanInputUiSettings extends BooleanInputUiSettings {
  const _BooleanInputUiSettings({this.labelText, this.helperText, this.controlType, this.controlAffinity, @notSerializable this.secondary, @notSerializable this.widgetBuilder}): super._();
  factory _BooleanInputUiSettings.fromJson(Map<String, dynamic> json) => _$BooleanInputUiSettingsFromJson(json);

@override final  String? labelText;
@override final  String? helperText;
@override final  BooleanFieldControlType? controlType;
@override final  ListTileControlAffinity? controlAffinity;
@override@notSerializable final  Widget? secondary;
@override@notSerializable final  BooleanFieldBuilderDef? widgetBuilder;

/// Create a copy of BooleanInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooleanInputUiSettingsCopyWith<_BooleanInputUiSettings> get copyWith => __$BooleanInputUiSettingsCopyWithImpl<_BooleanInputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooleanInputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooleanInputUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.controlType, controlType) || other.controlType == controlType)&&(identical(other.controlAffinity, controlAffinity) || other.controlAffinity == controlAffinity)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,controlType,controlAffinity,secondary,widgetBuilder);

@override
String toString() {
  return 'BooleanInputUiSettings(labelText: $labelText, helperText: $helperText, controlType: $controlType, controlAffinity: $controlAffinity, secondary: $secondary, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class _$BooleanInputUiSettingsCopyWith<$Res> implements $BooleanInputUiSettingsCopyWith<$Res> {
  factory _$BooleanInputUiSettingsCopyWith(_BooleanInputUiSettings value, $Res Function(_BooleanInputUiSettings) _then) = __$BooleanInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? labelText, String? helperText, BooleanFieldControlType? controlType, ListTileControlAffinity? controlAffinity,@notSerializable Widget? secondary,@notSerializable BooleanFieldBuilderDef? widgetBuilder
});




}
/// @nodoc
class __$BooleanInputUiSettingsCopyWithImpl<$Res>
    implements _$BooleanInputUiSettingsCopyWith<$Res> {
  __$BooleanInputUiSettingsCopyWithImpl(this._self, this._then);

  final _BooleanInputUiSettings _self;
  final $Res Function(_BooleanInputUiSettings) _then;

/// Create a copy of BooleanInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? controlType = freezed,Object? controlAffinity = freezed,Object? secondary = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_BooleanInputUiSettings(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,controlType: freezed == controlType ? _self.controlType : controlType // ignore: cast_nullable_to_non_nullable
as BooleanFieldControlType?,controlAffinity: freezed == controlAffinity ? _self.controlAffinity : controlAffinity // ignore: cast_nullable_to_non_nullable
as ListTileControlAffinity?,secondary: freezed == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as Widget?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as BooleanFieldBuilderDef?,
  ));
}


}


/// @nodoc
mixin _$DateTimeInputUiSettings {

 String? get dateFormat; String? get timeFormat; String? get labelText; String? get helperText; String? get hintText;/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
 int? get headerFlex;@notSerializable Widget? get prefixIcon; String? get addDateText; String? get addTimeText;/// If DateTimeInput.initialValue is null, this value will be used instead.
 FlexibleDateTime? get initialEditValue; DatePickerEntryMode? get initialDateEntryMode; DatePickerMode? get initialDatePickerMode; DateEditMode? get editMode;@notSerializable PickDateDef? get pickDate;@notSerializable PickTimeDef? get pickTime; TimePickerEntryMode? get initialTimeEntryMode;@notSerializable DateTimeFieldBuilderDef? get widgetBuilder;
/// Create a copy of DateTimeInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateTimeInputUiSettingsCopyWith<DateTimeInputUiSettings> get copyWith => _$DateTimeInputUiSettingsCopyWithImpl<DateTimeInputUiSettings>(this as DateTimeInputUiSettings, _$identity);

  /// Serializes this DateTimeInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateTimeInputUiSettings&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon)&&(identical(other.addDateText, addDateText) || other.addDateText == addDateText)&&(identical(other.addTimeText, addTimeText) || other.addTimeText == addTimeText)&&(identical(other.initialEditValue, initialEditValue) || other.initialEditValue == initialEditValue)&&(identical(other.initialDateEntryMode, initialDateEntryMode) || other.initialDateEntryMode == initialDateEntryMode)&&(identical(other.initialDatePickerMode, initialDatePickerMode) || other.initialDatePickerMode == initialDatePickerMode)&&(identical(other.editMode, editMode) || other.editMode == editMode)&&(identical(other.pickDate, pickDate) || other.pickDate == pickDate)&&(identical(other.pickTime, pickTime) || other.pickTime == pickTime)&&(identical(other.initialTimeEntryMode, initialTimeEntryMode) || other.initialTimeEntryMode == initialTimeEntryMode)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateFormat,timeFormat,labelText,helperText,hintText,headerFlex,prefixIcon,addDateText,addTimeText,initialEditValue,initialDateEntryMode,initialDatePickerMode,editMode,pickDate,pickTime,initialTimeEntryMode,widgetBuilder);

@override
String toString() {
  return 'DateTimeInputUiSettings(dateFormat: $dateFormat, timeFormat: $timeFormat, labelText: $labelText, helperText: $helperText, hintText: $hintText, headerFlex: $headerFlex, prefixIcon: $prefixIcon, addDateText: $addDateText, addTimeText: $addTimeText, initialEditValue: $initialEditValue, initialDateEntryMode: $initialDateEntryMode, initialDatePickerMode: $initialDatePickerMode, editMode: $editMode, pickDate: $pickDate, pickTime: $pickTime, initialTimeEntryMode: $initialTimeEntryMode, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class $DateTimeInputUiSettingsCopyWith<$Res>  {
  factory $DateTimeInputUiSettingsCopyWith(DateTimeInputUiSettings value, $Res Function(DateTimeInputUiSettings) _then) = _$DateTimeInputUiSettingsCopyWithImpl;
@useResult
$Res call({
 String? dateFormat, String? timeFormat, String? labelText, String? helperText, String? hintText, int? headerFlex,@notSerializable Widget? prefixIcon, String? addDateText, String? addTimeText, FlexibleDateTime? initialEditValue, DatePickerEntryMode? initialDateEntryMode, DatePickerMode? initialDatePickerMode, DateEditMode? editMode,@notSerializable PickDateDef? pickDate,@notSerializable PickTimeDef? pickTime, TimePickerEntryMode? initialTimeEntryMode,@notSerializable DateTimeFieldBuilderDef? widgetBuilder
});


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
@pragma('vm:prefer-inline') @override $Res call({Object? dateFormat = freezed,Object? timeFormat = freezed,Object? labelText = freezed,Object? helperText = freezed,Object? hintText = freezed,Object? headerFlex = freezed,Object? prefixIcon = freezed,Object? addDateText = freezed,Object? addTimeText = freezed,Object? initialEditValue = freezed,Object? initialDateEntryMode = freezed,Object? initialDatePickerMode = freezed,Object? editMode = freezed,Object? pickDate = freezed,Object? pickTime = freezed,Object? initialTimeEntryMode = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_self.copyWith(
dateFormat: freezed == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String?,timeFormat: freezed == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,addDateText: freezed == addDateText ? _self.addDateText : addDateText // ignore: cast_nullable_to_non_nullable
as String?,addTimeText: freezed == addTimeText ? _self.addTimeText : addTimeText // ignore: cast_nullable_to_non_nullable
as String?,initialEditValue: freezed == initialEditValue ? _self.initialEditValue : initialEditValue // ignore: cast_nullable_to_non_nullable
as FlexibleDateTime?,initialDateEntryMode: freezed == initialDateEntryMode ? _self.initialDateEntryMode : initialDateEntryMode // ignore: cast_nullable_to_non_nullable
as DatePickerEntryMode?,initialDatePickerMode: freezed == initialDatePickerMode ? _self.initialDatePickerMode : initialDatePickerMode // ignore: cast_nullable_to_non_nullable
as DatePickerMode?,editMode: freezed == editMode ? _self.editMode : editMode // ignore: cast_nullable_to_non_nullable
as DateEditMode?,pickDate: freezed == pickDate ? _self.pickDate : pickDate // ignore: cast_nullable_to_non_nullable
as PickDateDef?,pickTime: freezed == pickTime ? _self.pickTime : pickTime // ignore: cast_nullable_to_non_nullable
as PickTimeDef?,initialTimeEntryMode: freezed == initialTimeEntryMode ? _self.initialTimeEntryMode : initialTimeEntryMode // ignore: cast_nullable_to_non_nullable
as TimePickerEntryMode?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
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
  const _DateTimeInputUiSettings({this.dateFormat, this.timeFormat, this.labelText, this.helperText, this.hintText, this.headerFlex, @notSerializable this.prefixIcon, this.addDateText, this.addTimeText, this.initialEditValue, this.initialDateEntryMode, this.initialDatePickerMode, this.editMode, @notSerializable this.pickDate, @notSerializable this.pickTime, this.initialTimeEntryMode, @notSerializable this.widgetBuilder}): super._();
  factory _DateTimeInputUiSettings.fromJson(Map<String, dynamic> json) => _$DateTimeInputUiSettingsFromJson(json);

@override final  String? dateFormat;
@override final  String? timeFormat;
@override final  String? labelText;
@override final  String? helperText;
@override final  String? hintText;
/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
@override final  int? headerFlex;
@override@notSerializable final  Widget? prefixIcon;
@override final  String? addDateText;
@override final  String? addTimeText;
/// If DateTimeInput.initialValue is null, this value will be used instead.
@override final  FlexibleDateTime? initialEditValue;
@override final  DatePickerEntryMode? initialDateEntryMode;
@override final  DatePickerMode? initialDatePickerMode;
@override final  DateEditMode? editMode;
@override@notSerializable final  PickDateDef? pickDate;
@override@notSerializable final  PickTimeDef? pickTime;
@override final  TimePickerEntryMode? initialTimeEntryMode;
@override@notSerializable final  DateTimeFieldBuilderDef? widgetBuilder;

/// Create a copy of DateTimeInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateTimeInputUiSettingsCopyWith<_DateTimeInputUiSettings> get copyWith => __$DateTimeInputUiSettingsCopyWithImpl<_DateTimeInputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DateTimeInputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateTimeInputUiSettings&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon)&&(identical(other.addDateText, addDateText) || other.addDateText == addDateText)&&(identical(other.addTimeText, addTimeText) || other.addTimeText == addTimeText)&&(identical(other.initialEditValue, initialEditValue) || other.initialEditValue == initialEditValue)&&(identical(other.initialDateEntryMode, initialDateEntryMode) || other.initialDateEntryMode == initialDateEntryMode)&&(identical(other.initialDatePickerMode, initialDatePickerMode) || other.initialDatePickerMode == initialDatePickerMode)&&(identical(other.editMode, editMode) || other.editMode == editMode)&&(identical(other.pickDate, pickDate) || other.pickDate == pickDate)&&(identical(other.pickTime, pickTime) || other.pickTime == pickTime)&&(identical(other.initialTimeEntryMode, initialTimeEntryMode) || other.initialTimeEntryMode == initialTimeEntryMode)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateFormat,timeFormat,labelText,helperText,hintText,headerFlex,prefixIcon,addDateText,addTimeText,initialEditValue,initialDateEntryMode,initialDatePickerMode,editMode,pickDate,pickTime,initialTimeEntryMode,widgetBuilder);

@override
String toString() {
  return 'DateTimeInputUiSettings(dateFormat: $dateFormat, timeFormat: $timeFormat, labelText: $labelText, helperText: $helperText, hintText: $hintText, headerFlex: $headerFlex, prefixIcon: $prefixIcon, addDateText: $addDateText, addTimeText: $addTimeText, initialEditValue: $initialEditValue, initialDateEntryMode: $initialDateEntryMode, initialDatePickerMode: $initialDatePickerMode, editMode: $editMode, pickDate: $pickDate, pickTime: $pickTime, initialTimeEntryMode: $initialTimeEntryMode, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class _$DateTimeInputUiSettingsCopyWith<$Res> implements $DateTimeInputUiSettingsCopyWith<$Res> {
  factory _$DateTimeInputUiSettingsCopyWith(_DateTimeInputUiSettings value, $Res Function(_DateTimeInputUiSettings) _then) = __$DateTimeInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? dateFormat, String? timeFormat, String? labelText, String? helperText, String? hintText, int? headerFlex,@notSerializable Widget? prefixIcon, String? addDateText, String? addTimeText, FlexibleDateTime? initialEditValue, DatePickerEntryMode? initialDateEntryMode, DatePickerMode? initialDatePickerMode, DateEditMode? editMode,@notSerializable PickDateDef? pickDate,@notSerializable PickTimeDef? pickTime, TimePickerEntryMode? initialTimeEntryMode,@notSerializable DateTimeFieldBuilderDef? widgetBuilder
});


@override $FlexibleDateTimeCopyWith<$Res>? get initialEditValue;

}
/// @nodoc
class __$DateTimeInputUiSettingsCopyWithImpl<$Res>
    implements _$DateTimeInputUiSettingsCopyWith<$Res> {
  __$DateTimeInputUiSettingsCopyWithImpl(this._self, this._then);

  final _DateTimeInputUiSettings _self;
  final $Res Function(_DateTimeInputUiSettings) _then;

/// Create a copy of DateTimeInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateFormat = freezed,Object? timeFormat = freezed,Object? labelText = freezed,Object? helperText = freezed,Object? hintText = freezed,Object? headerFlex = freezed,Object? prefixIcon = freezed,Object? addDateText = freezed,Object? addTimeText = freezed,Object? initialEditValue = freezed,Object? initialDateEntryMode = freezed,Object? initialDatePickerMode = freezed,Object? editMode = freezed,Object? pickDate = freezed,Object? pickTime = freezed,Object? initialTimeEntryMode = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_DateTimeInputUiSettings(
dateFormat: freezed == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String?,timeFormat: freezed == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,addDateText: freezed == addDateText ? _self.addDateText : addDateText // ignore: cast_nullable_to_non_nullable
as String?,addTimeText: freezed == addTimeText ? _self.addTimeText : addTimeText // ignore: cast_nullable_to_non_nullable
as String?,initialEditValue: freezed == initialEditValue ? _self.initialEditValue : initialEditValue // ignore: cast_nullable_to_non_nullable
as FlexibleDateTime?,initialDateEntryMode: freezed == initialDateEntryMode ? _self.initialDateEntryMode : initialDateEntryMode // ignore: cast_nullable_to_non_nullable
as DatePickerEntryMode?,initialDatePickerMode: freezed == initialDatePickerMode ? _self.initialDatePickerMode : initialDatePickerMode // ignore: cast_nullable_to_non_nullable
as DatePickerMode?,editMode: freezed == editMode ? _self.editMode : editMode // ignore: cast_nullable_to_non_nullable
as DateEditMode?,pickDate: freezed == pickDate ? _self.pickDate : pickDate // ignore: cast_nullable_to_non_nullable
as PickDateDef?,pickTime: freezed == pickTime ? _self.pickTime : pickTime // ignore: cast_nullable_to_non_nullable
as PickTimeDef?,initialTimeEntryMode: freezed == initialTimeEntryMode ? _self.initialTimeEntryMode : initialTimeEntryMode // ignore: cast_nullable_to_non_nullable
as TimePickerEntryMode?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
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

 String? get labelText; String? get helperText; String? get hintText; DurationEditMode? get editMode;/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
 int? get headerFlex;@notSerializable PickDurationDef? get pickDuration;@notSerializable FormatDurationDef? get formatDuration;@notSerializable DurationFieldBuilderDef? get widgetBuilder;/// The following fields are used if editMode is dateTime
 String? get dateTimeLabelText; String? get dateTimeHelperText; String? get dateTimeHintText; String? get dateFormat; String? get timeFormat; DateEditMode? get dateTimeEditMode;@notSerializable PickDateDef? get pickDate;@notSerializable PickTimeDef? get pickTime;
/// Create a copy of DurationInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DurationInputUiSettingsCopyWith<DurationInputUiSettings> get copyWith => _$DurationInputUiSettingsCopyWithImpl<DurationInputUiSettings>(this as DurationInputUiSettings, _$identity);

  /// Serializes this DurationInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DurationInputUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.editMode, editMode) || other.editMode == editMode)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.pickDuration, pickDuration) || other.pickDuration == pickDuration)&&(identical(other.formatDuration, formatDuration) || other.formatDuration == formatDuration)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder)&&(identical(other.dateTimeLabelText, dateTimeLabelText) || other.dateTimeLabelText == dateTimeLabelText)&&(identical(other.dateTimeHelperText, dateTimeHelperText) || other.dateTimeHelperText == dateTimeHelperText)&&(identical(other.dateTimeHintText, dateTimeHintText) || other.dateTimeHintText == dateTimeHintText)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.dateTimeEditMode, dateTimeEditMode) || other.dateTimeEditMode == dateTimeEditMode)&&(identical(other.pickDate, pickDate) || other.pickDate == pickDate)&&(identical(other.pickTime, pickTime) || other.pickTime == pickTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,hintText,editMode,headerFlex,pickDuration,formatDuration,widgetBuilder,dateTimeLabelText,dateTimeHelperText,dateTimeHintText,dateFormat,timeFormat,dateTimeEditMode,pickDate,pickTime);

@override
String toString() {
  return 'DurationInputUiSettings(labelText: $labelText, helperText: $helperText, hintText: $hintText, editMode: $editMode, headerFlex: $headerFlex, pickDuration: $pickDuration, formatDuration: $formatDuration, widgetBuilder: $widgetBuilder, dateTimeLabelText: $dateTimeLabelText, dateTimeHelperText: $dateTimeHelperText, dateTimeHintText: $dateTimeHintText, dateFormat: $dateFormat, timeFormat: $timeFormat, dateTimeEditMode: $dateTimeEditMode, pickDate: $pickDate, pickTime: $pickTime)';
}


}

/// @nodoc
abstract mixin class $DurationInputUiSettingsCopyWith<$Res>  {
  factory $DurationInputUiSettingsCopyWith(DurationInputUiSettings value, $Res Function(DurationInputUiSettings) _then) = _$DurationInputUiSettingsCopyWithImpl;
@useResult
$Res call({
 String? labelText, String? helperText, String? hintText, DurationEditMode? editMode, int? headerFlex,@notSerializable PickDurationDef? pickDuration,@notSerializable FormatDurationDef? formatDuration,@notSerializable DurationFieldBuilderDef? widgetBuilder, String? dateTimeLabelText, String? dateTimeHelperText, String? dateTimeHintText, String? dateFormat, String? timeFormat, DateEditMode? dateTimeEditMode,@notSerializable PickDateDef? pickDate,@notSerializable PickTimeDef? pickTime
});




}
/// @nodoc
class _$DurationInputUiSettingsCopyWithImpl<$Res>
    implements $DurationInputUiSettingsCopyWith<$Res> {
  _$DurationInputUiSettingsCopyWithImpl(this._self, this._then);

  final DurationInputUiSettings _self;
  final $Res Function(DurationInputUiSettings) _then;

/// Create a copy of DurationInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? hintText = freezed,Object? editMode = freezed,Object? headerFlex = freezed,Object? pickDuration = freezed,Object? formatDuration = freezed,Object? widgetBuilder = freezed,Object? dateTimeLabelText = freezed,Object? dateTimeHelperText = freezed,Object? dateTimeHintText = freezed,Object? dateFormat = freezed,Object? timeFormat = freezed,Object? dateTimeEditMode = freezed,Object? pickDate = freezed,Object? pickTime = freezed,}) {
  return _then(_self.copyWith(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,editMode: freezed == editMode ? _self.editMode : editMode // ignore: cast_nullable_to_non_nullable
as DurationEditMode?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,pickDuration: freezed == pickDuration ? _self.pickDuration : pickDuration // ignore: cast_nullable_to_non_nullable
as PickDurationDef?,formatDuration: freezed == formatDuration ? _self.formatDuration : formatDuration // ignore: cast_nullable_to_non_nullable
as FormatDurationDef?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as DurationFieldBuilderDef?,dateTimeLabelText: freezed == dateTimeLabelText ? _self.dateTimeLabelText : dateTimeLabelText // ignore: cast_nullable_to_non_nullable
as String?,dateTimeHelperText: freezed == dateTimeHelperText ? _self.dateTimeHelperText : dateTimeHelperText // ignore: cast_nullable_to_non_nullable
as String?,dateTimeHintText: freezed == dateTimeHintText ? _self.dateTimeHintText : dateTimeHintText // ignore: cast_nullable_to_non_nullable
as String?,dateFormat: freezed == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String?,timeFormat: freezed == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String?,dateTimeEditMode: freezed == dateTimeEditMode ? _self.dateTimeEditMode : dateTimeEditMode // ignore: cast_nullable_to_non_nullable
as DateEditMode?,pickDate: freezed == pickDate ? _self.pickDate : pickDate // ignore: cast_nullable_to_non_nullable
as PickDateDef?,pickTime: freezed == pickTime ? _self.pickTime : pickTime // ignore: cast_nullable_to_non_nullable
as PickTimeDef?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _DurationInputUiSettings extends DurationInputUiSettings {
  const _DurationInputUiSettings({this.labelText, this.helperText, this.hintText, this.editMode, this.headerFlex, @notSerializable this.pickDuration, @notSerializable this.formatDuration, @notSerializable this.widgetBuilder, this.dateTimeLabelText, this.dateTimeHelperText, this.dateTimeHintText, this.dateFormat, this.timeFormat, this.dateTimeEditMode, @notSerializable this.pickDate, @notSerializable this.pickTime}): super._();
  factory _DurationInputUiSettings.fromJson(Map<String, dynamic> json) => _$DurationInputUiSettingsFromJson(json);

@override final  String? labelText;
@override final  String? helperText;
@override final  String? hintText;
@override final  DurationEditMode? editMode;
/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
@override final  int? headerFlex;
@override@notSerializable final  PickDurationDef? pickDuration;
@override@notSerializable final  FormatDurationDef? formatDuration;
@override@notSerializable final  DurationFieldBuilderDef? widgetBuilder;
/// The following fields are used if editMode is dateTime
@override final  String? dateTimeLabelText;
@override final  String? dateTimeHelperText;
@override final  String? dateTimeHintText;
@override final  String? dateFormat;
@override final  String? timeFormat;
@override final  DateEditMode? dateTimeEditMode;
@override@notSerializable final  PickDateDef? pickDate;
@override@notSerializable final  PickTimeDef? pickTime;

/// Create a copy of DurationInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DurationInputUiSettingsCopyWith<_DurationInputUiSettings> get copyWith => __$DurationInputUiSettingsCopyWithImpl<_DurationInputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DurationInputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DurationInputUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.editMode, editMode) || other.editMode == editMode)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.pickDuration, pickDuration) || other.pickDuration == pickDuration)&&(identical(other.formatDuration, formatDuration) || other.formatDuration == formatDuration)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder)&&(identical(other.dateTimeLabelText, dateTimeLabelText) || other.dateTimeLabelText == dateTimeLabelText)&&(identical(other.dateTimeHelperText, dateTimeHelperText) || other.dateTimeHelperText == dateTimeHelperText)&&(identical(other.dateTimeHintText, dateTimeHintText) || other.dateTimeHintText == dateTimeHintText)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.dateTimeEditMode, dateTimeEditMode) || other.dateTimeEditMode == dateTimeEditMode)&&(identical(other.pickDate, pickDate) || other.pickDate == pickDate)&&(identical(other.pickTime, pickTime) || other.pickTime == pickTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,hintText,editMode,headerFlex,pickDuration,formatDuration,widgetBuilder,dateTimeLabelText,dateTimeHelperText,dateTimeHintText,dateFormat,timeFormat,dateTimeEditMode,pickDate,pickTime);

@override
String toString() {
  return 'DurationInputUiSettings(labelText: $labelText, helperText: $helperText, hintText: $hintText, editMode: $editMode, headerFlex: $headerFlex, pickDuration: $pickDuration, formatDuration: $formatDuration, widgetBuilder: $widgetBuilder, dateTimeLabelText: $dateTimeLabelText, dateTimeHelperText: $dateTimeHelperText, dateTimeHintText: $dateTimeHintText, dateFormat: $dateFormat, timeFormat: $timeFormat, dateTimeEditMode: $dateTimeEditMode, pickDate: $pickDate, pickTime: $pickTime)';
}


}

/// @nodoc
abstract mixin class _$DurationInputUiSettingsCopyWith<$Res> implements $DurationInputUiSettingsCopyWith<$Res> {
  factory _$DurationInputUiSettingsCopyWith(_DurationInputUiSettings value, $Res Function(_DurationInputUiSettings) _then) = __$DurationInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? labelText, String? helperText, String? hintText, DurationEditMode? editMode, int? headerFlex,@notSerializable PickDurationDef? pickDuration,@notSerializable FormatDurationDef? formatDuration,@notSerializable DurationFieldBuilderDef? widgetBuilder, String? dateTimeLabelText, String? dateTimeHelperText, String? dateTimeHintText, String? dateFormat, String? timeFormat, DateEditMode? dateTimeEditMode,@notSerializable PickDateDef? pickDate,@notSerializable PickTimeDef? pickTime
});




}
/// @nodoc
class __$DurationInputUiSettingsCopyWithImpl<$Res>
    implements _$DurationInputUiSettingsCopyWith<$Res> {
  __$DurationInputUiSettingsCopyWithImpl(this._self, this._then);

  final _DurationInputUiSettings _self;
  final $Res Function(_DurationInputUiSettings) _then;

/// Create a copy of DurationInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? hintText = freezed,Object? editMode = freezed,Object? headerFlex = freezed,Object? pickDuration = freezed,Object? formatDuration = freezed,Object? widgetBuilder = freezed,Object? dateTimeLabelText = freezed,Object? dateTimeHelperText = freezed,Object? dateTimeHintText = freezed,Object? dateFormat = freezed,Object? timeFormat = freezed,Object? dateTimeEditMode = freezed,Object? pickDate = freezed,Object? pickTime = freezed,}) {
  return _then(_DurationInputUiSettings(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,editMode: freezed == editMode ? _self.editMode : editMode // ignore: cast_nullable_to_non_nullable
as DurationEditMode?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,pickDuration: freezed == pickDuration ? _self.pickDuration : pickDuration // ignore: cast_nullable_to_non_nullable
as PickDurationDef?,formatDuration: freezed == formatDuration ? _self.formatDuration : formatDuration // ignore: cast_nullable_to_non_nullable
as FormatDurationDef?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as DurationFieldBuilderDef?,dateTimeLabelText: freezed == dateTimeLabelText ? _self.dateTimeLabelText : dateTimeLabelText // ignore: cast_nullable_to_non_nullable
as String?,dateTimeHelperText: freezed == dateTimeHelperText ? _self.dateTimeHelperText : dateTimeHelperText // ignore: cast_nullable_to_non_nullable
as String?,dateTimeHintText: freezed == dateTimeHintText ? _self.dateTimeHintText : dateTimeHintText // ignore: cast_nullable_to_non_nullable
as String?,dateFormat: freezed == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String?,timeFormat: freezed == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String?,dateTimeEditMode: freezed == dateTimeEditMode ? _self.dateTimeEditMode : dateTimeEditMode // ignore: cast_nullable_to_non_nullable
as DateEditMode?,pickDate: freezed == pickDate ? _self.pickDate : pickDate // ignore: cast_nullable_to_non_nullable
as PickDateDef?,pickTime: freezed == pickTime ? _self.pickTime : pickTime // ignore: cast_nullable_to_non_nullable
as PickTimeDef?,
  ));
}


}


/// @nodoc
mixin _$DynamicInputsNodeUiSettings {

 String? get labelText; String? get helperText;/// Default to true
 bool? get reorderable;/// Default to [reorderable].
 bool? get oddEvenRowColors;/// if null, the add button will be an IconButton with a '+'.
 String? get addButtonText;/// Defaults to [DynamicInputsNodeAddButtonPosition.header].
 DynamicInputsNodeAddButtonPosition? get addButtonPosition;@notSerializable DynamicInputsNodeWidgetBuilderDef? get addButtonBuilder;/// Defaults to [Push.modalBottomSheet] with initialBottomSheetSize at 0.9.
/// Serializable if you use on of Push's default methods.
@PushDefNullableConverter() PushDef? get openTemplates;@notSerializable GenerateIdDef? get generateId;@notSerializable OnDynamicInputDeletionDef? get onChildDeletion;@notSerializable DynamicInputsNodeWidgetBuilderDef? get widgetBuilder;
/// Create a copy of DynamicInputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicInputsNodeUiSettingsCopyWith<DynamicInputsNodeUiSettings> get copyWith => _$DynamicInputsNodeUiSettingsCopyWithImpl<DynamicInputsNodeUiSettings>(this as DynamicInputsNodeUiSettings, _$identity);

  /// Serializes this DynamicInputsNodeUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicInputsNodeUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.reorderable, reorderable) || other.reorderable == reorderable)&&(identical(other.oddEvenRowColors, oddEvenRowColors) || other.oddEvenRowColors == oddEvenRowColors)&&(identical(other.addButtonText, addButtonText) || other.addButtonText == addButtonText)&&(identical(other.addButtonPosition, addButtonPosition) || other.addButtonPosition == addButtonPosition)&&(identical(other.addButtonBuilder, addButtonBuilder) || other.addButtonBuilder == addButtonBuilder)&&(identical(other.openTemplates, openTemplates) || other.openTemplates == openTemplates)&&(identical(other.generateId, generateId) || other.generateId == generateId)&&(identical(other.onChildDeletion, onChildDeletion) || other.onChildDeletion == onChildDeletion)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,reorderable,oddEvenRowColors,addButtonText,addButtonPosition,addButtonBuilder,openTemplates,generateId,onChildDeletion,widgetBuilder);

@override
String toString() {
  return 'DynamicInputsNodeUiSettings(labelText: $labelText, helperText: $helperText, reorderable: $reorderable, oddEvenRowColors: $oddEvenRowColors, addButtonText: $addButtonText, addButtonPosition: $addButtonPosition, addButtonBuilder: $addButtonBuilder, openTemplates: $openTemplates, generateId: $generateId, onChildDeletion: $onChildDeletion, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class $DynamicInputsNodeUiSettingsCopyWith<$Res>  {
  factory $DynamicInputsNodeUiSettingsCopyWith(DynamicInputsNodeUiSettings value, $Res Function(DynamicInputsNodeUiSettings) _then) = _$DynamicInputsNodeUiSettingsCopyWithImpl;
@useResult
$Res call({
 String? labelText, String? helperText, bool? reorderable, bool? oddEvenRowColors, String? addButtonText, DynamicInputsNodeAddButtonPosition? addButtonPosition,@notSerializable DynamicInputsNodeWidgetBuilderDef? addButtonBuilder,@PushDefNullableConverter() PushDef? openTemplates,@notSerializable GenerateIdDef? generateId,@notSerializable OnDynamicInputDeletionDef? onChildDeletion,@notSerializable DynamicInputsNodeWidgetBuilderDef? widgetBuilder
});




}
/// @nodoc
class _$DynamicInputsNodeUiSettingsCopyWithImpl<$Res>
    implements $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  _$DynamicInputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final DynamicInputsNodeUiSettings _self;
  final $Res Function(DynamicInputsNodeUiSettings) _then;

/// Create a copy of DynamicInputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? reorderable = freezed,Object? oddEvenRowColors = freezed,Object? addButtonText = freezed,Object? addButtonPosition = freezed,Object? addButtonBuilder = freezed,Object? openTemplates = freezed,Object? generateId = freezed,Object? onChildDeletion = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_self.copyWith(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,reorderable: freezed == reorderable ? _self.reorderable : reorderable // ignore: cast_nullable_to_non_nullable
as bool?,oddEvenRowColors: freezed == oddEvenRowColors ? _self.oddEvenRowColors : oddEvenRowColors // ignore: cast_nullable_to_non_nullable
as bool?,addButtonText: freezed == addButtonText ? _self.addButtonText : addButtonText // ignore: cast_nullable_to_non_nullable
as String?,addButtonPosition: freezed == addButtonPosition ? _self.addButtonPosition : addButtonPosition // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeAddButtonPosition?,addButtonBuilder: freezed == addButtonBuilder ? _self.addButtonBuilder : addButtonBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,openTemplates: freezed == openTemplates ? _self.openTemplates : openTemplates // ignore: cast_nullable_to_non_nullable
as PushDef?,generateId: freezed == generateId ? _self.generateId : generateId // ignore: cast_nullable_to_non_nullable
as GenerateIdDef?,onChildDeletion: freezed == onChildDeletion ? _self.onChildDeletion : onChildDeletion // ignore: cast_nullable_to_non_nullable
as OnDynamicInputDeletionDef?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _DynamicInputsNodeUiSettings extends DynamicInputsNodeUiSettings {
  const _DynamicInputsNodeUiSettings({this.labelText, this.helperText, this.reorderable, this.oddEvenRowColors, this.addButtonText, this.addButtonPosition, @notSerializable this.addButtonBuilder, @PushDefNullableConverter() this.openTemplates, @notSerializable this.generateId, @notSerializable this.onChildDeletion, @notSerializable this.widgetBuilder}): super._();
  factory _DynamicInputsNodeUiSettings.fromJson(Map<String, dynamic> json) => _$DynamicInputsNodeUiSettingsFromJson(json);

@override final  String? labelText;
@override final  String? helperText;
/// Default to true
@override final  bool? reorderable;
/// Default to [reorderable].
@override final  bool? oddEvenRowColors;
/// if null, the add button will be an IconButton with a '+'.
@override final  String? addButtonText;
/// Defaults to [DynamicInputsNodeAddButtonPosition.header].
@override final  DynamicInputsNodeAddButtonPosition? addButtonPosition;
@override@notSerializable final  DynamicInputsNodeWidgetBuilderDef? addButtonBuilder;
/// Defaults to [Push.modalBottomSheet] with initialBottomSheetSize at 0.9.
/// Serializable if you use on of Push's default methods.
@override@PushDefNullableConverter() final  PushDef? openTemplates;
@override@notSerializable final  GenerateIdDef? generateId;
@override@notSerializable final  OnDynamicInputDeletionDef? onChildDeletion;
@override@notSerializable final  DynamicInputsNodeWidgetBuilderDef? widgetBuilder;

/// Create a copy of DynamicInputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicInputsNodeUiSettingsCopyWith<_DynamicInputsNodeUiSettings> get copyWith => __$DynamicInputsNodeUiSettingsCopyWithImpl<_DynamicInputsNodeUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicInputsNodeUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicInputsNodeUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.reorderable, reorderable) || other.reorderable == reorderable)&&(identical(other.oddEvenRowColors, oddEvenRowColors) || other.oddEvenRowColors == oddEvenRowColors)&&(identical(other.addButtonText, addButtonText) || other.addButtonText == addButtonText)&&(identical(other.addButtonPosition, addButtonPosition) || other.addButtonPosition == addButtonPosition)&&(identical(other.addButtonBuilder, addButtonBuilder) || other.addButtonBuilder == addButtonBuilder)&&(identical(other.openTemplates, openTemplates) || other.openTemplates == openTemplates)&&(identical(other.generateId, generateId) || other.generateId == generateId)&&(identical(other.onChildDeletion, onChildDeletion) || other.onChildDeletion == onChildDeletion)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,reorderable,oddEvenRowColors,addButtonText,addButtonPosition,addButtonBuilder,openTemplates,generateId,onChildDeletion,widgetBuilder);

@override
String toString() {
  return 'DynamicInputsNodeUiSettings(labelText: $labelText, helperText: $helperText, reorderable: $reorderable, oddEvenRowColors: $oddEvenRowColors, addButtonText: $addButtonText, addButtonPosition: $addButtonPosition, addButtonBuilder: $addButtonBuilder, openTemplates: $openTemplates, generateId: $generateId, onChildDeletion: $onChildDeletion, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class _$DynamicInputsNodeUiSettingsCopyWith<$Res> implements $DynamicInputsNodeUiSettingsCopyWith<$Res> {
  factory _$DynamicInputsNodeUiSettingsCopyWith(_DynamicInputsNodeUiSettings value, $Res Function(_DynamicInputsNodeUiSettings) _then) = __$DynamicInputsNodeUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? labelText, String? helperText, bool? reorderable, bool? oddEvenRowColors, String? addButtonText, DynamicInputsNodeAddButtonPosition? addButtonPosition,@notSerializable DynamicInputsNodeWidgetBuilderDef? addButtonBuilder,@PushDefNullableConverter() PushDef? openTemplates,@notSerializable GenerateIdDef? generateId,@notSerializable OnDynamicInputDeletionDef? onChildDeletion,@notSerializable DynamicInputsNodeWidgetBuilderDef? widgetBuilder
});




}
/// @nodoc
class __$DynamicInputsNodeUiSettingsCopyWithImpl<$Res>
    implements _$DynamicInputsNodeUiSettingsCopyWith<$Res> {
  __$DynamicInputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final _DynamicInputsNodeUiSettings _self;
  final $Res Function(_DynamicInputsNodeUiSettings) _then;

/// Create a copy of DynamicInputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? reorderable = freezed,Object? oddEvenRowColors = freezed,Object? addButtonText = freezed,Object? addButtonPosition = freezed,Object? addButtonBuilder = freezed,Object? openTemplates = freezed,Object? generateId = freezed,Object? onChildDeletion = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_DynamicInputsNodeUiSettings(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,reorderable: freezed == reorderable ? _self.reorderable : reorderable // ignore: cast_nullable_to_non_nullable
as bool?,oddEvenRowColors: freezed == oddEvenRowColors ? _self.oddEvenRowColors : oddEvenRowColors // ignore: cast_nullable_to_non_nullable
as bool?,addButtonText: freezed == addButtonText ? _self.addButtonText : addButtonText // ignore: cast_nullable_to_non_nullable
as String?,addButtonPosition: freezed == addButtonPosition ? _self.addButtonPosition : addButtonPosition // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeAddButtonPosition?,addButtonBuilder: freezed == addButtonBuilder ? _self.addButtonBuilder : addButtonBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,openTemplates: freezed == openTemplates ? _self.openTemplates : openTemplates // ignore: cast_nullable_to_non_nullable
as PushDef?,generateId: freezed == generateId ? _self.generateId : generateId // ignore: cast_nullable_to_non_nullable
as GenerateIdDef?,onChildDeletion: freezed == onChildDeletion ? _self.onChildDeletion : onChildDeletion // ignore: cast_nullable_to_non_nullable
as OnDynamicInputDeletionDef?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,
  ));
}


}


/// @nodoc
mixin _$DynamicInputUiSettings {

 String? get labelText; String? get helperText;@notSerializable Widget? get prefixIcon;
/// Create a copy of DynamicInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicInputUiSettingsCopyWith<DynamicInputUiSettings> get copyWith => _$DynamicInputUiSettingsCopyWithImpl<DynamicInputUiSettings>(this as DynamicInputUiSettings, _$identity);

  /// Serializes this DynamicInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicInputUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,prefixIcon);

@override
String toString() {
  return 'DynamicInputUiSettings(labelText: $labelText, helperText: $helperText, prefixIcon: $prefixIcon)';
}


}

/// @nodoc
abstract mixin class $DynamicInputUiSettingsCopyWith<$Res>  {
  factory $DynamicInputUiSettingsCopyWith(DynamicInputUiSettings value, $Res Function(DynamicInputUiSettings) _then) = _$DynamicInputUiSettingsCopyWithImpl;
@useResult
$Res call({
 String? labelText, String? helperText,@notSerializable Widget? prefixIcon
});




}
/// @nodoc
class _$DynamicInputUiSettingsCopyWithImpl<$Res>
    implements $DynamicInputUiSettingsCopyWith<$Res> {
  _$DynamicInputUiSettingsCopyWithImpl(this._self, this._then);

  final DynamicInputUiSettings _self;
  final $Res Function(DynamicInputUiSettings) _then;

/// Create a copy of DynamicInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? prefixIcon = freezed,}) {
  return _then(_self.copyWith(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _DynamicInputUiSettings extends DynamicInputUiSettings {
  const _DynamicInputUiSettings({this.labelText, this.helperText, @notSerializable this.prefixIcon}): super._();
  factory _DynamicInputUiSettings.fromJson(Map<String, dynamic> json) => _$DynamicInputUiSettingsFromJson(json);

@override final  String? labelText;
@override final  String? helperText;
@override@notSerializable final  Widget? prefixIcon;

/// Create a copy of DynamicInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicInputUiSettingsCopyWith<_DynamicInputUiSettings> get copyWith => __$DynamicInputUiSettingsCopyWithImpl<_DynamicInputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicInputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicInputUiSettings&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,labelText,helperText,prefixIcon);

@override
String toString() {
  return 'DynamicInputUiSettings(labelText: $labelText, helperText: $helperText, prefixIcon: $prefixIcon)';
}


}

/// @nodoc
abstract mixin class _$DynamicInputUiSettingsCopyWith<$Res> implements $DynamicInputUiSettingsCopyWith<$Res> {
  factory _$DynamicInputUiSettingsCopyWith(_DynamicInputUiSettings value, $Res Function(_DynamicInputUiSettings) _then) = __$DynamicInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? labelText, String? helperText,@notSerializable Widget? prefixIcon
});




}
/// @nodoc
class __$DynamicInputUiSettingsCopyWithImpl<$Res>
    implements _$DynamicInputUiSettingsCopyWith<$Res> {
  __$DynamicInputUiSettingsCopyWithImpl(this._self, this._then);

  final _DynamicInputUiSettings _self;
  final $Res Function(_DynamicInputUiSettings) _then;

/// Create a copy of DynamicInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labelText = freezed,Object? helperText = freezed,Object? prefixIcon = freezed,}) {
  return _then(_DynamicInputUiSettings(
labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,
  ));
}


}


/// @nodoc
mixin _$InputsNodeUiSettings {

/// This field determines the layout of this node :
/// - -1 : [LayoutMethod.scrollable], the node expands, the children are
///        in a scrollable view.
/// - 0 : [LayoutMethod.shrinkWrap], the children are shrunk
/// - 1 and more : [LayoutMethod.flexible], the node expands, the children
///                share the availible space
///
/// When [childrenVisibility] is [ChildrenVisibility.whenAsked], the layout
/// only applies to the context opened by [openChildren].
/// When it is [ChildrenVisibility.always], if [flex] is different than 0,
/// the parent widget needs to provide a finite height
/// (for example, using [LayoutMethod.flexible]).
///
/// The default value depends on [childrenVisibility] :
/// - [ChildrenVisibility.always] : 0
/// - [ChildrenVisibility.whenAsked] : -1
 int? get flex;/// If [flex] is -1, the children order will be inverted,
/// including the header.
///
/// Defaults to false.
 bool? get reverse; String? get labelText; String? get labelTextWhenChildrenHidden; int? get labelMaxLines; String? get helperText;/// Default to always.
 ChildrenVisibility? get childrenVisibility;/// Only used when [ChildrenVisibility.whenAsked].
/// If true, when the widget will be rendered,
/// the children's visibility will be asked.
///
/// Default to false.
 bool? get showChildrenInitially;/// Defaults to [Push.page].
/// Serializable if you use on of Push's default methods.
@PushDefNullableConverter() PushDef? get openChildren;/// Only used when ChildrenVisibility.always.
///
/// Default to Axis.vertical
 Axis? get direction;/// Only used when ChildrenVisibility.always.
///
/// Default to CrossAxisAlignment.stretch
 CrossAxisAlignment? get crossAxisAlignment;/// This spacing will be placed between each [WoFormNode].
 double? get spacing;@notSerializable InputNodeWidgetBuilderDef? get widgetBuilder;/// Only used when [ChildrenVisibility.always].
@notSerializable HeaderBuilderDef? get headerBuilder;/// Only used when [ChildrenVisibility.whenAsked].
///
/// Default to [InputsNodeExpander.page].
/// An alternative is [InputsNodeExpander.modal].
@notSerializable InputNodeWidgetBuilderDef? get expanderBuilder;/// Only used when [ChildrenVisibility.whenAsked].
@notSerializable InputHeaderBuilderDef? get inputHeaderBuilder;
/// Create a copy of InputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputsNodeUiSettingsCopyWith<InputsNodeUiSettings> get copyWith => _$InputsNodeUiSettingsCopyWithImpl<InputsNodeUiSettings>(this as InputsNodeUiSettings, _$identity);

  /// Serializes this InputsNodeUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputsNodeUiSettings&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.reverse, reverse) || other.reverse == reverse)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.labelTextWhenChildrenHidden, labelTextWhenChildrenHidden) || other.labelTextWhenChildrenHidden == labelTextWhenChildrenHidden)&&(identical(other.labelMaxLines, labelMaxLines) || other.labelMaxLines == labelMaxLines)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.childrenVisibility, childrenVisibility) || other.childrenVisibility == childrenVisibility)&&(identical(other.showChildrenInitially, showChildrenInitially) || other.showChildrenInitially == showChildrenInitially)&&(identical(other.openChildren, openChildren) || other.openChildren == openChildren)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.crossAxisAlignment, crossAxisAlignment) || other.crossAxisAlignment == crossAxisAlignment)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.expanderBuilder, expanderBuilder) || other.expanderBuilder == expanderBuilder)&&(identical(other.inputHeaderBuilder, inputHeaderBuilder) || other.inputHeaderBuilder == inputHeaderBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex,reverse,labelText,labelTextWhenChildrenHidden,labelMaxLines,helperText,childrenVisibility,showChildrenInitially,openChildren,direction,crossAxisAlignment,spacing,widgetBuilder,headerBuilder,expanderBuilder,inputHeaderBuilder);

@override
String toString() {
  return 'InputsNodeUiSettings(flex: $flex, reverse: $reverse, labelText: $labelText, labelTextWhenChildrenHidden: $labelTextWhenChildrenHidden, labelMaxLines: $labelMaxLines, helperText: $helperText, childrenVisibility: $childrenVisibility, showChildrenInitially: $showChildrenInitially, openChildren: $openChildren, direction: $direction, crossAxisAlignment: $crossAxisAlignment, spacing: $spacing, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, expanderBuilder: $expanderBuilder, inputHeaderBuilder: $inputHeaderBuilder)';
}


}

/// @nodoc
abstract mixin class $InputsNodeUiSettingsCopyWith<$Res>  {
  factory $InputsNodeUiSettingsCopyWith(InputsNodeUiSettings value, $Res Function(InputsNodeUiSettings) _then) = _$InputsNodeUiSettingsCopyWithImpl;
@useResult
$Res call({
 int? flex, bool? reverse, String? labelText, String? labelTextWhenChildrenHidden, int? labelMaxLines, String? helperText, ChildrenVisibility? childrenVisibility, bool? showChildrenInitially,@PushDefNullableConverter() PushDef? openChildren, Axis? direction, CrossAxisAlignment? crossAxisAlignment, double? spacing,@notSerializable InputNodeWidgetBuilderDef? widgetBuilder,@notSerializable HeaderBuilderDef? headerBuilder,@notSerializable InputNodeWidgetBuilderDef? expanderBuilder,@notSerializable InputHeaderBuilderDef? inputHeaderBuilder
});




}
/// @nodoc
class _$InputsNodeUiSettingsCopyWithImpl<$Res>
    implements $InputsNodeUiSettingsCopyWith<$Res> {
  _$InputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final InputsNodeUiSettings _self;
  final $Res Function(InputsNodeUiSettings) _then;

/// Create a copy of InputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flex = freezed,Object? reverse = freezed,Object? labelText = freezed,Object? labelTextWhenChildrenHidden = freezed,Object? labelMaxLines = freezed,Object? helperText = freezed,Object? childrenVisibility = freezed,Object? showChildrenInitially = freezed,Object? openChildren = freezed,Object? direction = freezed,Object? crossAxisAlignment = freezed,Object? spacing = freezed,Object? widgetBuilder = freezed,Object? headerBuilder = freezed,Object? expanderBuilder = freezed,Object? inputHeaderBuilder = freezed,}) {
  return _then(_self.copyWith(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,reverse: freezed == reverse ? _self.reverse : reverse // ignore: cast_nullable_to_non_nullable
as bool?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,labelTextWhenChildrenHidden: freezed == labelTextWhenChildrenHidden ? _self.labelTextWhenChildrenHidden : labelTextWhenChildrenHidden // ignore: cast_nullable_to_non_nullable
as String?,labelMaxLines: freezed == labelMaxLines ? _self.labelMaxLines : labelMaxLines // ignore: cast_nullable_to_non_nullable
as int?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,childrenVisibility: freezed == childrenVisibility ? _self.childrenVisibility : childrenVisibility // ignore: cast_nullable_to_non_nullable
as ChildrenVisibility?,showChildrenInitially: freezed == showChildrenInitially ? _self.showChildrenInitially : showChildrenInitially // ignore: cast_nullable_to_non_nullable
as bool?,openChildren: freezed == openChildren ? _self.openChildren : openChildren // ignore: cast_nullable_to_non_nullable
as PushDef?,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as Axis?,crossAxisAlignment: freezed == crossAxisAlignment ? _self.crossAxisAlignment : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment?,spacing: freezed == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as HeaderBuilderDef?,expanderBuilder: freezed == expanderBuilder ? _self.expanderBuilder : expanderBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,inputHeaderBuilder: freezed == inputHeaderBuilder ? _self.inputHeaderBuilder : inputHeaderBuilder // ignore: cast_nullable_to_non_nullable
as InputHeaderBuilderDef?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _InputsNodeUiSettings extends InputsNodeUiSettings {
  const _InputsNodeUiSettings({this.flex, this.reverse, this.labelText, this.labelTextWhenChildrenHidden, this.labelMaxLines, this.helperText, this.childrenVisibility, this.showChildrenInitially, @PushDefNullableConverter() this.openChildren, this.direction, this.crossAxisAlignment, this.spacing, @notSerializable this.widgetBuilder, @notSerializable this.headerBuilder, @notSerializable this.expanderBuilder, @notSerializable this.inputHeaderBuilder}): super._();
  factory _InputsNodeUiSettings.fromJson(Map<String, dynamic> json) => _$InputsNodeUiSettingsFromJson(json);

/// This field determines the layout of this node :
/// - -1 : [LayoutMethod.scrollable], the node expands, the children are
///        in a scrollable view.
/// - 0 : [LayoutMethod.shrinkWrap], the children are shrunk
/// - 1 and more : [LayoutMethod.flexible], the node expands, the children
///                share the availible space
///
/// When [childrenVisibility] is [ChildrenVisibility.whenAsked], the layout
/// only applies to the context opened by [openChildren].
/// When it is [ChildrenVisibility.always], if [flex] is different than 0,
/// the parent widget needs to provide a finite height
/// (for example, using [LayoutMethod.flexible]).
///
/// The default value depends on [childrenVisibility] :
/// - [ChildrenVisibility.always] : 0
/// - [ChildrenVisibility.whenAsked] : -1
@override final  int? flex;
/// If [flex] is -1, the children order will be inverted,
/// including the header.
///
/// Defaults to false.
@override final  bool? reverse;
@override final  String? labelText;
@override final  String? labelTextWhenChildrenHidden;
@override final  int? labelMaxLines;
@override final  String? helperText;
/// Default to always.
@override final  ChildrenVisibility? childrenVisibility;
/// Only used when [ChildrenVisibility.whenAsked].
/// If true, when the widget will be rendered,
/// the children's visibility will be asked.
///
/// Default to false.
@override final  bool? showChildrenInitially;
/// Defaults to [Push.page].
/// Serializable if you use on of Push's default methods.
@override@PushDefNullableConverter() final  PushDef? openChildren;
/// Only used when ChildrenVisibility.always.
///
/// Default to Axis.vertical
@override final  Axis? direction;
/// Only used when ChildrenVisibility.always.
///
/// Default to CrossAxisAlignment.stretch
@override final  CrossAxisAlignment? crossAxisAlignment;
/// This spacing will be placed between each [WoFormNode].
@override final  double? spacing;
@override@notSerializable final  InputNodeWidgetBuilderDef? widgetBuilder;
/// Only used when [ChildrenVisibility.always].
@override@notSerializable final  HeaderBuilderDef? headerBuilder;
/// Only used when [ChildrenVisibility.whenAsked].
///
/// Default to [InputsNodeExpander.page].
/// An alternative is [InputsNodeExpander.modal].
@override@notSerializable final  InputNodeWidgetBuilderDef? expanderBuilder;
/// Only used when [ChildrenVisibility.whenAsked].
@override@notSerializable final  InputHeaderBuilderDef? inputHeaderBuilder;

/// Create a copy of InputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputsNodeUiSettingsCopyWith<_InputsNodeUiSettings> get copyWith => __$InputsNodeUiSettingsCopyWithImpl<_InputsNodeUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputsNodeUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputsNodeUiSettings&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.reverse, reverse) || other.reverse == reverse)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.labelTextWhenChildrenHidden, labelTextWhenChildrenHidden) || other.labelTextWhenChildrenHidden == labelTextWhenChildrenHidden)&&(identical(other.labelMaxLines, labelMaxLines) || other.labelMaxLines == labelMaxLines)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.childrenVisibility, childrenVisibility) || other.childrenVisibility == childrenVisibility)&&(identical(other.showChildrenInitially, showChildrenInitially) || other.showChildrenInitially == showChildrenInitially)&&(identical(other.openChildren, openChildren) || other.openChildren == openChildren)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.crossAxisAlignment, crossAxisAlignment) || other.crossAxisAlignment == crossAxisAlignment)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.expanderBuilder, expanderBuilder) || other.expanderBuilder == expanderBuilder)&&(identical(other.inputHeaderBuilder, inputHeaderBuilder) || other.inputHeaderBuilder == inputHeaderBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex,reverse,labelText,labelTextWhenChildrenHidden,labelMaxLines,helperText,childrenVisibility,showChildrenInitially,openChildren,direction,crossAxisAlignment,spacing,widgetBuilder,headerBuilder,expanderBuilder,inputHeaderBuilder);

@override
String toString() {
  return 'InputsNodeUiSettings(flex: $flex, reverse: $reverse, labelText: $labelText, labelTextWhenChildrenHidden: $labelTextWhenChildrenHidden, labelMaxLines: $labelMaxLines, helperText: $helperText, childrenVisibility: $childrenVisibility, showChildrenInitially: $showChildrenInitially, openChildren: $openChildren, direction: $direction, crossAxisAlignment: $crossAxisAlignment, spacing: $spacing, widgetBuilder: $widgetBuilder, headerBuilder: $headerBuilder, expanderBuilder: $expanderBuilder, inputHeaderBuilder: $inputHeaderBuilder)';
}


}

/// @nodoc
abstract mixin class _$InputsNodeUiSettingsCopyWith<$Res> implements $InputsNodeUiSettingsCopyWith<$Res> {
  factory _$InputsNodeUiSettingsCopyWith(_InputsNodeUiSettings value, $Res Function(_InputsNodeUiSettings) _then) = __$InputsNodeUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 int? flex, bool? reverse, String? labelText, String? labelTextWhenChildrenHidden, int? labelMaxLines, String? helperText, ChildrenVisibility? childrenVisibility, bool? showChildrenInitially,@PushDefNullableConverter() PushDef? openChildren, Axis? direction, CrossAxisAlignment? crossAxisAlignment, double? spacing,@notSerializable InputNodeWidgetBuilderDef? widgetBuilder,@notSerializable HeaderBuilderDef? headerBuilder,@notSerializable InputNodeWidgetBuilderDef? expanderBuilder,@notSerializable InputHeaderBuilderDef? inputHeaderBuilder
});




}
/// @nodoc
class __$InputsNodeUiSettingsCopyWithImpl<$Res>
    implements _$InputsNodeUiSettingsCopyWith<$Res> {
  __$InputsNodeUiSettingsCopyWithImpl(this._self, this._then);

  final _InputsNodeUiSettings _self;
  final $Res Function(_InputsNodeUiSettings) _then;

/// Create a copy of InputsNodeUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flex = freezed,Object? reverse = freezed,Object? labelText = freezed,Object? labelTextWhenChildrenHidden = freezed,Object? labelMaxLines = freezed,Object? helperText = freezed,Object? childrenVisibility = freezed,Object? showChildrenInitially = freezed,Object? openChildren = freezed,Object? direction = freezed,Object? crossAxisAlignment = freezed,Object? spacing = freezed,Object? widgetBuilder = freezed,Object? headerBuilder = freezed,Object? expanderBuilder = freezed,Object? inputHeaderBuilder = freezed,}) {
  return _then(_InputsNodeUiSettings(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,reverse: freezed == reverse ? _self.reverse : reverse // ignore: cast_nullable_to_non_nullable
as bool?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,labelTextWhenChildrenHidden: freezed == labelTextWhenChildrenHidden ? _self.labelTextWhenChildrenHidden : labelTextWhenChildrenHidden // ignore: cast_nullable_to_non_nullable
as String?,labelMaxLines: freezed == labelMaxLines ? _self.labelMaxLines : labelMaxLines // ignore: cast_nullable_to_non_nullable
as int?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,childrenVisibility: freezed == childrenVisibility ? _self.childrenVisibility : childrenVisibility // ignore: cast_nullable_to_non_nullable
as ChildrenVisibility?,showChildrenInitially: freezed == showChildrenInitially ? _self.showChildrenInitially : showChildrenInitially // ignore: cast_nullable_to_non_nullable
as bool?,openChildren: freezed == openChildren ? _self.openChildren : openChildren // ignore: cast_nullable_to_non_nullable
as PushDef?,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as Axis?,crossAxisAlignment: freezed == crossAxisAlignment ? _self.crossAxisAlignment : crossAxisAlignment // ignore: cast_nullable_to_non_nullable
as CrossAxisAlignment?,spacing: freezed == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as HeaderBuilderDef?,expanderBuilder: freezed == expanderBuilder ? _self.expanderBuilder : expanderBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,inputHeaderBuilder: freezed == inputHeaderBuilder ? _self.inputHeaderBuilder : inputHeaderBuilder // ignore: cast_nullable_to_non_nullable
as InputHeaderBuilderDef?,
  ));
}


}


/// @nodoc
mixin _$MediaInputUiSettings {

@notSerializable Widget? get addMediaIcon; String? get addMediaText; int? get fieldHeight; BoxFit? get fit;/// For a circle cropping, use MediaService.circleAspectRatio
 double? get cropAspectRatioOrCircle; bool? get cropShowGrid;@notSerializable CanCropDef? get canCrop;/// Use this to overwrite [MediaService.mediaWidgetBuilder].
@notSerializable MediaWidgetBuilderDef? get mediaWidgetBuilder;@notSerializable MediaFieldBuilderDef? get widgetBuilder;
/// Create a copy of MediaInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaInputUiSettingsCopyWith<MediaInputUiSettings> get copyWith => _$MediaInputUiSettingsCopyWithImpl<MediaInputUiSettings>(this as MediaInputUiSettings, _$identity);

  /// Serializes this MediaInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaInputUiSettings&&(identical(other.addMediaIcon, addMediaIcon) || other.addMediaIcon == addMediaIcon)&&(identical(other.addMediaText, addMediaText) || other.addMediaText == addMediaText)&&(identical(other.fieldHeight, fieldHeight) || other.fieldHeight == fieldHeight)&&(identical(other.fit, fit) || other.fit == fit)&&(identical(other.cropAspectRatioOrCircle, cropAspectRatioOrCircle) || other.cropAspectRatioOrCircle == cropAspectRatioOrCircle)&&(identical(other.cropShowGrid, cropShowGrid) || other.cropShowGrid == cropShowGrid)&&(identical(other.canCrop, canCrop) || other.canCrop == canCrop)&&(identical(other.mediaWidgetBuilder, mediaWidgetBuilder) || other.mediaWidgetBuilder == mediaWidgetBuilder)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addMediaIcon,addMediaText,fieldHeight,fit,cropAspectRatioOrCircle,cropShowGrid,canCrop,mediaWidgetBuilder,widgetBuilder);

@override
String toString() {
  return 'MediaInputUiSettings(addMediaIcon: $addMediaIcon, addMediaText: $addMediaText, fieldHeight: $fieldHeight, fit: $fit, cropAspectRatioOrCircle: $cropAspectRatioOrCircle, cropShowGrid: $cropShowGrid, canCrop: $canCrop, mediaWidgetBuilder: $mediaWidgetBuilder, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class $MediaInputUiSettingsCopyWith<$Res>  {
  factory $MediaInputUiSettingsCopyWith(MediaInputUiSettings value, $Res Function(MediaInputUiSettings) _then) = _$MediaInputUiSettingsCopyWithImpl;
@useResult
$Res call({
@notSerializable Widget? addMediaIcon, String? addMediaText, int? fieldHeight, BoxFit? fit, double? cropAspectRatioOrCircle, bool? cropShowGrid,@notSerializable CanCropDef? canCrop,@notSerializable MediaWidgetBuilderDef? mediaWidgetBuilder,@notSerializable MediaFieldBuilderDef? widgetBuilder
});




}
/// @nodoc
class _$MediaInputUiSettingsCopyWithImpl<$Res>
    implements $MediaInputUiSettingsCopyWith<$Res> {
  _$MediaInputUiSettingsCopyWithImpl(this._self, this._then);

  final MediaInputUiSettings _self;
  final $Res Function(MediaInputUiSettings) _then;

/// Create a copy of MediaInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addMediaIcon = freezed,Object? addMediaText = freezed,Object? fieldHeight = freezed,Object? fit = freezed,Object? cropAspectRatioOrCircle = freezed,Object? cropShowGrid = freezed,Object? canCrop = freezed,Object? mediaWidgetBuilder = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_self.copyWith(
addMediaIcon: freezed == addMediaIcon ? _self.addMediaIcon : addMediaIcon // ignore: cast_nullable_to_non_nullable
as Widget?,addMediaText: freezed == addMediaText ? _self.addMediaText : addMediaText // ignore: cast_nullable_to_non_nullable
as String?,fieldHeight: freezed == fieldHeight ? _self.fieldHeight : fieldHeight // ignore: cast_nullable_to_non_nullable
as int?,fit: freezed == fit ? _self.fit : fit // ignore: cast_nullable_to_non_nullable
as BoxFit?,cropAspectRatioOrCircle: freezed == cropAspectRatioOrCircle ? _self.cropAspectRatioOrCircle : cropAspectRatioOrCircle // ignore: cast_nullable_to_non_nullable
as double?,cropShowGrid: freezed == cropShowGrid ? _self.cropShowGrid : cropShowGrid // ignore: cast_nullable_to_non_nullable
as bool?,canCrop: freezed == canCrop ? _self.canCrop : canCrop // ignore: cast_nullable_to_non_nullable
as CanCropDef?,mediaWidgetBuilder: freezed == mediaWidgetBuilder ? _self.mediaWidgetBuilder : mediaWidgetBuilder // ignore: cast_nullable_to_non_nullable
as MediaWidgetBuilderDef?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as MediaFieldBuilderDef?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _MediaInputUiSettings extends MediaInputUiSettings {
  const _MediaInputUiSettings({@notSerializable this.addMediaIcon, this.addMediaText, this.fieldHeight, this.fit, this.cropAspectRatioOrCircle, this.cropShowGrid, @notSerializable this.canCrop, @notSerializable this.mediaWidgetBuilder, @notSerializable this.widgetBuilder}): super._();
  factory _MediaInputUiSettings.fromJson(Map<String, dynamic> json) => _$MediaInputUiSettingsFromJson(json);

@override@notSerializable final  Widget? addMediaIcon;
@override final  String? addMediaText;
@override final  int? fieldHeight;
@override final  BoxFit? fit;
/// For a circle cropping, use MediaService.circleAspectRatio
@override final  double? cropAspectRatioOrCircle;
@override final  bool? cropShowGrid;
@override@notSerializable final  CanCropDef? canCrop;
/// Use this to overwrite [MediaService.mediaWidgetBuilder].
@override@notSerializable final  MediaWidgetBuilderDef? mediaWidgetBuilder;
@override@notSerializable final  MediaFieldBuilderDef? widgetBuilder;

/// Create a copy of MediaInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaInputUiSettingsCopyWith<_MediaInputUiSettings> get copyWith => __$MediaInputUiSettingsCopyWithImpl<_MediaInputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaInputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaInputUiSettings&&(identical(other.addMediaIcon, addMediaIcon) || other.addMediaIcon == addMediaIcon)&&(identical(other.addMediaText, addMediaText) || other.addMediaText == addMediaText)&&(identical(other.fieldHeight, fieldHeight) || other.fieldHeight == fieldHeight)&&(identical(other.fit, fit) || other.fit == fit)&&(identical(other.cropAspectRatioOrCircle, cropAspectRatioOrCircle) || other.cropAspectRatioOrCircle == cropAspectRatioOrCircle)&&(identical(other.cropShowGrid, cropShowGrid) || other.cropShowGrid == cropShowGrid)&&(identical(other.canCrop, canCrop) || other.canCrop == canCrop)&&(identical(other.mediaWidgetBuilder, mediaWidgetBuilder) || other.mediaWidgetBuilder == mediaWidgetBuilder)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addMediaIcon,addMediaText,fieldHeight,fit,cropAspectRatioOrCircle,cropShowGrid,canCrop,mediaWidgetBuilder,widgetBuilder);

@override
String toString() {
  return 'MediaInputUiSettings(addMediaIcon: $addMediaIcon, addMediaText: $addMediaText, fieldHeight: $fieldHeight, fit: $fit, cropAspectRatioOrCircle: $cropAspectRatioOrCircle, cropShowGrid: $cropShowGrid, canCrop: $canCrop, mediaWidgetBuilder: $mediaWidgetBuilder, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class _$MediaInputUiSettingsCopyWith<$Res> implements $MediaInputUiSettingsCopyWith<$Res> {
  factory _$MediaInputUiSettingsCopyWith(_MediaInputUiSettings value, $Res Function(_MediaInputUiSettings) _then) = __$MediaInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
@notSerializable Widget? addMediaIcon, String? addMediaText, int? fieldHeight, BoxFit? fit, double? cropAspectRatioOrCircle, bool? cropShowGrid,@notSerializable CanCropDef? canCrop,@notSerializable MediaWidgetBuilderDef? mediaWidgetBuilder,@notSerializable MediaFieldBuilderDef? widgetBuilder
});




}
/// @nodoc
class __$MediaInputUiSettingsCopyWithImpl<$Res>
    implements _$MediaInputUiSettingsCopyWith<$Res> {
  __$MediaInputUiSettingsCopyWithImpl(this._self, this._then);

  final _MediaInputUiSettings _self;
  final $Res Function(_MediaInputUiSettings) _then;

/// Create a copy of MediaInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addMediaIcon = freezed,Object? addMediaText = freezed,Object? fieldHeight = freezed,Object? fit = freezed,Object? cropAspectRatioOrCircle = freezed,Object? cropShowGrid = freezed,Object? canCrop = freezed,Object? mediaWidgetBuilder = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_MediaInputUiSettings(
addMediaIcon: freezed == addMediaIcon ? _self.addMediaIcon : addMediaIcon // ignore: cast_nullable_to_non_nullable
as Widget?,addMediaText: freezed == addMediaText ? _self.addMediaText : addMediaText // ignore: cast_nullable_to_non_nullable
as String?,fieldHeight: freezed == fieldHeight ? _self.fieldHeight : fieldHeight // ignore: cast_nullable_to_non_nullable
as int?,fit: freezed == fit ? _self.fit : fit // ignore: cast_nullable_to_non_nullable
as BoxFit?,cropAspectRatioOrCircle: freezed == cropAspectRatioOrCircle ? _self.cropAspectRatioOrCircle : cropAspectRatioOrCircle // ignore: cast_nullable_to_non_nullable
as double?,cropShowGrid: freezed == cropShowGrid ? _self.cropShowGrid : cropShowGrid // ignore: cast_nullable_to_non_nullable
as bool?,canCrop: freezed == canCrop ? _self.canCrop : canCrop // ignore: cast_nullable_to_non_nullable
as CanCropDef?,mediaWidgetBuilder: freezed == mediaWidgetBuilder ? _self.mediaWidgetBuilder : mediaWidgetBuilder // ignore: cast_nullable_to_non_nullable
as MediaWidgetBuilderDef?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as MediaFieldBuilderDef?,
  ));
}


}


/// @nodoc
mixin _$NumInputUiSettings {

/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
///
/// Only with [NumInputStyle.slider].
 int? get headerFlex; String? get labelText; String? get helperText; NumInputStyle? get style;@notSerializable Widget? get unit;@notSerializable NumFieldBuilderDef? get widgetBuilder;
/// Create a copy of NumInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumInputUiSettingsCopyWith<NumInputUiSettings> get copyWith => _$NumInputUiSettingsCopyWithImpl<NumInputUiSettings>(this as NumInputUiSettings, _$identity);

  /// Serializes this NumInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumInputUiSettings&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.style, style) || other.style == style)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,headerFlex,labelText,helperText,style,unit,widgetBuilder);

@override
String toString() {
  return 'NumInputUiSettings(headerFlex: $headerFlex, labelText: $labelText, helperText: $helperText, style: $style, unit: $unit, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class $NumInputUiSettingsCopyWith<$Res>  {
  factory $NumInputUiSettingsCopyWith(NumInputUiSettings value, $Res Function(NumInputUiSettings) _then) = _$NumInputUiSettingsCopyWithImpl;
@useResult
$Res call({
 int? headerFlex, String? labelText, String? helperText, NumInputStyle? style,@notSerializable Widget? unit,@notSerializable NumFieldBuilderDef? widgetBuilder
});




}
/// @nodoc
class _$NumInputUiSettingsCopyWithImpl<$Res>
    implements $NumInputUiSettingsCopyWith<$Res> {
  _$NumInputUiSettingsCopyWithImpl(this._self, this._then);

  final NumInputUiSettings _self;
  final $Res Function(NumInputUiSettings) _then;

/// Create a copy of NumInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headerFlex = freezed,Object? labelText = freezed,Object? helperText = freezed,Object? style = freezed,Object? unit = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_self.copyWith(
headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as NumInputStyle?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Widget?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as NumFieldBuilderDef?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _NumInputUiSettings extends NumInputUiSettings {
  const _NumInputUiSettings({this.headerFlex, this.labelText, this.helperText, this.style, @notSerializable this.unit, @notSerializable this.widgetBuilder}): super._();
  factory _NumInputUiSettings.fromJson(Map<String, dynamic> json) => _$NumInputUiSettingsFromJson(json);

/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
///
/// Only with [NumInputStyle.slider].
@override final  int? headerFlex;
@override final  String? labelText;
@override final  String? helperText;
@override final  NumInputStyle? style;
@override@notSerializable final  Widget? unit;
@override@notSerializable final  NumFieldBuilderDef? widgetBuilder;

/// Create a copy of NumInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumInputUiSettingsCopyWith<_NumInputUiSettings> get copyWith => __$NumInputUiSettingsCopyWithImpl<_NumInputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumInputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumInputUiSettings&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.style, style) || other.style == style)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,headerFlex,labelText,helperText,style,unit,widgetBuilder);

@override
String toString() {
  return 'NumInputUiSettings(headerFlex: $headerFlex, labelText: $labelText, helperText: $helperText, style: $style, unit: $unit, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class _$NumInputUiSettingsCopyWith<$Res> implements $NumInputUiSettingsCopyWith<$Res> {
  factory _$NumInputUiSettingsCopyWith(_NumInputUiSettings value, $Res Function(_NumInputUiSettings) _then) = __$NumInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 int? headerFlex, String? labelText, String? helperText, NumInputStyle? style,@notSerializable Widget? unit,@notSerializable NumFieldBuilderDef? widgetBuilder
});




}
/// @nodoc
class __$NumInputUiSettingsCopyWithImpl<$Res>
    implements _$NumInputUiSettingsCopyWith<$Res> {
  __$NumInputUiSettingsCopyWithImpl(this._self, this._then);

  final _NumInputUiSettings _self;
  final $Res Function(_NumInputUiSettings) _then;

/// Create a copy of NumInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? headerFlex = freezed,Object? labelText = freezed,Object? helperText = freezed,Object? style = freezed,Object? unit = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_NumInputUiSettings(
headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as NumInputStyle?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as Widget?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as NumFieldBuilderDef?,
  ));
}


}


/// @nodoc
mixin _$SelectInputUiSettings<T> {

// What you can do :
// ? a field with always visible options
//   ? whole field shrinks to its minimal size
//   ? whole field expands and the options are in a scrollable view
//     - the size of the field is determined by the parent and [flex]
//     - the parent must provide a finite height
// ? a field with options shown in a new context (menu, modal, page...)
//   ? options shrink to their minimal size
//   ? options scrollable
//     - allows draggable modal
//
/// This field determines the layout of this node :
/// - 0 : the [SelectInput.availibleValues] shrink to their minimal size
/// - other : the [SelectInput.availibleValues] are in a scrollable view
///
/// When [childrenVisibility] is [ChildrenVisibility.whenAsked], the layout
/// only applies to the context opened by [openChildren].
/// When it is [ChildrenVisibility.always], if [flex] is different than 0,
/// the parent widget needs to provide a finite height
/// (for example, using [LayoutMethod.flexible]).
///
/// Defaults to 0.
 int? get flex; String? get labelText; String? get helperText; String? get hintText; ChildrenVisibility? get childrenVisibility;/// Only used when [SelectInput.maxCount] is 1
/// and childrenVisibility is [ChildrenVisibility.whenAsked].
///
/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
 int? get headerFlex;@notSerializable Widget? get prefixIcon;@notSerializable ValueBuilderDef<T>? get valueBuilder;@notSerializable ValueBuilderDef<T>? get selectedBuilder;@notSerializable Widget? Function(T value)? get helpValueBuilder;/// Whether the search field should be autofocused when it appears or not.
///
/// Defaults to true.
 bool? get searchAutofocus;/// Only used when [SelectInput.searchSettings] is set.
@notSerializable SearchScreenDef<T>? get searchScreenBuilder;/// Only used when [ChildrenVisibility.whenAsked].
///
/// Defaults to [Push.menu] if [SelectInput.searchSettings] is null, else
/// [Push.modalBottomSheet] with initialBottomSheetSize at 0.9.
/// Serializable if you use on of Push's default methods.
@PushDefNullableConverter() PushDef? get openChildren;@notSerializable InputHeaderBuilderDef? get headerBuilder;@notSerializable ScoreWidgetBuilderDef? get scoreBuilder;/// Only used when childrenVisibility is always.
@notSerializable SelectFieldTileBuilderDef<T>? get tileBuilder;@notSerializable SelectFieldBuilderDef<T>? get widgetBuilder;
/// Create a copy of SelectInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectInputUiSettingsCopyWith<T, SelectInputUiSettings<T>> get copyWith => _$SelectInputUiSettingsCopyWithImpl<T, SelectInputUiSettings<T>>(this as SelectInputUiSettings<T>, _$identity);

  /// Serializes this SelectInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectInputUiSettings<T>&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.childrenVisibility, childrenVisibility) || other.childrenVisibility == childrenVisibility)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon)&&(identical(other.valueBuilder, valueBuilder) || other.valueBuilder == valueBuilder)&&(identical(other.selectedBuilder, selectedBuilder) || other.selectedBuilder == selectedBuilder)&&(identical(other.helpValueBuilder, helpValueBuilder) || other.helpValueBuilder == helpValueBuilder)&&(identical(other.searchAutofocus, searchAutofocus) || other.searchAutofocus == searchAutofocus)&&(identical(other.searchScreenBuilder, searchScreenBuilder) || other.searchScreenBuilder == searchScreenBuilder)&&(identical(other.openChildren, openChildren) || other.openChildren == openChildren)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.scoreBuilder, scoreBuilder) || other.scoreBuilder == scoreBuilder)&&(identical(other.tileBuilder, tileBuilder) || other.tileBuilder == tileBuilder)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex,labelText,helperText,hintText,childrenVisibility,headerFlex,prefixIcon,valueBuilder,selectedBuilder,helpValueBuilder,searchAutofocus,searchScreenBuilder,openChildren,headerBuilder,scoreBuilder,tileBuilder,widgetBuilder);

@override
String toString() {
  return 'SelectInputUiSettings<$T>(flex: $flex, labelText: $labelText, helperText: $helperText, hintText: $hintText, childrenVisibility: $childrenVisibility, headerFlex: $headerFlex, prefixIcon: $prefixIcon, valueBuilder: $valueBuilder, selectedBuilder: $selectedBuilder, helpValueBuilder: $helpValueBuilder, searchAutofocus: $searchAutofocus, searchScreenBuilder: $searchScreenBuilder, openChildren: $openChildren, headerBuilder: $headerBuilder, scoreBuilder: $scoreBuilder, tileBuilder: $tileBuilder, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class $SelectInputUiSettingsCopyWith<T,$Res>  {
  factory $SelectInputUiSettingsCopyWith(SelectInputUiSettings<T> value, $Res Function(SelectInputUiSettings<T>) _then) = _$SelectInputUiSettingsCopyWithImpl;
@useResult
$Res call({
 int? flex, String? labelText, String? helperText, String? hintText, ChildrenVisibility? childrenVisibility, int? headerFlex,@notSerializable Widget? prefixIcon,@notSerializable ValueBuilderDef<T>? valueBuilder,@notSerializable ValueBuilderDef<T>? selectedBuilder,@notSerializable Widget? Function(T value)? helpValueBuilder, bool? searchAutofocus,@notSerializable SearchScreenDef<T>? searchScreenBuilder,@PushDefNullableConverter() PushDef? openChildren,@notSerializable InputHeaderBuilderDef? headerBuilder,@notSerializable ScoreWidgetBuilderDef? scoreBuilder,@notSerializable SelectFieldTileBuilderDef<T>? tileBuilder,@notSerializable SelectFieldBuilderDef<T>? widgetBuilder
});




}
/// @nodoc
class _$SelectInputUiSettingsCopyWithImpl<T,$Res>
    implements $SelectInputUiSettingsCopyWith<T, $Res> {
  _$SelectInputUiSettingsCopyWithImpl(this._self, this._then);

  final SelectInputUiSettings<T> _self;
  final $Res Function(SelectInputUiSettings<T>) _then;

/// Create a copy of SelectInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flex = freezed,Object? labelText = freezed,Object? helperText = freezed,Object? hintText = freezed,Object? childrenVisibility = freezed,Object? headerFlex = freezed,Object? prefixIcon = freezed,Object? valueBuilder = freezed,Object? selectedBuilder = freezed,Object? helpValueBuilder = freezed,Object? searchAutofocus = freezed,Object? searchScreenBuilder = freezed,Object? openChildren = freezed,Object? headerBuilder = freezed,Object? scoreBuilder = freezed,Object? tileBuilder = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_self.copyWith(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,childrenVisibility: freezed == childrenVisibility ? _self.childrenVisibility : childrenVisibility // ignore: cast_nullable_to_non_nullable
as ChildrenVisibility?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,valueBuilder: freezed == valueBuilder ? _self.valueBuilder : valueBuilder // ignore: cast_nullable_to_non_nullable
as ValueBuilderDef<T>?,selectedBuilder: freezed == selectedBuilder ? _self.selectedBuilder : selectedBuilder // ignore: cast_nullable_to_non_nullable
as ValueBuilderDef<T>?,helpValueBuilder: freezed == helpValueBuilder ? _self.helpValueBuilder : helpValueBuilder // ignore: cast_nullable_to_non_nullable
as Widget? Function(T value)?,searchAutofocus: freezed == searchAutofocus ? _self.searchAutofocus : searchAutofocus // ignore: cast_nullable_to_non_nullable
as bool?,searchScreenBuilder: freezed == searchScreenBuilder ? _self.searchScreenBuilder : searchScreenBuilder // ignore: cast_nullable_to_non_nullable
as SearchScreenDef<T>?,openChildren: freezed == openChildren ? _self.openChildren : openChildren // ignore: cast_nullable_to_non_nullable
as PushDef?,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as InputHeaderBuilderDef?,scoreBuilder: freezed == scoreBuilder ? _self.scoreBuilder : scoreBuilder // ignore: cast_nullable_to_non_nullable
as ScoreWidgetBuilderDef?,tileBuilder: freezed == tileBuilder ? _self.tileBuilder : tileBuilder // ignore: cast_nullable_to_non_nullable
as SelectFieldTileBuilderDef<T>?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as SelectFieldBuilderDef<T>?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _SelectInputUiSettings<T> extends SelectInputUiSettings<T> {
  const _SelectInputUiSettings({this.flex, this.labelText, this.helperText, this.hintText, this.childrenVisibility, this.headerFlex, @notSerializable this.prefixIcon, @notSerializable this.valueBuilder, @notSerializable this.selectedBuilder, @notSerializable this.helpValueBuilder, this.searchAutofocus, @notSerializable this.searchScreenBuilder, @PushDefNullableConverter() this.openChildren, @notSerializable this.headerBuilder, @notSerializable this.scoreBuilder, @notSerializable this.tileBuilder, @notSerializable this.widgetBuilder}): super._();
  factory _SelectInputUiSettings.fromJson(Map<String, dynamic> json) => _$SelectInputUiSettingsFromJson(json);

// What you can do :
// ? a field with always visible options
//   ? whole field shrinks to its minimal size
//   ? whole field expands and the options are in a scrollable view
//     - the size of the field is determined by the parent and [flex]
//     - the parent must provide a finite height
// ? a field with options shown in a new context (menu, modal, page...)
//   ? options shrink to their minimal size
//   ? options scrollable
//     - allows draggable modal
//
/// This field determines the layout of this node :
/// - 0 : the [SelectInput.availibleValues] shrink to their minimal size
/// - other : the [SelectInput.availibleValues] are in a scrollable view
///
/// When [childrenVisibility] is [ChildrenVisibility.whenAsked], the layout
/// only applies to the context opened by [openChildren].
/// When it is [ChildrenVisibility.always], if [flex] is different than 0,
/// the parent widget needs to provide a finite height
/// (for example, using [LayoutMethod.flexible]).
///
/// Defaults to 0.
@override final  int? flex;
@override final  String? labelText;
@override final  String? helperText;
@override final  String? hintText;
@override final  ChildrenVisibility? childrenVisibility;
/// Only used when [SelectInput.maxCount] is 1
/// and childrenVisibility is [ChildrenVisibility.whenAsked].
///
/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
@override final  int? headerFlex;
@override@notSerializable final  Widget? prefixIcon;
@override@notSerializable final  ValueBuilderDef<T>? valueBuilder;
@override@notSerializable final  ValueBuilderDef<T>? selectedBuilder;
@override@notSerializable final  Widget? Function(T value)? helpValueBuilder;
/// Whether the search field should be autofocused when it appears or not.
///
/// Defaults to true.
@override final  bool? searchAutofocus;
/// Only used when [SelectInput.searchSettings] is set.
@override@notSerializable final  SearchScreenDef<T>? searchScreenBuilder;
/// Only used when [ChildrenVisibility.whenAsked].
///
/// Defaults to [Push.menu] if [SelectInput.searchSettings] is null, else
/// [Push.modalBottomSheet] with initialBottomSheetSize at 0.9.
/// Serializable if you use on of Push's default methods.
@override@PushDefNullableConverter() final  PushDef? openChildren;
@override@notSerializable final  InputHeaderBuilderDef? headerBuilder;
@override@notSerializable final  ScoreWidgetBuilderDef? scoreBuilder;
/// Only used when childrenVisibility is always.
@override@notSerializable final  SelectFieldTileBuilderDef<T>? tileBuilder;
@override@notSerializable final  SelectFieldBuilderDef<T>? widgetBuilder;

/// Create a copy of SelectInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectInputUiSettingsCopyWith<T, _SelectInputUiSettings<T>> get copyWith => __$SelectInputUiSettingsCopyWithImpl<T, _SelectInputUiSettings<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SelectInputUiSettingsToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectInputUiSettings<T>&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.childrenVisibility, childrenVisibility) || other.childrenVisibility == childrenVisibility)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon)&&(identical(other.valueBuilder, valueBuilder) || other.valueBuilder == valueBuilder)&&(identical(other.selectedBuilder, selectedBuilder) || other.selectedBuilder == selectedBuilder)&&(identical(other.helpValueBuilder, helpValueBuilder) || other.helpValueBuilder == helpValueBuilder)&&(identical(other.searchAutofocus, searchAutofocus) || other.searchAutofocus == searchAutofocus)&&(identical(other.searchScreenBuilder, searchScreenBuilder) || other.searchScreenBuilder == searchScreenBuilder)&&(identical(other.openChildren, openChildren) || other.openChildren == openChildren)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.scoreBuilder, scoreBuilder) || other.scoreBuilder == scoreBuilder)&&(identical(other.tileBuilder, tileBuilder) || other.tileBuilder == tileBuilder)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flex,labelText,helperText,hintText,childrenVisibility,headerFlex,prefixIcon,valueBuilder,selectedBuilder,helpValueBuilder,searchAutofocus,searchScreenBuilder,openChildren,headerBuilder,scoreBuilder,tileBuilder,widgetBuilder);

@override
String toString() {
  return 'SelectInputUiSettings<$T>(flex: $flex, labelText: $labelText, helperText: $helperText, hintText: $hintText, childrenVisibility: $childrenVisibility, headerFlex: $headerFlex, prefixIcon: $prefixIcon, valueBuilder: $valueBuilder, selectedBuilder: $selectedBuilder, helpValueBuilder: $helpValueBuilder, searchAutofocus: $searchAutofocus, searchScreenBuilder: $searchScreenBuilder, openChildren: $openChildren, headerBuilder: $headerBuilder, scoreBuilder: $scoreBuilder, tileBuilder: $tileBuilder, widgetBuilder: $widgetBuilder)';
}


}

/// @nodoc
abstract mixin class _$SelectInputUiSettingsCopyWith<T,$Res> implements $SelectInputUiSettingsCopyWith<T, $Res> {
  factory _$SelectInputUiSettingsCopyWith(_SelectInputUiSettings<T> value, $Res Function(_SelectInputUiSettings<T>) _then) = __$SelectInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 int? flex, String? labelText, String? helperText, String? hintText, ChildrenVisibility? childrenVisibility, int? headerFlex,@notSerializable Widget? prefixIcon,@notSerializable ValueBuilderDef<T>? valueBuilder,@notSerializable ValueBuilderDef<T>? selectedBuilder,@notSerializable Widget? Function(T value)? helpValueBuilder, bool? searchAutofocus,@notSerializable SearchScreenDef<T>? searchScreenBuilder,@PushDefNullableConverter() PushDef? openChildren,@notSerializable InputHeaderBuilderDef? headerBuilder,@notSerializable ScoreWidgetBuilderDef? scoreBuilder,@notSerializable SelectFieldTileBuilderDef<T>? tileBuilder,@notSerializable SelectFieldBuilderDef<T>? widgetBuilder
});




}
/// @nodoc
class __$SelectInputUiSettingsCopyWithImpl<T,$Res>
    implements _$SelectInputUiSettingsCopyWith<T, $Res> {
  __$SelectInputUiSettingsCopyWithImpl(this._self, this._then);

  final _SelectInputUiSettings<T> _self;
  final $Res Function(_SelectInputUiSettings<T>) _then;

/// Create a copy of SelectInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flex = freezed,Object? labelText = freezed,Object? helperText = freezed,Object? hintText = freezed,Object? childrenVisibility = freezed,Object? headerFlex = freezed,Object? prefixIcon = freezed,Object? valueBuilder = freezed,Object? selectedBuilder = freezed,Object? helpValueBuilder = freezed,Object? searchAutofocus = freezed,Object? searchScreenBuilder = freezed,Object? openChildren = freezed,Object? headerBuilder = freezed,Object? scoreBuilder = freezed,Object? tileBuilder = freezed,Object? widgetBuilder = freezed,}) {
  return _then(_SelectInputUiSettings<T>(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,childrenVisibility: freezed == childrenVisibility ? _self.childrenVisibility : childrenVisibility // ignore: cast_nullable_to_non_nullable
as ChildrenVisibility?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,valueBuilder: freezed == valueBuilder ? _self.valueBuilder : valueBuilder // ignore: cast_nullable_to_non_nullable
as ValueBuilderDef<T>?,selectedBuilder: freezed == selectedBuilder ? _self.selectedBuilder : selectedBuilder // ignore: cast_nullable_to_non_nullable
as ValueBuilderDef<T>?,helpValueBuilder: freezed == helpValueBuilder ? _self.helpValueBuilder : helpValueBuilder // ignore: cast_nullable_to_non_nullable
as Widget? Function(T value)?,searchAutofocus: freezed == searchAutofocus ? _self.searchAutofocus : searchAutofocus // ignore: cast_nullable_to_non_nullable
as bool?,searchScreenBuilder: freezed == searchScreenBuilder ? _self.searchScreenBuilder : searchScreenBuilder // ignore: cast_nullable_to_non_nullable
as SearchScreenDef<T>?,openChildren: freezed == openChildren ? _self.openChildren : openChildren // ignore: cast_nullable_to_non_nullable
as PushDef?,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as InputHeaderBuilderDef?,scoreBuilder: freezed == scoreBuilder ? _self.scoreBuilder : scoreBuilder // ignore: cast_nullable_to_non_nullable
as ScoreWidgetBuilderDef?,tileBuilder: freezed == tileBuilder ? _self.tileBuilder : tileBuilder // ignore: cast_nullable_to_non_nullable
as SelectFieldTileBuilderDef<T>?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as SelectFieldBuilderDef<T>?,
  ));
}


}


/// @nodoc
mixin _$StringInputUiSettings {

/// Requires [WoFormUiSettings.layout] at [LayoutMethod.flexible].
 int? get flex;/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
///
/// Only used when [labelLocation] is [StringFieldLocation.outside].
 int? get headerFlex; String? get labelText;/// Default to StringFieldLocation.inside
 StringFieldLocation? get labelLocation; String? get hintText; String? get helperText;/// Defaults to 1. If you want to set it to null, enter 0.
 int? get helperMaxLines;@notSerializable Widget? get helper;/// Default to StringFieldLocation.inside
 StringFieldLocation? get helperLocation;@notSerializable Widget? get prefixIcon;/// Default to StringFieldLocation.outside
 StringFieldLocation? get prefixIconLocation;/// Default to StringFieldLocation.inside
 StringFieldLocation? get errorLocation; StringFieldAction? get action;/// By default, this is determined by [textInputAction]:
///
/// - **`false`** if the action is navigational or internal
/// (`.next`, `.previous`, `.continueAction`, or `.newline`).
/// - **`true`** for any other action.
 bool? get submitFormOnFieldSubmitted;@TextInputTypeConverter() TextInputType? get keyboardType; bool? get obscureText; bool? get autocorrect; List<String>? get autofillHints;/// If [WoFormAutofocus.true], or [WoFormAutofocus.ifEmpty] and the initial
/// value is empty, the field will request focus at its creation.
///
/// Defaults to WoFormAutofocus.false
 WoFormAutofocus? get autofocus; TextInputAction? get textInputAction;/// Defaults to TextCapitalization.none.
 TextCapitalization? get textCapitalization;/// Defaults to 1. If you want to set it to null, enter 0.
 int? get maxLines; String? get invalidRegexMessage;// If true, InputDecoration.collapsed will be used.
 bool? get collapsed;@EdgeInsetsNullableConverter() EdgeInsets? get padding;@notSerializable TextStyle? get style;@notSerializable StringFieldBuilderDef? get widgetBuilder;@notSerializable ErrorBuilderDef? get errorBuilder;
/// Create a copy of StringInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StringInputUiSettingsCopyWith<StringInputUiSettings> get copyWith => _$StringInputUiSettingsCopyWithImpl<StringInputUiSettings>(this as StringInputUiSettings, _$identity);

  /// Serializes this StringInputUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringInputUiSettings&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.labelLocation, labelLocation) || other.labelLocation == labelLocation)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.helperMaxLines, helperMaxLines) || other.helperMaxLines == helperMaxLines)&&(identical(other.helper, helper) || other.helper == helper)&&(identical(other.helperLocation, helperLocation) || other.helperLocation == helperLocation)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon)&&(identical(other.prefixIconLocation, prefixIconLocation) || other.prefixIconLocation == prefixIconLocation)&&(identical(other.errorLocation, errorLocation) || other.errorLocation == errorLocation)&&(identical(other.action, action) || other.action == action)&&(identical(other.submitFormOnFieldSubmitted, submitFormOnFieldSubmitted) || other.submitFormOnFieldSubmitted == submitFormOnFieldSubmitted)&&(identical(other.keyboardType, keyboardType) || other.keyboardType == keyboardType)&&(identical(other.obscureText, obscureText) || other.obscureText == obscureText)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&const DeepCollectionEquality().equals(other.autofillHints, autofillHints)&&(identical(other.autofocus, autofocus) || other.autofocus == autofocus)&&(identical(other.textInputAction, textInputAction) || other.textInputAction == textInputAction)&&(identical(other.textCapitalization, textCapitalization) || other.textCapitalization == textCapitalization)&&(identical(other.maxLines, maxLines) || other.maxLines == maxLines)&&(identical(other.invalidRegexMessage, invalidRegexMessage) || other.invalidRegexMessage == invalidRegexMessage)&&(identical(other.collapsed, collapsed) || other.collapsed == collapsed)&&(identical(other.padding, padding) || other.padding == padding)&&(identical(other.style, style) || other.style == style)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder)&&(identical(other.errorBuilder, errorBuilder) || other.errorBuilder == errorBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,flex,headerFlex,labelText,labelLocation,hintText,helperText,helperMaxLines,helper,helperLocation,prefixIcon,prefixIconLocation,errorLocation,action,submitFormOnFieldSubmitted,keyboardType,obscureText,autocorrect,const DeepCollectionEquality().hash(autofillHints),autofocus,textInputAction,textCapitalization,maxLines,invalidRegexMessage,collapsed,padding,style,widgetBuilder,errorBuilder]);

@override
String toString() {
  return 'StringInputUiSettings(flex: $flex, headerFlex: $headerFlex, labelText: $labelText, labelLocation: $labelLocation, hintText: $hintText, helperText: $helperText, helperMaxLines: $helperMaxLines, helper: $helper, helperLocation: $helperLocation, prefixIcon: $prefixIcon, prefixIconLocation: $prefixIconLocation, errorLocation: $errorLocation, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, invalidRegexMessage: $invalidRegexMessage, collapsed: $collapsed, padding: $padding, style: $style, widgetBuilder: $widgetBuilder, errorBuilder: $errorBuilder)';
}


}

/// @nodoc
abstract mixin class $StringInputUiSettingsCopyWith<$Res>  {
  factory $StringInputUiSettingsCopyWith(StringInputUiSettings value, $Res Function(StringInputUiSettings) _then) = _$StringInputUiSettingsCopyWithImpl;
@useResult
$Res call({
 int? flex, int? headerFlex, String? labelText, StringFieldLocation? labelLocation, String? hintText, String? helperText, int? helperMaxLines,@notSerializable Widget? helper, StringFieldLocation? helperLocation,@notSerializable Widget? prefixIcon, StringFieldLocation? prefixIconLocation, StringFieldLocation? errorLocation, StringFieldAction? action, bool? submitFormOnFieldSubmitted,@TextInputTypeConverter() TextInputType? keyboardType, bool? obscureText, bool? autocorrect, List<String>? autofillHints, WoFormAutofocus? autofocus, TextInputAction? textInputAction, TextCapitalization? textCapitalization, int? maxLines, String? invalidRegexMessage, bool? collapsed,@EdgeInsetsNullableConverter() EdgeInsets? padding,@notSerializable TextStyle? style,@notSerializable StringFieldBuilderDef? widgetBuilder,@notSerializable ErrorBuilderDef? errorBuilder
});




}
/// @nodoc
class _$StringInputUiSettingsCopyWithImpl<$Res>
    implements $StringInputUiSettingsCopyWith<$Res> {
  _$StringInputUiSettingsCopyWithImpl(this._self, this._then);

  final StringInputUiSettings _self;
  final $Res Function(StringInputUiSettings) _then;

/// Create a copy of StringInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flex = freezed,Object? headerFlex = freezed,Object? labelText = freezed,Object? labelLocation = freezed,Object? hintText = freezed,Object? helperText = freezed,Object? helperMaxLines = freezed,Object? helper = freezed,Object? helperLocation = freezed,Object? prefixIcon = freezed,Object? prefixIconLocation = freezed,Object? errorLocation = freezed,Object? action = freezed,Object? submitFormOnFieldSubmitted = freezed,Object? keyboardType = freezed,Object? obscureText = freezed,Object? autocorrect = freezed,Object? autofillHints = freezed,Object? autofocus = freezed,Object? textInputAction = freezed,Object? textCapitalization = freezed,Object? maxLines = freezed,Object? invalidRegexMessage = freezed,Object? collapsed = freezed,Object? padding = freezed,Object? style = freezed,Object? widgetBuilder = freezed,Object? errorBuilder = freezed,}) {
  return _then(_self.copyWith(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,labelLocation: freezed == labelLocation ? _self.labelLocation : labelLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,helperMaxLines: freezed == helperMaxLines ? _self.helperMaxLines : helperMaxLines // ignore: cast_nullable_to_non_nullable
as int?,helper: freezed == helper ? _self.helper : helper // ignore: cast_nullable_to_non_nullable
as Widget?,helperLocation: freezed == helperLocation ? _self.helperLocation : helperLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,prefixIconLocation: freezed == prefixIconLocation ? _self.prefixIconLocation : prefixIconLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,errorLocation: freezed == errorLocation ? _self.errorLocation : errorLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StringFieldAction?,submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted ? _self.submitFormOnFieldSubmitted : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
as bool?,keyboardType: freezed == keyboardType ? _self.keyboardType : keyboardType // ignore: cast_nullable_to_non_nullable
as TextInputType?,obscureText: freezed == obscureText ? _self.obscureText : obscureText // ignore: cast_nullable_to_non_nullable
as bool?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,autofillHints: freezed == autofillHints ? _self.autofillHints : autofillHints // ignore: cast_nullable_to_non_nullable
as List<String>?,autofocus: freezed == autofocus ? _self.autofocus : autofocus // ignore: cast_nullable_to_non_nullable
as WoFormAutofocus?,textInputAction: freezed == textInputAction ? _self.textInputAction : textInputAction // ignore: cast_nullable_to_non_nullable
as TextInputAction?,textCapitalization: freezed == textCapitalization ? _self.textCapitalization : textCapitalization // ignore: cast_nullable_to_non_nullable
as TextCapitalization?,maxLines: freezed == maxLines ? _self.maxLines : maxLines // ignore: cast_nullable_to_non_nullable
as int?,invalidRegexMessage: freezed == invalidRegexMessage ? _self.invalidRegexMessage : invalidRegexMessage // ignore: cast_nullable_to_non_nullable
as String?,collapsed: freezed == collapsed ? _self.collapsed : collapsed // ignore: cast_nullable_to_non_nullable
as bool?,padding: freezed == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as EdgeInsets?,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as TextStyle?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as StringFieldBuilderDef?,errorBuilder: freezed == errorBuilder ? _self.errorBuilder : errorBuilder // ignore: cast_nullable_to_non_nullable
as ErrorBuilderDef?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _StringInputUiSettings extends StringInputUiSettings {
  const _StringInputUiSettings({this.flex, this.headerFlex, this.labelText, this.labelLocation, this.hintText, this.helperText, this.helperMaxLines, @notSerializable this.helper, this.helperLocation, @notSerializable this.prefixIcon, this.prefixIconLocation, this.errorLocation, this.action, this.submitFormOnFieldSubmitted, @TextInputTypeConverter() this.keyboardType, this.obscureText, this.autocorrect, final  List<String>? autofillHints, this.autofocus, this.textInputAction, this.textCapitalization, this.maxLines, this.invalidRegexMessage, this.collapsed, @EdgeInsetsNullableConverter() this.padding, @notSerializable this.style, @notSerializable this.widgetBuilder, @notSerializable this.errorBuilder}): _autofillHints = autofillHints,super._();
  factory _StringInputUiSettings.fromJson(Map<String, dynamic> json) => _$StringInputUiSettingsFromJson(json);

/// Requires [WoFormUiSettings.layout] at [LayoutMethod.flexible].
@override final  int? flex;
/// If null or O, header will be placed above the field.
/// Else, header and selector will be in a the same row.
/// If -1, the field will take as much space as he wants
/// (might not work with all fields).
/// Else, the field will be wrapped in a Flexible with a flex value of 10,
/// and the header with a flex value of [headerFlex].
///
/// Only used when [labelLocation] is [StringFieldLocation.outside].
@override final  int? headerFlex;
@override final  String? labelText;
/// Default to StringFieldLocation.inside
@override final  StringFieldLocation? labelLocation;
@override final  String? hintText;
@override final  String? helperText;
/// Defaults to 1. If you want to set it to null, enter 0.
@override final  int? helperMaxLines;
@override@notSerializable final  Widget? helper;
/// Default to StringFieldLocation.inside
@override final  StringFieldLocation? helperLocation;
@override@notSerializable final  Widget? prefixIcon;
/// Default to StringFieldLocation.outside
@override final  StringFieldLocation? prefixIconLocation;
/// Default to StringFieldLocation.inside
@override final  StringFieldLocation? errorLocation;
@override final  StringFieldAction? action;
/// By default, this is determined by [textInputAction]:
///
/// - **`false`** if the action is navigational or internal
/// (`.next`, `.previous`, `.continueAction`, or `.newline`).
/// - **`true`** for any other action.
@override final  bool? submitFormOnFieldSubmitted;
@override@TextInputTypeConverter() final  TextInputType? keyboardType;
@override final  bool? obscureText;
@override final  bool? autocorrect;
 final  List<String>? _autofillHints;
@override List<String>? get autofillHints {
  final value = _autofillHints;
  if (value == null) return null;
  if (_autofillHints is EqualUnmodifiableListView) return _autofillHints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// If [WoFormAutofocus.true], or [WoFormAutofocus.ifEmpty] and the initial
/// value is empty, the field will request focus at its creation.
///
/// Defaults to WoFormAutofocus.false
@override final  WoFormAutofocus? autofocus;
@override final  TextInputAction? textInputAction;
/// Defaults to TextCapitalization.none.
@override final  TextCapitalization? textCapitalization;
/// Defaults to 1. If you want to set it to null, enter 0.
@override final  int? maxLines;
@override final  String? invalidRegexMessage;
// If true, InputDecoration.collapsed will be used.
@override final  bool? collapsed;
@override@EdgeInsetsNullableConverter() final  EdgeInsets? padding;
@override@notSerializable final  TextStyle? style;
@override@notSerializable final  StringFieldBuilderDef? widgetBuilder;
@override@notSerializable final  ErrorBuilderDef? errorBuilder;

/// Create a copy of StringInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StringInputUiSettingsCopyWith<_StringInputUiSettings> get copyWith => __$StringInputUiSettingsCopyWithImpl<_StringInputUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StringInputUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StringInputUiSettings&&(identical(other.flex, flex) || other.flex == flex)&&(identical(other.headerFlex, headerFlex) || other.headerFlex == headerFlex)&&(identical(other.labelText, labelText) || other.labelText == labelText)&&(identical(other.labelLocation, labelLocation) || other.labelLocation == labelLocation)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.helperText, helperText) || other.helperText == helperText)&&(identical(other.helperMaxLines, helperMaxLines) || other.helperMaxLines == helperMaxLines)&&(identical(other.helper, helper) || other.helper == helper)&&(identical(other.helperLocation, helperLocation) || other.helperLocation == helperLocation)&&(identical(other.prefixIcon, prefixIcon) || other.prefixIcon == prefixIcon)&&(identical(other.prefixIconLocation, prefixIconLocation) || other.prefixIconLocation == prefixIconLocation)&&(identical(other.errorLocation, errorLocation) || other.errorLocation == errorLocation)&&(identical(other.action, action) || other.action == action)&&(identical(other.submitFormOnFieldSubmitted, submitFormOnFieldSubmitted) || other.submitFormOnFieldSubmitted == submitFormOnFieldSubmitted)&&(identical(other.keyboardType, keyboardType) || other.keyboardType == keyboardType)&&(identical(other.obscureText, obscureText) || other.obscureText == obscureText)&&(identical(other.autocorrect, autocorrect) || other.autocorrect == autocorrect)&&const DeepCollectionEquality().equals(other._autofillHints, _autofillHints)&&(identical(other.autofocus, autofocus) || other.autofocus == autofocus)&&(identical(other.textInputAction, textInputAction) || other.textInputAction == textInputAction)&&(identical(other.textCapitalization, textCapitalization) || other.textCapitalization == textCapitalization)&&(identical(other.maxLines, maxLines) || other.maxLines == maxLines)&&(identical(other.invalidRegexMessage, invalidRegexMessage) || other.invalidRegexMessage == invalidRegexMessage)&&(identical(other.collapsed, collapsed) || other.collapsed == collapsed)&&(identical(other.padding, padding) || other.padding == padding)&&(identical(other.style, style) || other.style == style)&&(identical(other.widgetBuilder, widgetBuilder) || other.widgetBuilder == widgetBuilder)&&(identical(other.errorBuilder, errorBuilder) || other.errorBuilder == errorBuilder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,flex,headerFlex,labelText,labelLocation,hintText,helperText,helperMaxLines,helper,helperLocation,prefixIcon,prefixIconLocation,errorLocation,action,submitFormOnFieldSubmitted,keyboardType,obscureText,autocorrect,const DeepCollectionEquality().hash(_autofillHints),autofocus,textInputAction,textCapitalization,maxLines,invalidRegexMessage,collapsed,padding,style,widgetBuilder,errorBuilder]);

@override
String toString() {
  return 'StringInputUiSettings(flex: $flex, headerFlex: $headerFlex, labelText: $labelText, labelLocation: $labelLocation, hintText: $hintText, helperText: $helperText, helperMaxLines: $helperMaxLines, helper: $helper, helperLocation: $helperLocation, prefixIcon: $prefixIcon, prefixIconLocation: $prefixIconLocation, errorLocation: $errorLocation, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, maxLines: $maxLines, invalidRegexMessage: $invalidRegexMessage, collapsed: $collapsed, padding: $padding, style: $style, widgetBuilder: $widgetBuilder, errorBuilder: $errorBuilder)';
}


}

/// @nodoc
abstract mixin class _$StringInputUiSettingsCopyWith<$Res> implements $StringInputUiSettingsCopyWith<$Res> {
  factory _$StringInputUiSettingsCopyWith(_StringInputUiSettings value, $Res Function(_StringInputUiSettings) _then) = __$StringInputUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 int? flex, int? headerFlex, String? labelText, StringFieldLocation? labelLocation, String? hintText, String? helperText, int? helperMaxLines,@notSerializable Widget? helper, StringFieldLocation? helperLocation,@notSerializable Widget? prefixIcon, StringFieldLocation? prefixIconLocation, StringFieldLocation? errorLocation, StringFieldAction? action, bool? submitFormOnFieldSubmitted,@TextInputTypeConverter() TextInputType? keyboardType, bool? obscureText, bool? autocorrect, List<String>? autofillHints, WoFormAutofocus? autofocus, TextInputAction? textInputAction, TextCapitalization? textCapitalization, int? maxLines, String? invalidRegexMessage, bool? collapsed,@EdgeInsetsNullableConverter() EdgeInsets? padding,@notSerializable TextStyle? style,@notSerializable StringFieldBuilderDef? widgetBuilder,@notSerializable ErrorBuilderDef? errorBuilder
});




}
/// @nodoc
class __$StringInputUiSettingsCopyWithImpl<$Res>
    implements _$StringInputUiSettingsCopyWith<$Res> {
  __$StringInputUiSettingsCopyWithImpl(this._self, this._then);

  final _StringInputUiSettings _self;
  final $Res Function(_StringInputUiSettings) _then;

/// Create a copy of StringInputUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flex = freezed,Object? headerFlex = freezed,Object? labelText = freezed,Object? labelLocation = freezed,Object? hintText = freezed,Object? helperText = freezed,Object? helperMaxLines = freezed,Object? helper = freezed,Object? helperLocation = freezed,Object? prefixIcon = freezed,Object? prefixIconLocation = freezed,Object? errorLocation = freezed,Object? action = freezed,Object? submitFormOnFieldSubmitted = freezed,Object? keyboardType = freezed,Object? obscureText = freezed,Object? autocorrect = freezed,Object? autofillHints = freezed,Object? autofocus = freezed,Object? textInputAction = freezed,Object? textCapitalization = freezed,Object? maxLines = freezed,Object? invalidRegexMessage = freezed,Object? collapsed = freezed,Object? padding = freezed,Object? style = freezed,Object? widgetBuilder = freezed,Object? errorBuilder = freezed,}) {
  return _then(_StringInputUiSettings(
flex: freezed == flex ? _self.flex : flex // ignore: cast_nullable_to_non_nullable
as int?,headerFlex: freezed == headerFlex ? _self.headerFlex : headerFlex // ignore: cast_nullable_to_non_nullable
as int?,labelText: freezed == labelText ? _self.labelText : labelText // ignore: cast_nullable_to_non_nullable
as String?,labelLocation: freezed == labelLocation ? _self.labelLocation : labelLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,helperText: freezed == helperText ? _self.helperText : helperText // ignore: cast_nullable_to_non_nullable
as String?,helperMaxLines: freezed == helperMaxLines ? _self.helperMaxLines : helperMaxLines // ignore: cast_nullable_to_non_nullable
as int?,helper: freezed == helper ? _self.helper : helper // ignore: cast_nullable_to_non_nullable
as Widget?,helperLocation: freezed == helperLocation ? _self.helperLocation : helperLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,prefixIcon: freezed == prefixIcon ? _self.prefixIcon : prefixIcon // ignore: cast_nullable_to_non_nullable
as Widget?,prefixIconLocation: freezed == prefixIconLocation ? _self.prefixIconLocation : prefixIconLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,errorLocation: freezed == errorLocation ? _self.errorLocation : errorLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as StringFieldAction?,submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted ? _self.submitFormOnFieldSubmitted : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
as bool?,keyboardType: freezed == keyboardType ? _self.keyboardType : keyboardType // ignore: cast_nullable_to_non_nullable
as TextInputType?,obscureText: freezed == obscureText ? _self.obscureText : obscureText // ignore: cast_nullable_to_non_nullable
as bool?,autocorrect: freezed == autocorrect ? _self.autocorrect : autocorrect // ignore: cast_nullable_to_non_nullable
as bool?,autofillHints: freezed == autofillHints ? _self._autofillHints : autofillHints // ignore: cast_nullable_to_non_nullable
as List<String>?,autofocus: freezed == autofocus ? _self.autofocus : autofocus // ignore: cast_nullable_to_non_nullable
as WoFormAutofocus?,textInputAction: freezed == textInputAction ? _self.textInputAction : textInputAction // ignore: cast_nullable_to_non_nullable
as TextInputAction?,textCapitalization: freezed == textCapitalization ? _self.textCapitalization : textCapitalization // ignore: cast_nullable_to_non_nullable
as TextCapitalization?,maxLines: freezed == maxLines ? _self.maxLines : maxLines // ignore: cast_nullable_to_non_nullable
as int?,invalidRegexMessage: freezed == invalidRegexMessage ? _self.invalidRegexMessage : invalidRegexMessage // ignore: cast_nullable_to_non_nullable
as String?,collapsed: freezed == collapsed ? _self.collapsed : collapsed // ignore: cast_nullable_to_non_nullable
as bool?,padding: freezed == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as EdgeInsets?,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as TextStyle?,widgetBuilder: freezed == widgetBuilder ? _self.widgetBuilder : widgetBuilder // ignore: cast_nullable_to_non_nullable
as StringFieldBuilderDef?,errorBuilder: freezed == errorBuilder ? _self.errorBuilder : errorBuilder // ignore: cast_nullable_to_non_nullable
as ErrorBuilderDef?,
  ));
}


}


/// @nodoc
mixin _$WoFormUiSettings {

 String get titleText; WoFormTitlePosition get titlePosition;@notSerializable HeaderBuilderDef? get headerBuilder;/// If this is set and returns null, there won't be a quit button.
@notSerializable QuitButtonBuilderDef? get quitButtonBuilder;/// If set, the form's direct children will be considered as steps,
/// each shown in a dedicated pages.
 MultistepSettings? get multistepSettings; DisableSubmitButton get disableSubmitMode;/// The text of the submit button. Falls back to [WoFormL10n.submitText].
 String? get submitText;/// The icon of the submit button.
@notSerializable IconData? get submitIcon;@notSerializable SubmitButtonBuilderDef? get submitButtonBuilder;/// The position of the submit button in the form.
 SubmitButtonPosition get submitButtonPosition;@notSerializable ScaffoldBuilderDef? get scaffoldBuilder;/// If true, after the form is successfully submitted, it will be locked.
 bool? get canModifySubmittedValues;/// By default, errors will only be shown after the user visited a node or
/// tried to submit the form.
 ShowErrors get showErrors;/// Called when the users tries to quit the form, for exapmle by pressing
/// the back button in the app bar. If the method returns false, the form
/// won't be quitted.
@notSerializable Future<bool?> Function(BuildContext context)? get canQuit;/// Will be merged with context theme.
 WoFormThemeData? get theme;/// Padding applied around all the widgets inside this form, except for
/// the app bar, the bottom bar and the floating widgets.
@EdgeInsetsNullableConverter() EdgeInsets? get padding;/// Controls the layout behavior of the body. Switch to
/// [LayoutMethod.flexible] if you want to use `uiSettings.flex`.
///
/// The body consists of your inputs and potentially the submit button,
/// if [WoFormUiSettings.submitButtonPosition] is SubmitButtonPosition.body
/// (wich is the default value).
///
/// Due to PageView restrictions, [LayoutMethod.shrinkWrap] is incompatible
/// with [multistepSettings].
 LayoutMethod get layout;/// Controls how the form is presented to the user.
///
/// This determines whether the form is displayed as a full-page screen or
/// as a modal overlay. It affects the title and navigation controls.
 WoFormPresentation get presentation;
/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WoFormUiSettingsCopyWith<WoFormUiSettings> get copyWith => _$WoFormUiSettingsCopyWithImpl<WoFormUiSettings>(this as WoFormUiSettings, _$identity);

  /// Serializes this WoFormUiSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WoFormUiSettings&&(identical(other.titleText, titleText) || other.titleText == titleText)&&(identical(other.titlePosition, titlePosition) || other.titlePosition == titlePosition)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.quitButtonBuilder, quitButtonBuilder) || other.quitButtonBuilder == quitButtonBuilder)&&(identical(other.multistepSettings, multistepSettings) || other.multistepSettings == multistepSettings)&&(identical(other.disableSubmitMode, disableSubmitMode) || other.disableSubmitMode == disableSubmitMode)&&(identical(other.submitText, submitText) || other.submitText == submitText)&&(identical(other.submitIcon, submitIcon) || other.submitIcon == submitIcon)&&(identical(other.submitButtonBuilder, submitButtonBuilder) || other.submitButtonBuilder == submitButtonBuilder)&&(identical(other.submitButtonPosition, submitButtonPosition) || other.submitButtonPosition == submitButtonPosition)&&(identical(other.scaffoldBuilder, scaffoldBuilder) || other.scaffoldBuilder == scaffoldBuilder)&&(identical(other.canModifySubmittedValues, canModifySubmittedValues) || other.canModifySubmittedValues == canModifySubmittedValues)&&(identical(other.showErrors, showErrors) || other.showErrors == showErrors)&&(identical(other.canQuit, canQuit) || other.canQuit == canQuit)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.padding, padding) || other.padding == padding)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.presentation, presentation) || other.presentation == presentation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,titleText,titlePosition,headerBuilder,quitButtonBuilder,multistepSettings,disableSubmitMode,submitText,submitIcon,submitButtonBuilder,submitButtonPosition,scaffoldBuilder,canModifySubmittedValues,showErrors,canQuit,theme,padding,layout,presentation);

@override
String toString() {
  return 'WoFormUiSettings(titleText: $titleText, titlePosition: $titlePosition, headerBuilder: $headerBuilder, quitButtonBuilder: $quitButtonBuilder, multistepSettings: $multistepSettings, disableSubmitMode: $disableSubmitMode, submitText: $submitText, submitIcon: $submitIcon, submitButtonBuilder: $submitButtonBuilder, submitButtonPosition: $submitButtonPosition, scaffoldBuilder: $scaffoldBuilder, canModifySubmittedValues: $canModifySubmittedValues, showErrors: $showErrors, canQuit: $canQuit, theme: $theme, padding: $padding, layout: $layout, presentation: $presentation)';
}


}

/// @nodoc
abstract mixin class $WoFormUiSettingsCopyWith<$Res>  {
  factory $WoFormUiSettingsCopyWith(WoFormUiSettings value, $Res Function(WoFormUiSettings) _then) = _$WoFormUiSettingsCopyWithImpl;
@useResult
$Res call({
 String titleText, WoFormTitlePosition titlePosition,@notSerializable HeaderBuilderDef? headerBuilder,@notSerializable QuitButtonBuilderDef? quitButtonBuilder, MultistepSettings? multistepSettings, DisableSubmitButton disableSubmitMode, String? submitText,@notSerializable IconData? submitIcon,@notSerializable SubmitButtonBuilderDef? submitButtonBuilder, SubmitButtonPosition submitButtonPosition,@notSerializable ScaffoldBuilderDef? scaffoldBuilder, bool? canModifySubmittedValues, ShowErrors showErrors,@notSerializable Future<bool?> Function(BuildContext context)? canQuit, WoFormThemeData? theme,@EdgeInsetsNullableConverter() EdgeInsets? padding, LayoutMethod layout, WoFormPresentation presentation
});


$MultistepSettingsCopyWith<$Res>? get multistepSettings;$WoFormThemeDataCopyWith<$Res>? get theme;

}
/// @nodoc
class _$WoFormUiSettingsCopyWithImpl<$Res>
    implements $WoFormUiSettingsCopyWith<$Res> {
  _$WoFormUiSettingsCopyWithImpl(this._self, this._then);

  final WoFormUiSettings _self;
  final $Res Function(WoFormUiSettings) _then;

/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? titleText = null,Object? titlePosition = null,Object? headerBuilder = freezed,Object? quitButtonBuilder = freezed,Object? multistepSettings = freezed,Object? disableSubmitMode = null,Object? submitText = freezed,Object? submitIcon = freezed,Object? submitButtonBuilder = freezed,Object? submitButtonPosition = null,Object? scaffoldBuilder = freezed,Object? canModifySubmittedValues = freezed,Object? showErrors = null,Object? canQuit = freezed,Object? theme = freezed,Object? padding = freezed,Object? layout = null,Object? presentation = null,}) {
  return _then(_self.copyWith(
titleText: null == titleText ? _self.titleText : titleText // ignore: cast_nullable_to_non_nullable
as String,titlePosition: null == titlePosition ? _self.titlePosition : titlePosition // ignore: cast_nullable_to_non_nullable
as WoFormTitlePosition,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as HeaderBuilderDef?,quitButtonBuilder: freezed == quitButtonBuilder ? _self.quitButtonBuilder : quitButtonBuilder // ignore: cast_nullable_to_non_nullable
as QuitButtonBuilderDef?,multistepSettings: freezed == multistepSettings ? _self.multistepSettings : multistepSettings // ignore: cast_nullable_to_non_nullable
as MultistepSettings?,disableSubmitMode: null == disableSubmitMode ? _self.disableSubmitMode : disableSubmitMode // ignore: cast_nullable_to_non_nullable
as DisableSubmitButton,submitText: freezed == submitText ? _self.submitText : submitText // ignore: cast_nullable_to_non_nullable
as String?,submitIcon: freezed == submitIcon ? _self.submitIcon : submitIcon // ignore: cast_nullable_to_non_nullable
as IconData?,submitButtonBuilder: freezed == submitButtonBuilder ? _self.submitButtonBuilder : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
as SubmitButtonBuilderDef?,submitButtonPosition: null == submitButtonPosition ? _self.submitButtonPosition : submitButtonPosition // ignore: cast_nullable_to_non_nullable
as SubmitButtonPosition,scaffoldBuilder: freezed == scaffoldBuilder ? _self.scaffoldBuilder : scaffoldBuilder // ignore: cast_nullable_to_non_nullable
as ScaffoldBuilderDef?,canModifySubmittedValues: freezed == canModifySubmittedValues ? _self.canModifySubmittedValues : canModifySubmittedValues // ignore: cast_nullable_to_non_nullable
as bool?,showErrors: null == showErrors ? _self.showErrors : showErrors // ignore: cast_nullable_to_non_nullable
as ShowErrors,canQuit: freezed == canQuit ? _self.canQuit : canQuit // ignore: cast_nullable_to_non_nullable
as Future<bool?> Function(BuildContext context)?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as WoFormThemeData?,padding: freezed == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as EdgeInsets?,layout: null == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as LayoutMethod,presentation: null == presentation ? _self.presentation : presentation // ignore: cast_nullable_to_non_nullable
as WoFormPresentation,
  ));
}
/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultistepSettingsCopyWith<$Res>? get multistepSettings {
    if (_self.multistepSettings == null) {
    return null;
  }

  return $MultistepSettingsCopyWith<$Res>(_self.multistepSettings!, (value) {
    return _then(_self.copyWith(multistepSettings: value));
  });
}/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormThemeDataCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $WoFormThemeDataCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class _WoFormUiSettings extends WoFormUiSettings {
  const _WoFormUiSettings({this.titleText = '', this.titlePosition = WoFormTitlePosition.header, @notSerializable this.headerBuilder, @notSerializable this.quitButtonBuilder, this.multistepSettings, this.disableSubmitMode = DisableSubmitButton.never, this.submitText, @notSerializable this.submitIcon, @notSerializable this.submitButtonBuilder, this.submitButtonPosition = SubmitButtonPosition.body, @notSerializable this.scaffoldBuilder, this.canModifySubmittedValues, this.showErrors = ShowErrors.progressively, @notSerializable this.canQuit, this.theme, @EdgeInsetsNullableConverter() this.padding, this.layout = LayoutMethod.scrollable, this.presentation = WoFormPresentation.page}): super._();
  factory _WoFormUiSettings.fromJson(Map<String, dynamic> json) => _$WoFormUiSettingsFromJson(json);

@override@JsonKey() final  String titleText;
@override@JsonKey() final  WoFormTitlePosition titlePosition;
@override@notSerializable final  HeaderBuilderDef? headerBuilder;
/// If this is set and returns null, there won't be a quit button.
@override@notSerializable final  QuitButtonBuilderDef? quitButtonBuilder;
/// If set, the form's direct children will be considered as steps,
/// each shown in a dedicated pages.
@override final  MultistepSettings? multistepSettings;
@override@JsonKey() final  DisableSubmitButton disableSubmitMode;
/// The text of the submit button. Falls back to [WoFormL10n.submitText].
@override final  String? submitText;
/// The icon of the submit button.
@override@notSerializable final  IconData? submitIcon;
@override@notSerializable final  SubmitButtonBuilderDef? submitButtonBuilder;
/// The position of the submit button in the form.
@override@JsonKey() final  SubmitButtonPosition submitButtonPosition;
@override@notSerializable final  ScaffoldBuilderDef? scaffoldBuilder;
/// If true, after the form is successfully submitted, it will be locked.
@override final  bool? canModifySubmittedValues;
/// By default, errors will only be shown after the user visited a node or
/// tried to submit the form.
@override@JsonKey() final  ShowErrors showErrors;
/// Called when the users tries to quit the form, for exapmle by pressing
/// the back button in the app bar. If the method returns false, the form
/// won't be quitted.
@override@notSerializable final  Future<bool?> Function(BuildContext context)? canQuit;
/// Will be merged with context theme.
@override final  WoFormThemeData? theme;
/// Padding applied around all the widgets inside this form, except for
/// the app bar, the bottom bar and the floating widgets.
@override@EdgeInsetsNullableConverter() final  EdgeInsets? padding;
/// Controls the layout behavior of the body. Switch to
/// [LayoutMethod.flexible] if you want to use `uiSettings.flex`.
///
/// The body consists of your inputs and potentially the submit button,
/// if [WoFormUiSettings.submitButtonPosition] is SubmitButtonPosition.body
/// (wich is the default value).
///
/// Due to PageView restrictions, [LayoutMethod.shrinkWrap] is incompatible
/// with [multistepSettings].
@override@JsonKey() final  LayoutMethod layout;
/// Controls how the form is presented to the user.
///
/// This determines whether the form is displayed as a full-page screen or
/// as a modal overlay. It affects the title and navigation controls.
@override@JsonKey() final  WoFormPresentation presentation;

/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WoFormUiSettingsCopyWith<_WoFormUiSettings> get copyWith => __$WoFormUiSettingsCopyWithImpl<_WoFormUiSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WoFormUiSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WoFormUiSettings&&(identical(other.titleText, titleText) || other.titleText == titleText)&&(identical(other.titlePosition, titlePosition) || other.titlePosition == titlePosition)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.quitButtonBuilder, quitButtonBuilder) || other.quitButtonBuilder == quitButtonBuilder)&&(identical(other.multistepSettings, multistepSettings) || other.multistepSettings == multistepSettings)&&(identical(other.disableSubmitMode, disableSubmitMode) || other.disableSubmitMode == disableSubmitMode)&&(identical(other.submitText, submitText) || other.submitText == submitText)&&(identical(other.submitIcon, submitIcon) || other.submitIcon == submitIcon)&&(identical(other.submitButtonBuilder, submitButtonBuilder) || other.submitButtonBuilder == submitButtonBuilder)&&(identical(other.submitButtonPosition, submitButtonPosition) || other.submitButtonPosition == submitButtonPosition)&&(identical(other.scaffoldBuilder, scaffoldBuilder) || other.scaffoldBuilder == scaffoldBuilder)&&(identical(other.canModifySubmittedValues, canModifySubmittedValues) || other.canModifySubmittedValues == canModifySubmittedValues)&&(identical(other.showErrors, showErrors) || other.showErrors == showErrors)&&(identical(other.canQuit, canQuit) || other.canQuit == canQuit)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.padding, padding) || other.padding == padding)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.presentation, presentation) || other.presentation == presentation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,titleText,titlePosition,headerBuilder,quitButtonBuilder,multistepSettings,disableSubmitMode,submitText,submitIcon,submitButtonBuilder,submitButtonPosition,scaffoldBuilder,canModifySubmittedValues,showErrors,canQuit,theme,padding,layout,presentation);

@override
String toString() {
  return 'WoFormUiSettings(titleText: $titleText, titlePosition: $titlePosition, headerBuilder: $headerBuilder, quitButtonBuilder: $quitButtonBuilder, multistepSettings: $multistepSettings, disableSubmitMode: $disableSubmitMode, submitText: $submitText, submitIcon: $submitIcon, submitButtonBuilder: $submitButtonBuilder, submitButtonPosition: $submitButtonPosition, scaffoldBuilder: $scaffoldBuilder, canModifySubmittedValues: $canModifySubmittedValues, showErrors: $showErrors, canQuit: $canQuit, theme: $theme, padding: $padding, layout: $layout, presentation: $presentation)';
}


}

/// @nodoc
abstract mixin class _$WoFormUiSettingsCopyWith<$Res> implements $WoFormUiSettingsCopyWith<$Res> {
  factory _$WoFormUiSettingsCopyWith(_WoFormUiSettings value, $Res Function(_WoFormUiSettings) _then) = __$WoFormUiSettingsCopyWithImpl;
@override @useResult
$Res call({
 String titleText, WoFormTitlePosition titlePosition,@notSerializable HeaderBuilderDef? headerBuilder,@notSerializable QuitButtonBuilderDef? quitButtonBuilder, MultistepSettings? multistepSettings, DisableSubmitButton disableSubmitMode, String? submitText,@notSerializable IconData? submitIcon,@notSerializable SubmitButtonBuilderDef? submitButtonBuilder, SubmitButtonPosition submitButtonPosition,@notSerializable ScaffoldBuilderDef? scaffoldBuilder, bool? canModifySubmittedValues, ShowErrors showErrors,@notSerializable Future<bool?> Function(BuildContext context)? canQuit, WoFormThemeData? theme,@EdgeInsetsNullableConverter() EdgeInsets? padding, LayoutMethod layout, WoFormPresentation presentation
});


@override $MultistepSettingsCopyWith<$Res>? get multistepSettings;@override $WoFormThemeDataCopyWith<$Res>? get theme;

}
/// @nodoc
class __$WoFormUiSettingsCopyWithImpl<$Res>
    implements _$WoFormUiSettingsCopyWith<$Res> {
  __$WoFormUiSettingsCopyWithImpl(this._self, this._then);

  final _WoFormUiSettings _self;
  final $Res Function(_WoFormUiSettings) _then;

/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? titleText = null,Object? titlePosition = null,Object? headerBuilder = freezed,Object? quitButtonBuilder = freezed,Object? multistepSettings = freezed,Object? disableSubmitMode = null,Object? submitText = freezed,Object? submitIcon = freezed,Object? submitButtonBuilder = freezed,Object? submitButtonPosition = null,Object? scaffoldBuilder = freezed,Object? canModifySubmittedValues = freezed,Object? showErrors = null,Object? canQuit = freezed,Object? theme = freezed,Object? padding = freezed,Object? layout = null,Object? presentation = null,}) {
  return _then(_WoFormUiSettings(
titleText: null == titleText ? _self.titleText : titleText // ignore: cast_nullable_to_non_nullable
as String,titlePosition: null == titlePosition ? _self.titlePosition : titlePosition // ignore: cast_nullable_to_non_nullable
as WoFormTitlePosition,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as HeaderBuilderDef?,quitButtonBuilder: freezed == quitButtonBuilder ? _self.quitButtonBuilder : quitButtonBuilder // ignore: cast_nullable_to_non_nullable
as QuitButtonBuilderDef?,multistepSettings: freezed == multistepSettings ? _self.multistepSettings : multistepSettings // ignore: cast_nullable_to_non_nullable
as MultistepSettings?,disableSubmitMode: null == disableSubmitMode ? _self.disableSubmitMode : disableSubmitMode // ignore: cast_nullable_to_non_nullable
as DisableSubmitButton,submitText: freezed == submitText ? _self.submitText : submitText // ignore: cast_nullable_to_non_nullable
as String?,submitIcon: freezed == submitIcon ? _self.submitIcon : submitIcon // ignore: cast_nullable_to_non_nullable
as IconData?,submitButtonBuilder: freezed == submitButtonBuilder ? _self.submitButtonBuilder : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
as SubmitButtonBuilderDef?,submitButtonPosition: null == submitButtonPosition ? _self.submitButtonPosition : submitButtonPosition // ignore: cast_nullable_to_non_nullable
as SubmitButtonPosition,scaffoldBuilder: freezed == scaffoldBuilder ? _self.scaffoldBuilder : scaffoldBuilder // ignore: cast_nullable_to_non_nullable
as ScaffoldBuilderDef?,canModifySubmittedValues: freezed == canModifySubmittedValues ? _self.canModifySubmittedValues : canModifySubmittedValues // ignore: cast_nullable_to_non_nullable
as bool?,showErrors: null == showErrors ? _self.showErrors : showErrors // ignore: cast_nullable_to_non_nullable
as ShowErrors,canQuit: freezed == canQuit ? _self.canQuit : canQuit // ignore: cast_nullable_to_non_nullable
as Future<bool?> Function(BuildContext context)?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as WoFormThemeData?,padding: freezed == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as EdgeInsets?,layout: null == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as LayoutMethod,presentation: null == presentation ? _self.presentation : presentation // ignore: cast_nullable_to_non_nullable
as WoFormPresentation,
  ));
}

/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MultistepSettingsCopyWith<$Res>? get multistepSettings {
    if (_self.multistepSettings == null) {
    return null;
  }

  return $MultistepSettingsCopyWith<$Res>(_self.multistepSettings!, (value) {
    return _then(_self.copyWith(multistepSettings: value));
  });
}/// Create a copy of WoFormUiSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormThemeDataCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $WoFormThemeDataCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}


/// @nodoc
mixin _$MultistepSettings {

/// Text for the submit button if it navigates to the next form page.
/// Falls back to submitText if not provided.
 String? get nextText;/// Defaults to [MultistepUrlStrategy.none].
 MultistepUrlStrategy? get urlStrategy; bool get showProgressIndicator;@notSerializable MultiStepProgressIndicatorBuilderDef? get progressIndicatorBuilder;/// Called when a step is submited (optionnal). By default, the performed
/// action is [MultistepAction.next].
@notSerializable OnStepSubmittingDef? get onStepSubmitting;/// Applied around the fields, not the progress indicator,
/// nor the submit button.
///
/// Defaults to EdgeInsets.only(top: 16, bottom: 32).
@EdgeInsetsNullableConverter() EdgeInsets? get fieldsPadding;
/// Create a copy of MultistepSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultistepSettingsCopyWith<MultistepSettings> get copyWith => _$MultistepSettingsCopyWithImpl<MultistepSettings>(this as MultistepSettings, _$identity);

  /// Serializes this MultistepSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultistepSettings&&(identical(other.nextText, nextText) || other.nextText == nextText)&&(identical(other.urlStrategy, urlStrategy) || other.urlStrategy == urlStrategy)&&(identical(other.showProgressIndicator, showProgressIndicator) || other.showProgressIndicator == showProgressIndicator)&&(identical(other.progressIndicatorBuilder, progressIndicatorBuilder) || other.progressIndicatorBuilder == progressIndicatorBuilder)&&(identical(other.onStepSubmitting, onStepSubmitting) || other.onStepSubmitting == onStepSubmitting)&&(identical(other.fieldsPadding, fieldsPadding) || other.fieldsPadding == fieldsPadding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextText,urlStrategy,showProgressIndicator,progressIndicatorBuilder,onStepSubmitting,fieldsPadding);

@override
String toString() {
  return 'MultistepSettings(nextText: $nextText, urlStrategy: $urlStrategy, showProgressIndicator: $showProgressIndicator, progressIndicatorBuilder: $progressIndicatorBuilder, onStepSubmitting: $onStepSubmitting, fieldsPadding: $fieldsPadding)';
}


}

/// @nodoc
abstract mixin class $MultistepSettingsCopyWith<$Res>  {
  factory $MultistepSettingsCopyWith(MultistepSettings value, $Res Function(MultistepSettings) _then) = _$MultistepSettingsCopyWithImpl;
@useResult
$Res call({
 String? nextText, MultistepUrlStrategy? urlStrategy, bool showProgressIndicator,@notSerializable MultiStepProgressIndicatorBuilderDef? progressIndicatorBuilder,@notSerializable OnStepSubmittingDef? onStepSubmitting,@EdgeInsetsNullableConverter() EdgeInsets? fieldsPadding
});




}
/// @nodoc
class _$MultistepSettingsCopyWithImpl<$Res>
    implements $MultistepSettingsCopyWith<$Res> {
  _$MultistepSettingsCopyWithImpl(this._self, this._then);

  final MultistepSettings _self;
  final $Res Function(MultistepSettings) _then;

/// Create a copy of MultistepSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextText = freezed,Object? urlStrategy = freezed,Object? showProgressIndicator = null,Object? progressIndicatorBuilder = freezed,Object? onStepSubmitting = freezed,Object? fieldsPadding = freezed,}) {
  return _then(_self.copyWith(
nextText: freezed == nextText ? _self.nextText : nextText // ignore: cast_nullable_to_non_nullable
as String?,urlStrategy: freezed == urlStrategy ? _self.urlStrategy : urlStrategy // ignore: cast_nullable_to_non_nullable
as MultistepUrlStrategy?,showProgressIndicator: null == showProgressIndicator ? _self.showProgressIndicator : showProgressIndicator // ignore: cast_nullable_to_non_nullable
as bool,progressIndicatorBuilder: freezed == progressIndicatorBuilder ? _self.progressIndicatorBuilder : progressIndicatorBuilder // ignore: cast_nullable_to_non_nullable
as MultiStepProgressIndicatorBuilderDef?,onStepSubmitting: freezed == onStepSubmitting ? _self.onStepSubmitting : onStepSubmitting // ignore: cast_nullable_to_non_nullable
as OnStepSubmittingDef?,fieldsPadding: freezed == fieldsPadding ? _self.fieldsPadding : fieldsPadding // ignore: cast_nullable_to_non_nullable
as EdgeInsets?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _MultistepSettings extends MultistepSettings {
  const _MultistepSettings({this.nextText, this.urlStrategy, this.showProgressIndicator = true, @notSerializable this.progressIndicatorBuilder, @notSerializable this.onStepSubmitting, @EdgeInsetsNullableConverter() this.fieldsPadding}): super._();
  factory _MultistepSettings.fromJson(Map<String, dynamic> json) => _$MultistepSettingsFromJson(json);

/// Text for the submit button if it navigates to the next form page.
/// Falls back to submitText if not provided.
@override final  String? nextText;
/// Defaults to [MultistepUrlStrategy.none].
@override final  MultistepUrlStrategy? urlStrategy;
@override@JsonKey() final  bool showProgressIndicator;
@override@notSerializable final  MultiStepProgressIndicatorBuilderDef? progressIndicatorBuilder;
/// Called when a step is submited (optionnal). By default, the performed
/// action is [MultistepAction.next].
@override@notSerializable final  OnStepSubmittingDef? onStepSubmitting;
/// Applied around the fields, not the progress indicator,
/// nor the submit button.
///
/// Defaults to EdgeInsets.only(top: 16, bottom: 32).
@override@EdgeInsetsNullableConverter() final  EdgeInsets? fieldsPadding;

/// Create a copy of MultistepSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultistepSettingsCopyWith<_MultistepSettings> get copyWith => __$MultistepSettingsCopyWithImpl<_MultistepSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultistepSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultistepSettings&&(identical(other.nextText, nextText) || other.nextText == nextText)&&(identical(other.urlStrategy, urlStrategy) || other.urlStrategy == urlStrategy)&&(identical(other.showProgressIndicator, showProgressIndicator) || other.showProgressIndicator == showProgressIndicator)&&(identical(other.progressIndicatorBuilder, progressIndicatorBuilder) || other.progressIndicatorBuilder == progressIndicatorBuilder)&&(identical(other.onStepSubmitting, onStepSubmitting) || other.onStepSubmitting == onStepSubmitting)&&(identical(other.fieldsPadding, fieldsPadding) || other.fieldsPadding == fieldsPadding));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextText,urlStrategy,showProgressIndicator,progressIndicatorBuilder,onStepSubmitting,fieldsPadding);

@override
String toString() {
  return 'MultistepSettings(nextText: $nextText, urlStrategy: $urlStrategy, showProgressIndicator: $showProgressIndicator, progressIndicatorBuilder: $progressIndicatorBuilder, onStepSubmitting: $onStepSubmitting, fieldsPadding: $fieldsPadding)';
}


}

/// @nodoc
abstract mixin class _$MultistepSettingsCopyWith<$Res> implements $MultistepSettingsCopyWith<$Res> {
  factory _$MultistepSettingsCopyWith(_MultistepSettings value, $Res Function(_MultistepSettings) _then) = __$MultistepSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? nextText, MultistepUrlStrategy? urlStrategy, bool showProgressIndicator,@notSerializable MultiStepProgressIndicatorBuilderDef? progressIndicatorBuilder,@notSerializable OnStepSubmittingDef? onStepSubmitting,@EdgeInsetsNullableConverter() EdgeInsets? fieldsPadding
});




}
/// @nodoc
class __$MultistepSettingsCopyWithImpl<$Res>
    implements _$MultistepSettingsCopyWith<$Res> {
  __$MultistepSettingsCopyWithImpl(this._self, this._then);

  final _MultistepSettings _self;
  final $Res Function(_MultistepSettings) _then;

/// Create a copy of MultistepSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextText = freezed,Object? urlStrategy = freezed,Object? showProgressIndicator = null,Object? progressIndicatorBuilder = freezed,Object? onStepSubmitting = freezed,Object? fieldsPadding = freezed,}) {
  return _then(_MultistepSettings(
nextText: freezed == nextText ? _self.nextText : nextText // ignore: cast_nullable_to_non_nullable
as String?,urlStrategy: freezed == urlStrategy ? _self.urlStrategy : urlStrategy // ignore: cast_nullable_to_non_nullable
as MultistepUrlStrategy?,showProgressIndicator: null == showProgressIndicator ? _self.showProgressIndicator : showProgressIndicator // ignore: cast_nullable_to_non_nullable
as bool,progressIndicatorBuilder: freezed == progressIndicatorBuilder ? _self.progressIndicatorBuilder : progressIndicatorBuilder // ignore: cast_nullable_to_non_nullable
as MultiStepProgressIndicatorBuilderDef?,onStepSubmitting: freezed == onStepSubmitting ? _self.onStepSubmitting : onStepSubmitting // ignore: cast_nullable_to_non_nullable
as OnStepSubmittingDef?,fieldsPadding: freezed == fieldsPadding ? _self.fieldsPadding : fieldsPadding // ignore: cast_nullable_to_non_nullable
as EdgeInsets?,
  ));
}


}

/// @nodoc
mixin _$MultistepAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultistepAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MultistepAction()';
}


}

/// @nodoc
class $MultistepActionCopyWith<$Res>  {
$MultistepActionCopyWith(MultistepAction _, $Res Function(MultistepAction) __);
}



/// @nodoc


class MultistepActionNext extends MultistepAction {
  const MultistepActionNext(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultistepActionNext);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MultistepAction.next()';
}


}




/// @nodoc


class MultistepActionPopUntil extends MultistepAction {
  const MultistepActionPopUntil(this.predicate, {this.replacementStepId}): super._();
  

 final  bool Function(String stepId) predicate;
/// If provided, this step will be pushed, and when the animation  ends,
/// the other steps will be popped, depending on [predicate].
 final  String? replacementStepId;

/// Create a copy of MultistepAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultistepActionPopUntilCopyWith<MultistepActionPopUntil> get copyWith => _$MultistepActionPopUntilCopyWithImpl<MultistepActionPopUntil>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultistepActionPopUntil&&(identical(other.predicate, predicate) || other.predicate == predicate)&&(identical(other.replacementStepId, replacementStepId) || other.replacementStepId == replacementStepId));
}


@override
int get hashCode => Object.hash(runtimeType,predicate,replacementStepId);

@override
String toString() {
  return 'MultistepAction.popUntil(predicate: $predicate, replacementStepId: $replacementStepId)';
}


}

/// @nodoc
abstract mixin class $MultistepActionPopUntilCopyWith<$Res> implements $MultistepActionCopyWith<$Res> {
  factory $MultistepActionPopUntilCopyWith(MultistepActionPopUntil value, $Res Function(MultistepActionPopUntil) _then) = _$MultistepActionPopUntilCopyWithImpl;
@useResult
$Res call({
 bool Function(String stepId) predicate, String? replacementStepId
});




}
/// @nodoc
class _$MultistepActionPopUntilCopyWithImpl<$Res>
    implements $MultistepActionPopUntilCopyWith<$Res> {
  _$MultistepActionPopUntilCopyWithImpl(this._self, this._then);

  final MultistepActionPopUntil _self;
  final $Res Function(MultistepActionPopUntil) _then;

/// Create a copy of MultistepAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? predicate = null,Object? replacementStepId = freezed,}) {
  return _then(MultistepActionPopUntil(
null == predicate ? _self.predicate : predicate // ignore: cast_nullable_to_non_nullable
as bool Function(String stepId),replacementStepId: freezed == replacementStepId ? _self.replacementStepId : replacementStepId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class MultistepActionPush extends MultistepAction {
  const MultistepActionPush({required this.stepId}): super._();
  

 final  String stepId;

/// Create a copy of MultistepAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultistepActionPushCopyWith<MultistepActionPush> get copyWith => _$MultistepActionPushCopyWithImpl<MultistepActionPush>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultistepActionPush&&(identical(other.stepId, stepId) || other.stepId == stepId));
}


@override
int get hashCode => Object.hash(runtimeType,stepId);

@override
String toString() {
  return 'MultistepAction.push(stepId: $stepId)';
}


}

/// @nodoc
abstract mixin class $MultistepActionPushCopyWith<$Res> implements $MultistepActionCopyWith<$Res> {
  factory $MultistepActionPushCopyWith(MultistepActionPush value, $Res Function(MultistepActionPush) _then) = _$MultistepActionPushCopyWithImpl;
@useResult
$Res call({
 String stepId
});




}
/// @nodoc
class _$MultistepActionPushCopyWithImpl<$Res>
    implements $MultistepActionPushCopyWith<$Res> {
  _$MultistepActionPushCopyWithImpl(this._self, this._then);

  final MultistepActionPush _self;
  final $Res Function(MultistepActionPush) _then;

/// Create a copy of MultistepAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stepId = null,}) {
  return _then(MultistepActionPush(
stepId: null == stepId ? _self.stepId : stepId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MultistepActionSubmitForm extends MultistepAction {
  const MultistepActionSubmitForm(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultistepActionSubmitForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MultistepAction.submitForm()';
}


}




// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_form_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WoFormThemeData {

@notSerializable BooleanFieldBuilderDef? get booleanFieldBuilder;@notSerializable DateTimeFieldBuilderDef? get dateTimeFieldBuilder;@notSerializable IsoCode? get defaultPhoneCoutry;@notSerializable DurationFieldBuilderDef? get durationFieldBuilder;@notSerializable DynamicInputsNodeWidgetBuilderDef? get dynamicInputsNodeAddButtonBuilder; DynamicInputsNodeAddButtonPosition? get dynamicInputsNodeAddButtonPosition;@notSerializable DynamicInputsNodeWidgetBuilderDef? get dynamicInputsNodeWidgetBuilder;@notSerializable FormatDurationDef? get formatDuration;@notSerializable WidgetBuilderDef? get formPageBuilder;@notSerializable GenerateIdDef? get generateId;@notSerializable HeaderBuilderDef? get headerBuilder;@notSerializable InputHeaderBuilderDef? get inputHeaderBuilder;/// Only used when [ChildrenVisibility.whenAsked].
///
/// Default to [InputsNodeExpander.page].
/// An alternative is [InputsNodeExpander.modal].
@notSerializable InputNodeWidgetBuilderDef? get inputsNodeExpanderBuilder;@notSerializable InputNodeWidgetBuilderDef? get inputsNodeWidgetBuilder;@notSerializable MediaFieldBuilderDef? get mediaFieldBuilder;@notSerializable MultiStepProgressIndicatorBuilderDef? get multiStepProgressIndicatorBuilder;@notSerializable NumFieldBuilderDef? get numFieldBuilder;@notSerializable PickDateDef? get pickDate;@notSerializable PickDurationDef? get pickDuration;@notSerializable PickTimeDef? get pickTime;/// If this is set and returns null, there won't be a quit button.
@notSerializable QuitButtonBuilderDef? get quitButtonBuilder;@notSerializable ScoreWidgetBuilderDef? get scoreBuilder;@notSerializable SelectFieldBuilderDef<dynamic>? get selectFieldBuilder;@notSerializable ScaffoldBuilderDef? get standardScaffoldBuilder;@notSerializable StringFieldBuilderDef? get stringFieldBuilder; StringFieldLocation? get stringFieldErrorLocation; StringFieldLocation? get stringFieldHelperLocation; StringFieldLocation? get stringFieldLabelLocation; StringFieldLocation? get stringFieldPrefixIconLocation;@notSerializable SubmitButtonBuilderDef? get submitButtonBuilder;/// Default values :
/// - SubmitButtonPosition.body: EdgeInsets.only(top: 32, bottom: 12)
/// - SubmitButtonPosition.bottomBar : EdgeInsets.symmetric(vertical: 16)
///
/// For appBar and floating, the margin is not implemented yet.
@notSerializable SubmitButtonMarginDef? get submitButtonMargin;/// Not compatible with SubmitButtonPosition.floating.
@notSerializable SubmitButtonStyleDef? get submitButtonStyle;@notSerializable OnDynamicInputDeletionDef? get onDynamicInputDeletion;@notSerializable OnSubmitErrorDef? get onSubmitError;/// The form's entire width won't exceed this value. Defaults to 512.
 double? get maxWidth;/// This spacing will be placed between each [WoFormNode].
 double? get spacing;/// Add the characters ' *' after the labelText of [WoFormInput]s.
/// Default to true.
 bool? get showAsteriskIfRequired;
/// Create a copy of WoFormThemeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WoFormThemeDataCopyWith<WoFormThemeData> get copyWith => _$WoFormThemeDataCopyWithImpl<WoFormThemeData>(this as WoFormThemeData, _$identity);

  /// Serializes this WoFormThemeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WoFormThemeData&&(identical(other.booleanFieldBuilder, booleanFieldBuilder) || other.booleanFieldBuilder == booleanFieldBuilder)&&(identical(other.dateTimeFieldBuilder, dateTimeFieldBuilder) || other.dateTimeFieldBuilder == dateTimeFieldBuilder)&&(identical(other.defaultPhoneCoutry, defaultPhoneCoutry) || other.defaultPhoneCoutry == defaultPhoneCoutry)&&(identical(other.durationFieldBuilder, durationFieldBuilder) || other.durationFieldBuilder == durationFieldBuilder)&&(identical(other.dynamicInputsNodeAddButtonBuilder, dynamicInputsNodeAddButtonBuilder) || other.dynamicInputsNodeAddButtonBuilder == dynamicInputsNodeAddButtonBuilder)&&(identical(other.dynamicInputsNodeAddButtonPosition, dynamicInputsNodeAddButtonPosition) || other.dynamicInputsNodeAddButtonPosition == dynamicInputsNodeAddButtonPosition)&&(identical(other.dynamicInputsNodeWidgetBuilder, dynamicInputsNodeWidgetBuilder) || other.dynamicInputsNodeWidgetBuilder == dynamicInputsNodeWidgetBuilder)&&(identical(other.formatDuration, formatDuration) || other.formatDuration == formatDuration)&&(identical(other.formPageBuilder, formPageBuilder) || other.formPageBuilder == formPageBuilder)&&(identical(other.generateId, generateId) || other.generateId == generateId)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.inputHeaderBuilder, inputHeaderBuilder) || other.inputHeaderBuilder == inputHeaderBuilder)&&(identical(other.inputsNodeExpanderBuilder, inputsNodeExpanderBuilder) || other.inputsNodeExpanderBuilder == inputsNodeExpanderBuilder)&&(identical(other.inputsNodeWidgetBuilder, inputsNodeWidgetBuilder) || other.inputsNodeWidgetBuilder == inputsNodeWidgetBuilder)&&(identical(other.mediaFieldBuilder, mediaFieldBuilder) || other.mediaFieldBuilder == mediaFieldBuilder)&&(identical(other.multiStepProgressIndicatorBuilder, multiStepProgressIndicatorBuilder) || other.multiStepProgressIndicatorBuilder == multiStepProgressIndicatorBuilder)&&(identical(other.numFieldBuilder, numFieldBuilder) || other.numFieldBuilder == numFieldBuilder)&&(identical(other.pickDate, pickDate) || other.pickDate == pickDate)&&(identical(other.pickDuration, pickDuration) || other.pickDuration == pickDuration)&&(identical(other.pickTime, pickTime) || other.pickTime == pickTime)&&(identical(other.quitButtonBuilder, quitButtonBuilder) || other.quitButtonBuilder == quitButtonBuilder)&&(identical(other.scoreBuilder, scoreBuilder) || other.scoreBuilder == scoreBuilder)&&(identical(other.selectFieldBuilder, selectFieldBuilder) || other.selectFieldBuilder == selectFieldBuilder)&&(identical(other.standardScaffoldBuilder, standardScaffoldBuilder) || other.standardScaffoldBuilder == standardScaffoldBuilder)&&(identical(other.stringFieldBuilder, stringFieldBuilder) || other.stringFieldBuilder == stringFieldBuilder)&&(identical(other.stringFieldErrorLocation, stringFieldErrorLocation) || other.stringFieldErrorLocation == stringFieldErrorLocation)&&(identical(other.stringFieldHelperLocation, stringFieldHelperLocation) || other.stringFieldHelperLocation == stringFieldHelperLocation)&&(identical(other.stringFieldLabelLocation, stringFieldLabelLocation) || other.stringFieldLabelLocation == stringFieldLabelLocation)&&(identical(other.stringFieldPrefixIconLocation, stringFieldPrefixIconLocation) || other.stringFieldPrefixIconLocation == stringFieldPrefixIconLocation)&&(identical(other.submitButtonBuilder, submitButtonBuilder) || other.submitButtonBuilder == submitButtonBuilder)&&(identical(other.submitButtonMargin, submitButtonMargin) || other.submitButtonMargin == submitButtonMargin)&&(identical(other.submitButtonStyle, submitButtonStyle) || other.submitButtonStyle == submitButtonStyle)&&(identical(other.onDynamicInputDeletion, onDynamicInputDeletion) || other.onDynamicInputDeletion == onDynamicInputDeletion)&&(identical(other.onSubmitError, onSubmitError) || other.onSubmitError == onSubmitError)&&(identical(other.maxWidth, maxWidth) || other.maxWidth == maxWidth)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&(identical(other.showAsteriskIfRequired, showAsteriskIfRequired) || other.showAsteriskIfRequired == showAsteriskIfRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,booleanFieldBuilder,dateTimeFieldBuilder,defaultPhoneCoutry,durationFieldBuilder,dynamicInputsNodeAddButtonBuilder,dynamicInputsNodeAddButtonPosition,dynamicInputsNodeWidgetBuilder,formatDuration,formPageBuilder,generateId,headerBuilder,inputHeaderBuilder,inputsNodeExpanderBuilder,inputsNodeWidgetBuilder,mediaFieldBuilder,multiStepProgressIndicatorBuilder,numFieldBuilder,pickDate,pickDuration,pickTime,quitButtonBuilder,scoreBuilder,selectFieldBuilder,standardScaffoldBuilder,stringFieldBuilder,stringFieldErrorLocation,stringFieldHelperLocation,stringFieldLabelLocation,stringFieldPrefixIconLocation,submitButtonBuilder,submitButtonMargin,submitButtonStyle,onDynamicInputDeletion,onSubmitError,maxWidth,spacing,showAsteriskIfRequired]);

@override
String toString() {
  return 'WoFormThemeData(booleanFieldBuilder: $booleanFieldBuilder, dateTimeFieldBuilder: $dateTimeFieldBuilder, defaultPhoneCoutry: $defaultPhoneCoutry, durationFieldBuilder: $durationFieldBuilder, dynamicInputsNodeAddButtonBuilder: $dynamicInputsNodeAddButtonBuilder, dynamicInputsNodeAddButtonPosition: $dynamicInputsNodeAddButtonPosition, dynamicInputsNodeWidgetBuilder: $dynamicInputsNodeWidgetBuilder, formatDuration: $formatDuration, formPageBuilder: $formPageBuilder, generateId: $generateId, headerBuilder: $headerBuilder, inputHeaderBuilder: $inputHeaderBuilder, inputsNodeExpanderBuilder: $inputsNodeExpanderBuilder, inputsNodeWidgetBuilder: $inputsNodeWidgetBuilder, mediaFieldBuilder: $mediaFieldBuilder, multiStepProgressIndicatorBuilder: $multiStepProgressIndicatorBuilder, numFieldBuilder: $numFieldBuilder, pickDate: $pickDate, pickDuration: $pickDuration, pickTime: $pickTime, quitButtonBuilder: $quitButtonBuilder, scoreBuilder: $scoreBuilder, selectFieldBuilder: $selectFieldBuilder, standardScaffoldBuilder: $standardScaffoldBuilder, stringFieldBuilder: $stringFieldBuilder, stringFieldErrorLocation: $stringFieldErrorLocation, stringFieldHelperLocation: $stringFieldHelperLocation, stringFieldLabelLocation: $stringFieldLabelLocation, stringFieldPrefixIconLocation: $stringFieldPrefixIconLocation, submitButtonBuilder: $submitButtonBuilder, submitButtonMargin: $submitButtonMargin, submitButtonStyle: $submitButtonStyle, onDynamicInputDeletion: $onDynamicInputDeletion, onSubmitError: $onSubmitError, maxWidth: $maxWidth, spacing: $spacing, showAsteriskIfRequired: $showAsteriskIfRequired)';
}


}

/// @nodoc
abstract mixin class $WoFormThemeDataCopyWith<$Res>  {
  factory $WoFormThemeDataCopyWith(WoFormThemeData value, $Res Function(WoFormThemeData) _then) = _$WoFormThemeDataCopyWithImpl;
@useResult
$Res call({
@notSerializable BooleanFieldBuilderDef? booleanFieldBuilder,@notSerializable DateTimeFieldBuilderDef? dateTimeFieldBuilder,@notSerializable IsoCode? defaultPhoneCoutry,@notSerializable DurationFieldBuilderDef? durationFieldBuilder,@notSerializable DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeAddButtonBuilder, DynamicInputsNodeAddButtonPosition? dynamicInputsNodeAddButtonPosition,@notSerializable DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,@notSerializable FormatDurationDef? formatDuration,@notSerializable WidgetBuilderDef? formPageBuilder,@notSerializable GenerateIdDef? generateId,@notSerializable HeaderBuilderDef? headerBuilder,@notSerializable InputHeaderBuilderDef? inputHeaderBuilder,@notSerializable InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,@notSerializable InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,@notSerializable MediaFieldBuilderDef? mediaFieldBuilder,@notSerializable MultiStepProgressIndicatorBuilderDef? multiStepProgressIndicatorBuilder,@notSerializable NumFieldBuilderDef? numFieldBuilder,@notSerializable PickDateDef? pickDate,@notSerializable PickDurationDef? pickDuration,@notSerializable PickTimeDef? pickTime,@notSerializable QuitButtonBuilderDef? quitButtonBuilder,@notSerializable ScoreWidgetBuilderDef? scoreBuilder,@notSerializable SelectFieldBuilderDef<dynamic>? selectFieldBuilder,@notSerializable ScaffoldBuilderDef? standardScaffoldBuilder,@notSerializable StringFieldBuilderDef? stringFieldBuilder, StringFieldLocation? stringFieldErrorLocation, StringFieldLocation? stringFieldHelperLocation, StringFieldLocation? stringFieldLabelLocation, StringFieldLocation? stringFieldPrefixIconLocation,@notSerializable SubmitButtonBuilderDef? submitButtonBuilder,@notSerializable SubmitButtonMarginDef? submitButtonMargin,@notSerializable SubmitButtonStyleDef? submitButtonStyle,@notSerializable OnDynamicInputDeletionDef? onDynamicInputDeletion,@notSerializable OnSubmitErrorDef? onSubmitError, double? maxWidth, double? spacing, bool? showAsteriskIfRequired
});




}
/// @nodoc
class _$WoFormThemeDataCopyWithImpl<$Res>
    implements $WoFormThemeDataCopyWith<$Res> {
  _$WoFormThemeDataCopyWithImpl(this._self, this._then);

  final WoFormThemeData _self;
  final $Res Function(WoFormThemeData) _then;

/// Create a copy of WoFormThemeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? booleanFieldBuilder = freezed,Object? dateTimeFieldBuilder = freezed,Object? defaultPhoneCoutry = freezed,Object? durationFieldBuilder = freezed,Object? dynamicInputsNodeAddButtonBuilder = freezed,Object? dynamicInputsNodeAddButtonPosition = freezed,Object? dynamicInputsNodeWidgetBuilder = freezed,Object? formatDuration = freezed,Object? formPageBuilder = freezed,Object? generateId = freezed,Object? headerBuilder = freezed,Object? inputHeaderBuilder = freezed,Object? inputsNodeExpanderBuilder = freezed,Object? inputsNodeWidgetBuilder = freezed,Object? mediaFieldBuilder = freezed,Object? multiStepProgressIndicatorBuilder = freezed,Object? numFieldBuilder = freezed,Object? pickDate = freezed,Object? pickDuration = freezed,Object? pickTime = freezed,Object? quitButtonBuilder = freezed,Object? scoreBuilder = freezed,Object? selectFieldBuilder = freezed,Object? standardScaffoldBuilder = freezed,Object? stringFieldBuilder = freezed,Object? stringFieldErrorLocation = freezed,Object? stringFieldHelperLocation = freezed,Object? stringFieldLabelLocation = freezed,Object? stringFieldPrefixIconLocation = freezed,Object? submitButtonBuilder = freezed,Object? submitButtonMargin = freezed,Object? submitButtonStyle = freezed,Object? onDynamicInputDeletion = freezed,Object? onSubmitError = freezed,Object? maxWidth = freezed,Object? spacing = freezed,Object? showAsteriskIfRequired = freezed,}) {
  return _then(_self.copyWith(
booleanFieldBuilder: freezed == booleanFieldBuilder ? _self.booleanFieldBuilder : booleanFieldBuilder // ignore: cast_nullable_to_non_nullable
as BooleanFieldBuilderDef?,dateTimeFieldBuilder: freezed == dateTimeFieldBuilder ? _self.dateTimeFieldBuilder : dateTimeFieldBuilder // ignore: cast_nullable_to_non_nullable
as DateTimeFieldBuilderDef?,defaultPhoneCoutry: freezed == defaultPhoneCoutry ? _self.defaultPhoneCoutry : defaultPhoneCoutry // ignore: cast_nullable_to_non_nullable
as IsoCode?,durationFieldBuilder: freezed == durationFieldBuilder ? _self.durationFieldBuilder : durationFieldBuilder // ignore: cast_nullable_to_non_nullable
as DurationFieldBuilderDef?,dynamicInputsNodeAddButtonBuilder: freezed == dynamicInputsNodeAddButtonBuilder ? _self.dynamicInputsNodeAddButtonBuilder : dynamicInputsNodeAddButtonBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,dynamicInputsNodeAddButtonPosition: freezed == dynamicInputsNodeAddButtonPosition ? _self.dynamicInputsNodeAddButtonPosition : dynamicInputsNodeAddButtonPosition // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeAddButtonPosition?,dynamicInputsNodeWidgetBuilder: freezed == dynamicInputsNodeWidgetBuilder ? _self.dynamicInputsNodeWidgetBuilder : dynamicInputsNodeWidgetBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,formatDuration: freezed == formatDuration ? _self.formatDuration : formatDuration // ignore: cast_nullable_to_non_nullable
as FormatDurationDef?,formPageBuilder: freezed == formPageBuilder ? _self.formPageBuilder : formPageBuilder // ignore: cast_nullable_to_non_nullable
as WidgetBuilderDef?,generateId: freezed == generateId ? _self.generateId : generateId // ignore: cast_nullable_to_non_nullable
as GenerateIdDef?,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as HeaderBuilderDef?,inputHeaderBuilder: freezed == inputHeaderBuilder ? _self.inputHeaderBuilder : inputHeaderBuilder // ignore: cast_nullable_to_non_nullable
as InputHeaderBuilderDef?,inputsNodeExpanderBuilder: freezed == inputsNodeExpanderBuilder ? _self.inputsNodeExpanderBuilder : inputsNodeExpanderBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,inputsNodeWidgetBuilder: freezed == inputsNodeWidgetBuilder ? _self.inputsNodeWidgetBuilder : inputsNodeWidgetBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,mediaFieldBuilder: freezed == mediaFieldBuilder ? _self.mediaFieldBuilder : mediaFieldBuilder // ignore: cast_nullable_to_non_nullable
as MediaFieldBuilderDef?,multiStepProgressIndicatorBuilder: freezed == multiStepProgressIndicatorBuilder ? _self.multiStepProgressIndicatorBuilder : multiStepProgressIndicatorBuilder // ignore: cast_nullable_to_non_nullable
as MultiStepProgressIndicatorBuilderDef?,numFieldBuilder: freezed == numFieldBuilder ? _self.numFieldBuilder : numFieldBuilder // ignore: cast_nullable_to_non_nullable
as NumFieldBuilderDef?,pickDate: freezed == pickDate ? _self.pickDate : pickDate // ignore: cast_nullable_to_non_nullable
as PickDateDef?,pickDuration: freezed == pickDuration ? _self.pickDuration : pickDuration // ignore: cast_nullable_to_non_nullable
as PickDurationDef?,pickTime: freezed == pickTime ? _self.pickTime : pickTime // ignore: cast_nullable_to_non_nullable
as PickTimeDef?,quitButtonBuilder: freezed == quitButtonBuilder ? _self.quitButtonBuilder : quitButtonBuilder // ignore: cast_nullable_to_non_nullable
as QuitButtonBuilderDef?,scoreBuilder: freezed == scoreBuilder ? _self.scoreBuilder : scoreBuilder // ignore: cast_nullable_to_non_nullable
as ScoreWidgetBuilderDef?,selectFieldBuilder: freezed == selectFieldBuilder ? _self.selectFieldBuilder : selectFieldBuilder // ignore: cast_nullable_to_non_nullable
as SelectFieldBuilderDef<dynamic>?,standardScaffoldBuilder: freezed == standardScaffoldBuilder ? _self.standardScaffoldBuilder : standardScaffoldBuilder // ignore: cast_nullable_to_non_nullable
as ScaffoldBuilderDef?,stringFieldBuilder: freezed == stringFieldBuilder ? _self.stringFieldBuilder : stringFieldBuilder // ignore: cast_nullable_to_non_nullable
as StringFieldBuilderDef?,stringFieldErrorLocation: freezed == stringFieldErrorLocation ? _self.stringFieldErrorLocation : stringFieldErrorLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,stringFieldHelperLocation: freezed == stringFieldHelperLocation ? _self.stringFieldHelperLocation : stringFieldHelperLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,stringFieldLabelLocation: freezed == stringFieldLabelLocation ? _self.stringFieldLabelLocation : stringFieldLabelLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,stringFieldPrefixIconLocation: freezed == stringFieldPrefixIconLocation ? _self.stringFieldPrefixIconLocation : stringFieldPrefixIconLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,submitButtonBuilder: freezed == submitButtonBuilder ? _self.submitButtonBuilder : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
as SubmitButtonBuilderDef?,submitButtonMargin: freezed == submitButtonMargin ? _self.submitButtonMargin : submitButtonMargin // ignore: cast_nullable_to_non_nullable
as SubmitButtonMarginDef?,submitButtonStyle: freezed == submitButtonStyle ? _self.submitButtonStyle : submitButtonStyle // ignore: cast_nullable_to_non_nullable
as SubmitButtonStyleDef?,onDynamicInputDeletion: freezed == onDynamicInputDeletion ? _self.onDynamicInputDeletion : onDynamicInputDeletion // ignore: cast_nullable_to_non_nullable
as OnDynamicInputDeletionDef?,onSubmitError: freezed == onSubmitError ? _self.onSubmitError : onSubmitError // ignore: cast_nullable_to_non_nullable
as OnSubmitErrorDef?,maxWidth: freezed == maxWidth ? _self.maxWidth : maxWidth // ignore: cast_nullable_to_non_nullable
as double?,spacing: freezed == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double?,showAsteriskIfRequired: freezed == showAsteriskIfRequired ? _self.showAsteriskIfRequired : showAsteriskIfRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _WoFormThemeData extends WoFormThemeData {
  const _WoFormThemeData({@notSerializable this.booleanFieldBuilder, @notSerializable this.dateTimeFieldBuilder, @notSerializable this.defaultPhoneCoutry, @notSerializable this.durationFieldBuilder, @notSerializable this.dynamicInputsNodeAddButtonBuilder, this.dynamicInputsNodeAddButtonPosition, @notSerializable this.dynamicInputsNodeWidgetBuilder, @notSerializable this.formatDuration, @notSerializable this.formPageBuilder, @notSerializable this.generateId, @notSerializable this.headerBuilder, @notSerializable this.inputHeaderBuilder, @notSerializable this.inputsNodeExpanderBuilder, @notSerializable this.inputsNodeWidgetBuilder, @notSerializable this.mediaFieldBuilder, @notSerializable this.multiStepProgressIndicatorBuilder, @notSerializable this.numFieldBuilder, @notSerializable this.pickDate, @notSerializable this.pickDuration, @notSerializable this.pickTime, @notSerializable this.quitButtonBuilder, @notSerializable this.scoreBuilder, @notSerializable this.selectFieldBuilder, @notSerializable this.standardScaffoldBuilder, @notSerializable this.stringFieldBuilder, this.stringFieldErrorLocation, this.stringFieldHelperLocation, this.stringFieldLabelLocation, this.stringFieldPrefixIconLocation, @notSerializable this.submitButtonBuilder, @notSerializable this.submitButtonMargin, @notSerializable this.submitButtonStyle, @notSerializable this.onDynamicInputDeletion, @notSerializable this.onSubmitError, this.maxWidth, this.spacing, this.showAsteriskIfRequired}): super._();
  factory _WoFormThemeData.fromJson(Map<String, dynamic> json) => _$WoFormThemeDataFromJson(json);

@override@notSerializable final  BooleanFieldBuilderDef? booleanFieldBuilder;
@override@notSerializable final  DateTimeFieldBuilderDef? dateTimeFieldBuilder;
@override@notSerializable final  IsoCode? defaultPhoneCoutry;
@override@notSerializable final  DurationFieldBuilderDef? durationFieldBuilder;
@override@notSerializable final  DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeAddButtonBuilder;
@override final  DynamicInputsNodeAddButtonPosition? dynamicInputsNodeAddButtonPosition;
@override@notSerializable final  DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder;
@override@notSerializable final  FormatDurationDef? formatDuration;
@override@notSerializable final  WidgetBuilderDef? formPageBuilder;
@override@notSerializable final  GenerateIdDef? generateId;
@override@notSerializable final  HeaderBuilderDef? headerBuilder;
@override@notSerializable final  InputHeaderBuilderDef? inputHeaderBuilder;
/// Only used when [ChildrenVisibility.whenAsked].
///
/// Default to [InputsNodeExpander.page].
/// An alternative is [InputsNodeExpander.modal].
@override@notSerializable final  InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder;
@override@notSerializable final  InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder;
@override@notSerializable final  MediaFieldBuilderDef? mediaFieldBuilder;
@override@notSerializable final  MultiStepProgressIndicatorBuilderDef? multiStepProgressIndicatorBuilder;
@override@notSerializable final  NumFieldBuilderDef? numFieldBuilder;
@override@notSerializable final  PickDateDef? pickDate;
@override@notSerializable final  PickDurationDef? pickDuration;
@override@notSerializable final  PickTimeDef? pickTime;
/// If this is set and returns null, there won't be a quit button.
@override@notSerializable final  QuitButtonBuilderDef? quitButtonBuilder;
@override@notSerializable final  ScoreWidgetBuilderDef? scoreBuilder;
@override@notSerializable final  SelectFieldBuilderDef<dynamic>? selectFieldBuilder;
@override@notSerializable final  ScaffoldBuilderDef? standardScaffoldBuilder;
@override@notSerializable final  StringFieldBuilderDef? stringFieldBuilder;
@override final  StringFieldLocation? stringFieldErrorLocation;
@override final  StringFieldLocation? stringFieldHelperLocation;
@override final  StringFieldLocation? stringFieldLabelLocation;
@override final  StringFieldLocation? stringFieldPrefixIconLocation;
@override@notSerializable final  SubmitButtonBuilderDef? submitButtonBuilder;
/// Default values :
/// - SubmitButtonPosition.body: EdgeInsets.only(top: 32, bottom: 12)
/// - SubmitButtonPosition.bottomBar : EdgeInsets.symmetric(vertical: 16)
///
/// For appBar and floating, the margin is not implemented yet.
@override@notSerializable final  SubmitButtonMarginDef? submitButtonMargin;
/// Not compatible with SubmitButtonPosition.floating.
@override@notSerializable final  SubmitButtonStyleDef? submitButtonStyle;
@override@notSerializable final  OnDynamicInputDeletionDef? onDynamicInputDeletion;
@override@notSerializable final  OnSubmitErrorDef? onSubmitError;
/// The form's entire width won't exceed this value. Defaults to 512.
@override final  double? maxWidth;
/// This spacing will be placed between each [WoFormNode].
@override final  double? spacing;
/// Add the characters ' *' after the labelText of [WoFormInput]s.
/// Default to true.
@override final  bool? showAsteriskIfRequired;

/// Create a copy of WoFormThemeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WoFormThemeDataCopyWith<_WoFormThemeData> get copyWith => __$WoFormThemeDataCopyWithImpl<_WoFormThemeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WoFormThemeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WoFormThemeData&&(identical(other.booleanFieldBuilder, booleanFieldBuilder) || other.booleanFieldBuilder == booleanFieldBuilder)&&(identical(other.dateTimeFieldBuilder, dateTimeFieldBuilder) || other.dateTimeFieldBuilder == dateTimeFieldBuilder)&&(identical(other.defaultPhoneCoutry, defaultPhoneCoutry) || other.defaultPhoneCoutry == defaultPhoneCoutry)&&(identical(other.durationFieldBuilder, durationFieldBuilder) || other.durationFieldBuilder == durationFieldBuilder)&&(identical(other.dynamicInputsNodeAddButtonBuilder, dynamicInputsNodeAddButtonBuilder) || other.dynamicInputsNodeAddButtonBuilder == dynamicInputsNodeAddButtonBuilder)&&(identical(other.dynamicInputsNodeAddButtonPosition, dynamicInputsNodeAddButtonPosition) || other.dynamicInputsNodeAddButtonPosition == dynamicInputsNodeAddButtonPosition)&&(identical(other.dynamicInputsNodeWidgetBuilder, dynamicInputsNodeWidgetBuilder) || other.dynamicInputsNodeWidgetBuilder == dynamicInputsNodeWidgetBuilder)&&(identical(other.formatDuration, formatDuration) || other.formatDuration == formatDuration)&&(identical(other.formPageBuilder, formPageBuilder) || other.formPageBuilder == formPageBuilder)&&(identical(other.generateId, generateId) || other.generateId == generateId)&&(identical(other.headerBuilder, headerBuilder) || other.headerBuilder == headerBuilder)&&(identical(other.inputHeaderBuilder, inputHeaderBuilder) || other.inputHeaderBuilder == inputHeaderBuilder)&&(identical(other.inputsNodeExpanderBuilder, inputsNodeExpanderBuilder) || other.inputsNodeExpanderBuilder == inputsNodeExpanderBuilder)&&(identical(other.inputsNodeWidgetBuilder, inputsNodeWidgetBuilder) || other.inputsNodeWidgetBuilder == inputsNodeWidgetBuilder)&&(identical(other.mediaFieldBuilder, mediaFieldBuilder) || other.mediaFieldBuilder == mediaFieldBuilder)&&(identical(other.multiStepProgressIndicatorBuilder, multiStepProgressIndicatorBuilder) || other.multiStepProgressIndicatorBuilder == multiStepProgressIndicatorBuilder)&&(identical(other.numFieldBuilder, numFieldBuilder) || other.numFieldBuilder == numFieldBuilder)&&(identical(other.pickDate, pickDate) || other.pickDate == pickDate)&&(identical(other.pickDuration, pickDuration) || other.pickDuration == pickDuration)&&(identical(other.pickTime, pickTime) || other.pickTime == pickTime)&&(identical(other.quitButtonBuilder, quitButtonBuilder) || other.quitButtonBuilder == quitButtonBuilder)&&(identical(other.scoreBuilder, scoreBuilder) || other.scoreBuilder == scoreBuilder)&&(identical(other.selectFieldBuilder, selectFieldBuilder) || other.selectFieldBuilder == selectFieldBuilder)&&(identical(other.standardScaffoldBuilder, standardScaffoldBuilder) || other.standardScaffoldBuilder == standardScaffoldBuilder)&&(identical(other.stringFieldBuilder, stringFieldBuilder) || other.stringFieldBuilder == stringFieldBuilder)&&(identical(other.stringFieldErrorLocation, stringFieldErrorLocation) || other.stringFieldErrorLocation == stringFieldErrorLocation)&&(identical(other.stringFieldHelperLocation, stringFieldHelperLocation) || other.stringFieldHelperLocation == stringFieldHelperLocation)&&(identical(other.stringFieldLabelLocation, stringFieldLabelLocation) || other.stringFieldLabelLocation == stringFieldLabelLocation)&&(identical(other.stringFieldPrefixIconLocation, stringFieldPrefixIconLocation) || other.stringFieldPrefixIconLocation == stringFieldPrefixIconLocation)&&(identical(other.submitButtonBuilder, submitButtonBuilder) || other.submitButtonBuilder == submitButtonBuilder)&&(identical(other.submitButtonMargin, submitButtonMargin) || other.submitButtonMargin == submitButtonMargin)&&(identical(other.submitButtonStyle, submitButtonStyle) || other.submitButtonStyle == submitButtonStyle)&&(identical(other.onDynamicInputDeletion, onDynamicInputDeletion) || other.onDynamicInputDeletion == onDynamicInputDeletion)&&(identical(other.onSubmitError, onSubmitError) || other.onSubmitError == onSubmitError)&&(identical(other.maxWidth, maxWidth) || other.maxWidth == maxWidth)&&(identical(other.spacing, spacing) || other.spacing == spacing)&&(identical(other.showAsteriskIfRequired, showAsteriskIfRequired) || other.showAsteriskIfRequired == showAsteriskIfRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,booleanFieldBuilder,dateTimeFieldBuilder,defaultPhoneCoutry,durationFieldBuilder,dynamicInputsNodeAddButtonBuilder,dynamicInputsNodeAddButtonPosition,dynamicInputsNodeWidgetBuilder,formatDuration,formPageBuilder,generateId,headerBuilder,inputHeaderBuilder,inputsNodeExpanderBuilder,inputsNodeWidgetBuilder,mediaFieldBuilder,multiStepProgressIndicatorBuilder,numFieldBuilder,pickDate,pickDuration,pickTime,quitButtonBuilder,scoreBuilder,selectFieldBuilder,standardScaffoldBuilder,stringFieldBuilder,stringFieldErrorLocation,stringFieldHelperLocation,stringFieldLabelLocation,stringFieldPrefixIconLocation,submitButtonBuilder,submitButtonMargin,submitButtonStyle,onDynamicInputDeletion,onSubmitError,maxWidth,spacing,showAsteriskIfRequired]);

@override
String toString() {
  return 'WoFormThemeData(booleanFieldBuilder: $booleanFieldBuilder, dateTimeFieldBuilder: $dateTimeFieldBuilder, defaultPhoneCoutry: $defaultPhoneCoutry, durationFieldBuilder: $durationFieldBuilder, dynamicInputsNodeAddButtonBuilder: $dynamicInputsNodeAddButtonBuilder, dynamicInputsNodeAddButtonPosition: $dynamicInputsNodeAddButtonPosition, dynamicInputsNodeWidgetBuilder: $dynamicInputsNodeWidgetBuilder, formatDuration: $formatDuration, formPageBuilder: $formPageBuilder, generateId: $generateId, headerBuilder: $headerBuilder, inputHeaderBuilder: $inputHeaderBuilder, inputsNodeExpanderBuilder: $inputsNodeExpanderBuilder, inputsNodeWidgetBuilder: $inputsNodeWidgetBuilder, mediaFieldBuilder: $mediaFieldBuilder, multiStepProgressIndicatorBuilder: $multiStepProgressIndicatorBuilder, numFieldBuilder: $numFieldBuilder, pickDate: $pickDate, pickDuration: $pickDuration, pickTime: $pickTime, quitButtonBuilder: $quitButtonBuilder, scoreBuilder: $scoreBuilder, selectFieldBuilder: $selectFieldBuilder, standardScaffoldBuilder: $standardScaffoldBuilder, stringFieldBuilder: $stringFieldBuilder, stringFieldErrorLocation: $stringFieldErrorLocation, stringFieldHelperLocation: $stringFieldHelperLocation, stringFieldLabelLocation: $stringFieldLabelLocation, stringFieldPrefixIconLocation: $stringFieldPrefixIconLocation, submitButtonBuilder: $submitButtonBuilder, submitButtonMargin: $submitButtonMargin, submitButtonStyle: $submitButtonStyle, onDynamicInputDeletion: $onDynamicInputDeletion, onSubmitError: $onSubmitError, maxWidth: $maxWidth, spacing: $spacing, showAsteriskIfRequired: $showAsteriskIfRequired)';
}


}

/// @nodoc
abstract mixin class _$WoFormThemeDataCopyWith<$Res> implements $WoFormThemeDataCopyWith<$Res> {
  factory _$WoFormThemeDataCopyWith(_WoFormThemeData value, $Res Function(_WoFormThemeData) _then) = __$WoFormThemeDataCopyWithImpl;
@override @useResult
$Res call({
@notSerializable BooleanFieldBuilderDef? booleanFieldBuilder,@notSerializable DateTimeFieldBuilderDef? dateTimeFieldBuilder,@notSerializable IsoCode? defaultPhoneCoutry,@notSerializable DurationFieldBuilderDef? durationFieldBuilder,@notSerializable DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeAddButtonBuilder, DynamicInputsNodeAddButtonPosition? dynamicInputsNodeAddButtonPosition,@notSerializable DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,@notSerializable FormatDurationDef? formatDuration,@notSerializable WidgetBuilderDef? formPageBuilder,@notSerializable GenerateIdDef? generateId,@notSerializable HeaderBuilderDef? headerBuilder,@notSerializable InputHeaderBuilderDef? inputHeaderBuilder,@notSerializable InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,@notSerializable InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,@notSerializable MediaFieldBuilderDef? mediaFieldBuilder,@notSerializable MultiStepProgressIndicatorBuilderDef? multiStepProgressIndicatorBuilder,@notSerializable NumFieldBuilderDef? numFieldBuilder,@notSerializable PickDateDef? pickDate,@notSerializable PickDurationDef? pickDuration,@notSerializable PickTimeDef? pickTime,@notSerializable QuitButtonBuilderDef? quitButtonBuilder,@notSerializable ScoreWidgetBuilderDef? scoreBuilder,@notSerializable SelectFieldBuilderDef<dynamic>? selectFieldBuilder,@notSerializable ScaffoldBuilderDef? standardScaffoldBuilder,@notSerializable StringFieldBuilderDef? stringFieldBuilder, StringFieldLocation? stringFieldErrorLocation, StringFieldLocation? stringFieldHelperLocation, StringFieldLocation? stringFieldLabelLocation, StringFieldLocation? stringFieldPrefixIconLocation,@notSerializable SubmitButtonBuilderDef? submitButtonBuilder,@notSerializable SubmitButtonMarginDef? submitButtonMargin,@notSerializable SubmitButtonStyleDef? submitButtonStyle,@notSerializable OnDynamicInputDeletionDef? onDynamicInputDeletion,@notSerializable OnSubmitErrorDef? onSubmitError, double? maxWidth, double? spacing, bool? showAsteriskIfRequired
});




}
/// @nodoc
class __$WoFormThemeDataCopyWithImpl<$Res>
    implements _$WoFormThemeDataCopyWith<$Res> {
  __$WoFormThemeDataCopyWithImpl(this._self, this._then);

  final _WoFormThemeData _self;
  final $Res Function(_WoFormThemeData) _then;

/// Create a copy of WoFormThemeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? booleanFieldBuilder = freezed,Object? dateTimeFieldBuilder = freezed,Object? defaultPhoneCoutry = freezed,Object? durationFieldBuilder = freezed,Object? dynamicInputsNodeAddButtonBuilder = freezed,Object? dynamicInputsNodeAddButtonPosition = freezed,Object? dynamicInputsNodeWidgetBuilder = freezed,Object? formatDuration = freezed,Object? formPageBuilder = freezed,Object? generateId = freezed,Object? headerBuilder = freezed,Object? inputHeaderBuilder = freezed,Object? inputsNodeExpanderBuilder = freezed,Object? inputsNodeWidgetBuilder = freezed,Object? mediaFieldBuilder = freezed,Object? multiStepProgressIndicatorBuilder = freezed,Object? numFieldBuilder = freezed,Object? pickDate = freezed,Object? pickDuration = freezed,Object? pickTime = freezed,Object? quitButtonBuilder = freezed,Object? scoreBuilder = freezed,Object? selectFieldBuilder = freezed,Object? standardScaffoldBuilder = freezed,Object? stringFieldBuilder = freezed,Object? stringFieldErrorLocation = freezed,Object? stringFieldHelperLocation = freezed,Object? stringFieldLabelLocation = freezed,Object? stringFieldPrefixIconLocation = freezed,Object? submitButtonBuilder = freezed,Object? submitButtonMargin = freezed,Object? submitButtonStyle = freezed,Object? onDynamicInputDeletion = freezed,Object? onSubmitError = freezed,Object? maxWidth = freezed,Object? spacing = freezed,Object? showAsteriskIfRequired = freezed,}) {
  return _then(_WoFormThemeData(
booleanFieldBuilder: freezed == booleanFieldBuilder ? _self.booleanFieldBuilder : booleanFieldBuilder // ignore: cast_nullable_to_non_nullable
as BooleanFieldBuilderDef?,dateTimeFieldBuilder: freezed == dateTimeFieldBuilder ? _self.dateTimeFieldBuilder : dateTimeFieldBuilder // ignore: cast_nullable_to_non_nullable
as DateTimeFieldBuilderDef?,defaultPhoneCoutry: freezed == defaultPhoneCoutry ? _self.defaultPhoneCoutry : defaultPhoneCoutry // ignore: cast_nullable_to_non_nullable
as IsoCode?,durationFieldBuilder: freezed == durationFieldBuilder ? _self.durationFieldBuilder : durationFieldBuilder // ignore: cast_nullable_to_non_nullable
as DurationFieldBuilderDef?,dynamicInputsNodeAddButtonBuilder: freezed == dynamicInputsNodeAddButtonBuilder ? _self.dynamicInputsNodeAddButtonBuilder : dynamicInputsNodeAddButtonBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,dynamicInputsNodeAddButtonPosition: freezed == dynamicInputsNodeAddButtonPosition ? _self.dynamicInputsNodeAddButtonPosition : dynamicInputsNodeAddButtonPosition // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeAddButtonPosition?,dynamicInputsNodeWidgetBuilder: freezed == dynamicInputsNodeWidgetBuilder ? _self.dynamicInputsNodeWidgetBuilder : dynamicInputsNodeWidgetBuilder // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeWidgetBuilderDef?,formatDuration: freezed == formatDuration ? _self.formatDuration : formatDuration // ignore: cast_nullable_to_non_nullable
as FormatDurationDef?,formPageBuilder: freezed == formPageBuilder ? _self.formPageBuilder : formPageBuilder // ignore: cast_nullable_to_non_nullable
as WidgetBuilderDef?,generateId: freezed == generateId ? _self.generateId : generateId // ignore: cast_nullable_to_non_nullable
as GenerateIdDef?,headerBuilder: freezed == headerBuilder ? _self.headerBuilder : headerBuilder // ignore: cast_nullable_to_non_nullable
as HeaderBuilderDef?,inputHeaderBuilder: freezed == inputHeaderBuilder ? _self.inputHeaderBuilder : inputHeaderBuilder // ignore: cast_nullable_to_non_nullable
as InputHeaderBuilderDef?,inputsNodeExpanderBuilder: freezed == inputsNodeExpanderBuilder ? _self.inputsNodeExpanderBuilder : inputsNodeExpanderBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,inputsNodeWidgetBuilder: freezed == inputsNodeWidgetBuilder ? _self.inputsNodeWidgetBuilder : inputsNodeWidgetBuilder // ignore: cast_nullable_to_non_nullable
as InputNodeWidgetBuilderDef?,mediaFieldBuilder: freezed == mediaFieldBuilder ? _self.mediaFieldBuilder : mediaFieldBuilder // ignore: cast_nullable_to_non_nullable
as MediaFieldBuilderDef?,multiStepProgressIndicatorBuilder: freezed == multiStepProgressIndicatorBuilder ? _self.multiStepProgressIndicatorBuilder : multiStepProgressIndicatorBuilder // ignore: cast_nullable_to_non_nullable
as MultiStepProgressIndicatorBuilderDef?,numFieldBuilder: freezed == numFieldBuilder ? _self.numFieldBuilder : numFieldBuilder // ignore: cast_nullable_to_non_nullable
as NumFieldBuilderDef?,pickDate: freezed == pickDate ? _self.pickDate : pickDate // ignore: cast_nullable_to_non_nullable
as PickDateDef?,pickDuration: freezed == pickDuration ? _self.pickDuration : pickDuration // ignore: cast_nullable_to_non_nullable
as PickDurationDef?,pickTime: freezed == pickTime ? _self.pickTime : pickTime // ignore: cast_nullable_to_non_nullable
as PickTimeDef?,quitButtonBuilder: freezed == quitButtonBuilder ? _self.quitButtonBuilder : quitButtonBuilder // ignore: cast_nullable_to_non_nullable
as QuitButtonBuilderDef?,scoreBuilder: freezed == scoreBuilder ? _self.scoreBuilder : scoreBuilder // ignore: cast_nullable_to_non_nullable
as ScoreWidgetBuilderDef?,selectFieldBuilder: freezed == selectFieldBuilder ? _self.selectFieldBuilder : selectFieldBuilder // ignore: cast_nullable_to_non_nullable
as SelectFieldBuilderDef<dynamic>?,standardScaffoldBuilder: freezed == standardScaffoldBuilder ? _self.standardScaffoldBuilder : standardScaffoldBuilder // ignore: cast_nullable_to_non_nullable
as ScaffoldBuilderDef?,stringFieldBuilder: freezed == stringFieldBuilder ? _self.stringFieldBuilder : stringFieldBuilder // ignore: cast_nullable_to_non_nullable
as StringFieldBuilderDef?,stringFieldErrorLocation: freezed == stringFieldErrorLocation ? _self.stringFieldErrorLocation : stringFieldErrorLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,stringFieldHelperLocation: freezed == stringFieldHelperLocation ? _self.stringFieldHelperLocation : stringFieldHelperLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,stringFieldLabelLocation: freezed == stringFieldLabelLocation ? _self.stringFieldLabelLocation : stringFieldLabelLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,stringFieldPrefixIconLocation: freezed == stringFieldPrefixIconLocation ? _self.stringFieldPrefixIconLocation : stringFieldPrefixIconLocation // ignore: cast_nullable_to_non_nullable
as StringFieldLocation?,submitButtonBuilder: freezed == submitButtonBuilder ? _self.submitButtonBuilder : submitButtonBuilder // ignore: cast_nullable_to_non_nullable
as SubmitButtonBuilderDef?,submitButtonMargin: freezed == submitButtonMargin ? _self.submitButtonMargin : submitButtonMargin // ignore: cast_nullable_to_non_nullable
as SubmitButtonMarginDef?,submitButtonStyle: freezed == submitButtonStyle ? _self.submitButtonStyle : submitButtonStyle // ignore: cast_nullable_to_non_nullable
as SubmitButtonStyleDef?,onDynamicInputDeletion: freezed == onDynamicInputDeletion ? _self.onDynamicInputDeletion : onDynamicInputDeletion // ignore: cast_nullable_to_non_nullable
as OnDynamicInputDeletionDef?,onSubmitError: freezed == onSubmitError ? _self.onSubmitError : onSubmitError // ignore: cast_nullable_to_non_nullable
as OnSubmitErrorDef?,maxWidth: freezed == maxWidth ? _self.maxWidth : maxWidth // ignore: cast_nullable_to_non_nullable
as double?,spacing: freezed == spacing ? _self.spacing : spacing // ignore: cast_nullable_to_non_nullable
as double?,showAsteriskIfRequired: freezed == showAsteriskIfRequired ? _self.showAsteriskIfRequired : showAsteriskIfRequired // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on

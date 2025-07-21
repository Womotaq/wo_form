import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

export 'package:phone_form_field/phone_form_field.dart' show IsoCode;

part 'wo_form_theme_data.freezed.dart';

typedef WidgetBuilderDef = Widget Function(BuildContext context);
typedef ScoreWidgetBuilderDef = Widget Function({required num score});

@freezed
abstract class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    BooleanFieldBuilderDef? booleanFieldBuilder,
    DateTimeFieldBuilderDef? dateTimeFieldBuilder,
    IsoCode? defaultPhoneCoutry,
    DurationFieldBuilderDef? durationFieldBuilder,
    DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,
    FormatDurationDef? formatDuration,
    WidgetBuilderDef? formPageBuilder,
    GenerateIdDef? generateId,
    HeaderBuilderDef? headerBuilder,
    InputHeaderBuilderDef? inputHeaderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,
    MediaFieldBuilderDef? mediaFieldBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    PickDateDef? pickDate,
    PickDurationDef? pickDuration,
    PickTimeDef? pickTime,
    ScoreWidgetBuilderDef? scoreBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    ScaffoldBuilderDef? standardScaffoldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
    SubmitButtonBuilderDef? submitButtonBuilder,
    OnDynamicInputDeletionDef? onDynamicInputDeletion,
    OnSubmitErrorDef? onSubmitError,

    /// This spacing will be added at the bottom of each [WoFormNodeMixin].
    double? verticalSpacing,

    /// Add the characters ' *' after the labelText of [WoFormInput]s.
    /// Default to true.
    bool? showAsteriskIfRequired,

    // TODO : PlaceRepository
    /// Your proxy for addresses autocompletion in string fields.
    ///
    /// The provided [input] is a string to add in the body. You also need
    /// to add you own google api key. Exemple :
    /// 'https://maps.googleapis.com/maps/api/place/autocomplete/json?key=${widget.googleAPIKey}&input=' + input
    Future<Map<String, dynamic>> Function(String input)? getPlacePredictions,

    /// Your proxy for longitude and latitude of addresses.
    ///
    /// The provided [placeId] is a string to add in the body. You also need
    /// to add you own google api key. Exemple :
    /// 'https://maps.googleapis.com/maps/api/place/details/json?key=${widget.googleAPIKey}&placeid=' + placeId
    Future<Map<String, dynamic>> Function(String placeId)? getPlaceDetails,
  }) = _WoFormThemeData;

  const WoFormThemeData._();
}

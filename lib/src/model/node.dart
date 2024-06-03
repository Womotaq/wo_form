import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'node.freezed.dart';
part 'node.g.dart';

mixin WoFormElementMixin {
  String get id;

  Map<String, dynamic> toJson();
}

// @freezed
// sealed class WoForm with _$WoForm, WoFormElementMixin {
//   const factory WoForm.root({
//     @Default(r'$root$') String id,
//     @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
//     Map<String, dynamic>? unmodifiableValuesJson,
//   }) = WoFormRoot;

//   const factory WoForm.inputs({
//     required String id,
//     @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
//     Map<String, dynamic>? unmodifiableValuesJson,
//     @JsonKey(toJson: MapFieldSettings.staticToJson)
//     @Default(MapFieldSettings())
//     MapFieldSettings fieldSettings,
//   }) = InputsNode;

//   const WoForm._();

//   factory WoForm.fromJson(Map<String, dynamic> json) => _$WoFormFromJson(json);

//   // --

//   Map<String, dynamic> defaultValues() => {
//         for (final input in inputs)
//           if (input is WoForm)
//             input.id: input.defaultValues()
//           else if (input is WoFormInputMixin)
//             input.id: (input as WoFormInputMixin).defaultValue,
//       };

//   Iterable<WoFormInputError> getErrors(Map<String, dynamic> valuesMap) => [
//         for (final input in inputs)
//           if (input is WoForm)
//             ...input.getErrors(valuesMap)
//           else if (input is WoFormInputMixin)
//             (input as WoFormInputMixin).getError(valuesMap[input.id]),
//       ].whereNotNull();

//   Widget toWidget<T extends WoFormValuesCubit>() {
//     switch (this) {
//       case WoFormRoot():
//         throw UnimplementedError();
//       case InputsNode():
//         return InputsNodeWidget<T>(inputId: id);
//     }
//   }

//   Map<String, dynamic> valueToJson(Map<String, dynamic> valuesMap) {
//     return {
//       ...unmodifiableValuesJson ?? {},
//       for (final input in inputs)
//         if (input is WoForm)
//           input.id: input.valueToJson(valuesMap)
//         else if (input is WoFormInputMixin)
//           input.id:
//               (input as WoFormInputMixin).valueToJson(valuesMap[input.id]),
//     };
//   }
// }

// @freezed
// abstract class WoFormValues with _$WoFormValues {
//   const factory WoFormValues({
//     required Map<String, dynamic> valuesMap,
//     @Default(WoFormStatus.idle) WoFormStatus status,
//     String? errorCode,
//   }) = _WoFormValues;

//   /// Required for the override getter
//   const WoFormValues._();

//   // --

//   String? getInvalidExplanation(
//     WoFormInputMixin input,
//     FormLocalizations formL10n,
//   ) {
//     if (status != WoFormStatus.invalid) return null;

//     return input.getInvalidExplanation(valuesMap[input.id], formL10n);
//   }
// }

@freezed
sealed class WoFormNode with _$WoFormNode, WoFormElementMixin {
  const factory WoFormNode.root({
    @Default(r'$root$') String id,
    Map<String, dynamic>? unmodifiableValuesJson,
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
  }) = WoForm;

  const factory WoFormNode.inputs({
    required String id,
    Map<String, dynamic>? unmodifiableValuesJson,
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
    @JsonKey(toJson: MapFieldSettings.staticToJson)
    @Default(MapFieldSettings())
    MapFieldSettings fieldSettings,
  }) = InputsNode;

  const WoFormNode._();

  factory WoFormNode.fromJson(Map<String, dynamic> json) =>
      _$WoFormNodeFromJson(json);

  // --

  Map<String, dynamic> defaultValues() => {
        for (final input in inputs)
          if (input is WoFormNode)
            input.id: input.defaultValues()
          else if (input is WoFormInputMixin)
            input.id: (input as WoFormInputMixin).defaultValue,
      };

  Iterable<WoFormInputError> getErrors(Map<String, dynamic> valuesMap) => [
        for (final input in inputs)
          if (input is WoFormNode)
            ...input.getErrors(valuesMap)
          else if (input is WoFormInputMixin)
            (input as WoFormInputMixin).getError(valuesMap[input.id]),
      ].whereNotNull();

  WoFormElementMixin? getInput({required String inputId}) {
    for (final input in inputs) {
      if (input.id == inputId) return input;

      if (input is WoFormNode) {
        final gatcha = input.getInput(inputId: inputId);
        if (gatcha != null) return gatcha;
      }
    }

    return null;
  }

  Widget toWidget<T extends WoFormValuesCubit>() => switch (this) {
        WoForm() => throw UnimplementedError(),
        InputsNode() => InputsNodeWidget<T>(inputId: id),
      };

  Map<String, dynamic> valueToJson(Map<String, dynamic> valuesMap) => {
        ...unmodifiableValuesJson ?? {},
        for (final input in inputs)
          if (input is WoFormNode)
            input.id: input.valueToJson(valuesMap)
          else if (input is WoFormInputMixin)
            input.id:
                (input as WoFormInputMixin).valueToJson(valuesMap[input.id]),
      };
}

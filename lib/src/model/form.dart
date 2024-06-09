import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/src/ui/prefab/wo_form_screen.dart';
import 'package:wo_form/wo_form.dart';

part 'form.freezed.dart';
part 'form.g.dart';

@freezed
class WoForm with _$WoForm {
  const factory WoForm({
    Map<String, dynamic>? unmodifiableValuesJson,
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
    @Default(false) bool initialStatusIsSubmitted,
    @JsonKey(toJson: WoFormUiSettings.staticToJson)
    @Default(WoFormUiSettings())
    WoFormUiSettings uiSettings,
  }) = _WoForm;

  const WoForm._();

  factory WoForm.fromJson(Map<String, dynamic> json) => _$WoFormFromJson(json);

  // --

  Iterable<WoFormNode> get nodes => inputs.whereType();

  Map<String, dynamic> defaultValues() => {
        for (final input in inputs)
          if (input is WoFormNode)
            ...input.defaultValues(parentPath: '')
          else if (input is WoFormInputMixin)
            '/${input.id}': (input as WoFormInputMixin).defaultValue,
      };

  Map<String, dynamic> exportValues(Map<String, dynamic> valuesMap) => {
        ...unmodifiableValuesJson ?? {},
        for (final input in inputs)
          if (input is WoFormNode)
            input.id: input.exportValues(valuesMap, parentPath: '')
          else if (input is WoFormInputMixin)
            input.id: (input as WoFormInputMixin)
                .exportValue(valuesMap['/${input.id}']),
      };

  Iterable<WoFormInputError> getErrors(Map<String, dynamic> valuesMap) => [
        for (final input in inputs)
          if (input is WoFormNode)
            ...input.getErrors(valuesMap, parentPath: '')
          else if (input is WoFormInputMixin)
            (input as WoFormInputMixin).getError(valuesMap['/${input.id}']),
      ].whereNotNull();

  /// The path of an input is the ids of it and its parents, separated by the
  /// character '/'.
  ///
  /// Exemple :
  ///
  /// InputsNode(
  ///   id: 'profile',
  ///   inputs: [
  ///     StringInput(
  ///       id: 'name',
  ///       ...
  ///
  /// The path of the input with id 'name' is '/profile/name'.
  /// In a form, the full path might be '/#/profile/name'
  WoFormElementMixin? getInput({
    required String path,
    Map<String, dynamic>? valuesMap,
  }) {
    if (!path.startsWith('/')) {
      throw ArgumentError('An input path must start with character "/".');
    }

    final slashIndex = path.substring(1).indexOf('/');

    if (slashIndex == -1) {
      return inputs.firstWhereOrNull((i) => i.id == path.substring(1));
    }

    return nodes
        .firstWhereOrNull((i) => i.id == path.substring(1, slashIndex + 1))
        ?.getInput(path: path.substring(slashIndex + 1), valuesMap: valuesMap);
  }

  Widget toPage({
    void Function(Map<String, dynamic> values)? onSubmitting,
    void Function(BuildContext context)? onSubmitted,
  }) {
    final widget = toWidget(
      onSubmitting: onSubmitting,
      onSubmitted: onSubmitted,
    );

    return uiSettings.displayMode == WoFormDisplayMode.page
        ? widget
        : Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: WoPadding.allMedium(child: widget),
            ),
          );
  }

  Widget toWidget({
    void Function(Map<String, dynamic> values)? onSubmitting,
    void Function(BuildContext context)? onSubmitted,
  }) =>
      WoFormScreen(
        form: this,
        onSubmitting: onSubmitting,
        onSubmitted: onSubmitted,
      );
}

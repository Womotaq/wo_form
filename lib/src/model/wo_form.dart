import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/example/ui/prefab/wo_form_screen.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form.freezed.dart';
part 'wo_form.g.dart';

@freezed
class WoForm with _$WoForm {
  const factory WoForm({
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(InitialStatus())
    WoFormStatus initialStatus,
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Future<bool?> Function(BuildContext context)? canQuit,
    @JsonKey(toJson: WoFormUiSettings.staticToJson)
    @Default(WoFormUiSettings())
    WoFormUiSettings uiSettings,
    @JsonKey(toJson: ExportSettings.staticToJson)
    @Default(ExportSettings())
    ExportSettings exportSettings,
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

  Iterable<WoFormInputError> getErrors(Map<String, dynamic> values) => [
        for (final input in inputs)
          if (input is WoFormNode)
            ...input.getErrors(values, parentPath: '')
          else if (input is WoFormInputMixin)
            (input as WoFormInputMixin).getError(values['/${input.id}']),
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
    Map<String, dynamic>? values,
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
        ?.getInput(
          path: path.substring(slashIndex + 1),
          parentPath: '',
          values: values,
        );
  }

  dynamic export(Map<String, dynamic> values) =>
      switch (exportSettings.exportType) {
        ExportType.list => [
            ...?exportSettings.exportedMetadata?.values,
            for (final input in inputs)
              input.export(
                values: values,
                parentPath: '',
              ),
          ],
        ExportType.map => {
            ...?exportSettings.exportedMetadata,
            for (final input in inputs)
              input.id: input.export(
                values: values,
                parentPath: '',
              ),
          },
      };

  Widget toPage({
    void Function(Map<String, dynamic> values)? onSubmitting,
    void Function(BuildContext context)? onSubmitted,
  }) =>
      toWidget(
        onSubmitting: onSubmitting,
        onSubmitted: onSubmitted,
      );

  @protected
  Widget toWidget({
    void Function(Map<String, dynamic> values)? onSubmitting,
    void Function(BuildContext context)? onSubmitted,
  }) =>
      WoFormPage(
        form: this,
        onSubmitting: onSubmitting,
        onSubmitted: onSubmitted,
      );
}

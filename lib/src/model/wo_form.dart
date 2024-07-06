import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form.freezed.dart';
part 'wo_form.g.dart';

typedef OnSubmitErrorDef = void Function(
  BuildContext context,
  SubmitErrorStatus errorStatus,
);

typedef WoFormPageBuilderDef = Widget Function(BuildContext context);

@freezed
class WoForm with _$WoForm {
  const factory WoForm({
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Future<void> Function(WoForm form, WoFormValues values)? onSubmitting,
    @JsonKey(includeToJson: false, includeFromJson: false)
    OnSubmitErrorDef? onSubmitError,
    @JsonKey(includeToJson: false, includeFromJson: false)
    void Function(BuildContext context)? onSubmitSuccess,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(InitialStatus())
    WoFormStatus initialStatus,
    @Default(true) bool canModifySubmittedValues,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Future<bool?> Function(BuildContext context)? canQuit,
    @JsonKey(toJson: WoFormUiSettings.staticToJson)
    @Default(WoFormUiSettings())
    WoFormUiSettings uiSettings,
    @JsonKey(toJson: ExportSettings.staticToJson)
    @Default(ExportSettings())
    ExportSettings exportSettings,
    @JsonKey(includeToJson: false, includeFromJson: false)
    ThemeData Function(BuildContext context)? themeBuilder,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormPageBuilderDef? pageBuilder,
  }) = _WoForm;

  const WoForm._();

  factory WoForm.fromJson(Map<String, dynamic> json) => _$WoFormFromJson(json);

  // --

  Iterable<WoFormNodeMixin> get nodes => inputs.whereType();

  Map<String, dynamic> initialValues() => {
        for (final input in inputs)
          if (input is WoFormNodeMixin)
            ...(input as WoFormNodeMixin).initialValues(parentPath: '')
          else if (input is WoFormInputMixin)
            '/${input.id}': (input as WoFormInputMixin).initialValue,
      };

  Iterable<String> getAllInputPaths({required WoFormValues values}) => [
        for (final input in inputs)
          ...input.getAllInputPaths(values: values, parentPath: ''),
      ];

  Iterable<WoFormInputError> getErrors(WoFormValues values) =>
      [for (final input in inputs) ...input.getErrors(values, parentPath: '')];

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

  dynamic export(WoFormValues values) {
    final exportableInputs =
        inputs.where((i) => i.isExportable(values: values, parentPath: ''));

    return switch (exportSettings.exportType) {
      ExportType.map => {
          ...?exportSettings.exportedMetadata,
          for (final input in exportableInputs)
            input.getExportKey(
              values: values,
              parentPath: '',
            )!: input.export(
              values: values,
              parentPath: '',
            ),
        },
      ExportType.list => [
          ...?exportSettings.exportedMetadata?.values,
          for (final input in exportableInputs)
            input.export(
              values: values,
              parentPath: '',
            ),
        ],
      ExportType.firstExportable =>
        exportableInputs.firstOrNull?.export(values: values, parentPath: ''),
    };
  }

  Widget toPage({Key? key}) => toWidget(key: key);

  Widget toWidget({Key? key}) => WoFormPageBuilder(key: key, form: this);
}

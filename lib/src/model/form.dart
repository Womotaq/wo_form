import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'form.freezed.dart';
part 'form.g.dart';

@freezed
class WoForm with _$WoForm {
  const factory WoForm({
    Map<String, dynamic>? unmodifiableValuesJson,
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
    @Default(false) bool initialStatusIsSubmitted,
    @JsonKey(includeToJson: false, includeFromJson: false)
    void Function(BuildContext context)? onUnsubmittedQuit,
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

  Map<String, dynamic> getSubmittedJson(Map<String, dynamic> values) => {
        ...unmodifiableValuesJson ?? {},
        for (final input in inputs)
          input.id: input.getSubmittedJson(
            values: values,
            parentPath: '',
          ),
      };

  Widget toPage({
    void Function(Map<String, dynamic> values)? onSubmitting,
    void Function(BuildContext context)? onSubmitted,
  }) {
    final widget = toWidget(
      onSubmitting: onSubmitting,
      onSubmitted: onSubmitted,
    );

    return switch (uiSettings.displayMode) {
      // TODO : rework
      null || WoFormDisplayedInCard() => Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(leading: WoFormPopButton(form: this)),
              body: SingleChildScrollView(
                child: widget,
              ),
            );
          },
        ),
      WoFormDisplayedInPage() || WoFormDisplayedInPages() => widget,
    };
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

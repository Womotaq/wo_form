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

  Widget toWidget<T extends WoFormValuesCubit>({required String? parentPath});
}

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

  Iterable<WoFormNode> get nodes => inputs.whereType();

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
  /// Thae path of the input with id 'name' is 'profile/name'.
  WoFormElementMixin? getInput({required String path}) {
    final slashIndex = path.indexOf('/');

    if (slashIndex == -1) return inputs.firstWhereOrNull((i) => i.id == path);

    print(path.substring(0, slashIndex));
    print(path.substring(slashIndex + 1));
    print(nodes.firstWhereOrNull((i) => i.id == path.substring(0, slashIndex)));

    return nodes
        .firstWhereOrNull((i) => i.id == path.substring(0, slashIndex))
        ?.getInput(path: path.substring(slashIndex + 1));
  }

  @override
  Widget toWidget<T extends WoFormValuesCubit>({required String? parentPath}) =>
      switch (this) {
        WoForm() => throw UnimplementedError(),
        InputsNode() => InputsNodeWidget(
            inputPath: parentPath == null ? id : '$parentPath/$id',
          ),
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

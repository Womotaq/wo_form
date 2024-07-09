import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class SelectFieldBuilder<T> extends StatelessWidget {
  const SelectFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final SelectInputUiSettings<T>? uiSettings;

  SelectInput<T> getInput(WoForm form, WoFormValues values) {
    final input = form.getInput(path: path, values: values);
    if (input is! SelectInput<T>) {
      throw ArgumentError(
        'Expected <SelectInput<$T>> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    return input;
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = getInput(form, valuesCubit.state);
    var mergedSettings = uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const SelectInputUiSettings();

    final showAsterisk = input.minCount > 0 &&
        (form.uiSettings.showAsteriskIfRequired ??
            WoFormTheme.of(context)?.showAsteriskIfRequired ??
            true);
    if (showAsterisk && mergedSettings.labelText != null) {
      mergedSettings = mergedSettings.copyWith(
        labelText: '${mergedSettings.labelText}*',
      );
    }

    return BlocSelector<WoFormLockCubit, Set<String>, bool>(
      selector: (lockedInputs) => lockedInputs.contains(path),
      builder: (context, inputIsLocked) {
        return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
          builder: (context, status) {
            return WoFormValueBuilder<List<T>>(
              path: path,
              builder: (context, selectedValues_) {
                final selectedValues = selectedValues_ ?? [];

                final String? errorText;
                if (status is InvalidValuesStatus) {
                  final error = input.getError(
                    selectedValues,
                    parentPath: path.parentPath,
                  );
                  if (error == null) {
                    errorText = null;
                  } else {
                    errorText =
                        context.read<WoFormL10n?>()?.translateError(error);
                  }
                } else {
                  errorText = null;
                }

                final fieldData = WoFieldData<SelectInput<T>, List<T>,
                    SelectInputUiSettings<T>>(
                  path: path,
                  input: input,
                  value: selectedValues,
                  errorText: errorText,
                  uiSettings: mergedSettings,
                  onValueChanged: inputIsLocked
                      ? null
                      : (List<T>? value) {
                          valuesCubit.onValueChanged(
                            path: path,
                            value: value,
                          );
                          if (mergedSettings.submitFormOnSelect) {
                            valuesCubit.submit();
                          }
                        },
                );

                return (mergedSettings.widgetBuilder ??
                        WoFormTheme.of(context)?.selectFieldBuilder ??
                        SelectField.new)
                    .call(fieldData);
              },
            );
          },
        );
      },
    );
  }
}

class SelectStringFieldBuilder extends SelectFieldBuilder<String> {
  const SelectStringFieldBuilder({
    required super.path,
    super.uiSettings,
    super.key,
  });

  @override
  SelectInput<String> getInput(WoForm form, WoFormValues values) {
    final selectStringInput = form.getInput(path: path, values: values);
    if (selectStringInput is! SelectStringInput) {
      throw ArgumentError(
        'Wrong input at path "$path". '
        'Expected SelectStringInput, got ${selectStringInput.runtimeType}',
      );
    }

    return SelectInput<String>(
      id: selectStringInput.id,
      maxCount: selectStringInput.maxCount,
      minCount: selectStringInput.minCount,
      initialValue_: selectStringInput.initialValue,
      availibleValues: selectStringInput.availibleValues,
      getCustomError: selectStringInput.getCustomError,
      uiSettings: selectStringInput.uiSettings,
      toJsonT: (value) => value,
    );
  }
}

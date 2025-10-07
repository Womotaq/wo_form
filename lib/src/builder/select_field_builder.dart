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

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();
    final input = getNode(context);

    return WoFormNodeFocusManager(
      path: path,
      child: BlocSelector<WoFormLockCubit, Set<String>, bool>(
        selector: (lockedInputs) => lockedInputs.contains(path),
        builder: (context, inputIsLocked) {
          return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
            builder: (context, status) {
              return WoFormValueBuilder<List<dynamic>>(
                path: path,
                builder: (context, selectedValues_) {
                  final selectedValues =
                      (input.idsOfAvailibleValues != null
                          ? selectedValues_
                                ?.map(
                                  (valueId) => valueId is String
                                      ? input.getAvailibleValue(id: valueId)
                                      : null,
                                )
                                .whereType<T>()
                                .toList()
                          : selectedValues_?.whereType<T>().toList()) ??
                      [];

                  final String? errorText;
                  if (status is InProgressStatus) {
                    final error = status.getError(path: path);
                    if (error == null) {
                      errorText = null;
                    } else {
                      errorText = context.read<WoFormL10n?>()?.translateError(
                        error,
                      );
                    }
                  } else {
                    errorText = null;
                  }

                  final fieldData = WoFieldData(
                    path: path,
                    input: input,
                    value: selectedValues,
                    errorText: errorText,
                    onValueChanged: inputIsLocked
                        ? null
                        : (
                            List<T>? values, {
                            UpdateStatus updateStatus = UpdateStatus.yes,
                          }) async {
                            if (input.idsOfAvailibleValues != null) {
                              valuesCubit.onValueChanged(
                                path: path,
                                value: values
                                    ?.map(
                                      (value) =>
                                          input.getIdOfValue(value: value),
                                    )
                                    .nonNulls
                                    .toList(),
                                updateStatus: updateStatus,
                              );
                            } else {
                              valuesCubit.onValueChanged(
                                path: path,
                                value: values,
                              );
                            }

                            input.onValueChanged?.call(values);

                            if (input.submitFormOnSelect) {
                              await valuesCubit.submit(context);
                            }
                          },
                  );

                  return (input.uiSettings?.widgetBuilder ??
                          WoFormTheme.of(context)?.selectFieldBuilder ??
                          SelectField.new)
                      .call(fieldData);
                },
              );
            },
          );
        },
      ),
    );
  }

  SelectInput<T> getNode(BuildContext context) {
    final input = context.read<WoFormValuesCubit>().getNode(path: path);
    if (input is! SelectInput<T>) {
      throw ArgumentError(
        'Expected <SelectInput<$T>> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    var mergedSettings =
        uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const SelectInputUiSettings();

    final showAsterisk =
        input.minCount > 0 &&
        (WoFormTheme.of(context)?.showAsteriskIfRequired ?? true);
    if (showAsterisk && mergedSettings.labelText != null) {
      mergedSettings = mergedSettings.copyWith(
        labelText: '${mergedSettings.labelText} *',
      );
    }

    return input.copyWith(uiSettings: mergedSettings);
  }
}

// class SelectStringFieldBuilder extends SelectFieldBuilder<String> {
//   const SelectStringFieldBuilder({
//     required super.path,
//     super.uiSettings,
//     super.key,
//   });

//   @override
//   SelectInput<String> getChild(RootNode form, WoFormValues values) {
//     final input = form.getChild(path: path, values: values);
//     if (input is! SelectStringInput) {
//       throw ArgumentError(
//         'Wrong input at path "$path". '
//         'Expected SelectStringInput, got ${input.runtimeType}',
//       );
//     }

//     return SelectInput<String>(
//       id: input.id,
//       maxCount: input.maxCount,
//       minCount: input.minCount,
//       initialValues: input.initialValues,
//       availibleValues: input.availibleValues,
//       idsOfAvailibleValues: input.idsOfAvailibleValues,
//       onValueChanged: input.onValueChanged,
//       getCustomError: input.getCustomError,
//       submitFormOnSelect: input.submitFormOnSelect,
//       uiSettings: input.uiSettings,
//       quizSettings: input.quizSettings,
//       toJsonT: (value) => value,
//       fromJsonT: (value) => value as String?,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/initial_value_keeper.dart';
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

    return InitialValueKeeper(
      initialValue: input.initialValues,
      path: path,
      child: WoFormNodeFocusManager(
        path: path,
        child: BlocSelector<WoFormLockCubit, Set<String>, bool>(
          selector: (lockedInputs) => lockedInputs.contains(path),
          builder: (context, inputIsLocked) => WoFormErrorBuilder(
            path: path,
            builder: (context, error) => WoFormValueBuilder<List<dynamic>>(
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

                final errorText = error == null
                    ? null
                    : context.woFormL10n.translateError(error);

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
                                    (value) => input.getIdOfValue(value: value),
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
            ),
          ),
        ),
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

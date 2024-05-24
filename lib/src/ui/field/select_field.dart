import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class SelectField<T extends WoFormCubit, S> extends StatelessWidget {
  const SelectField({
    required this.input,
    this.valueBuilder,
    this.previewBuilder,
    this.theme,
    super.key,
  });

  final SelectInput<S> Function(WoForm form) input;
  final Widget Function(S?)? valueBuilder;
  final Widget Function(S?)? previewBuilder;
  final SelectFieldSettings<S>? theme;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    final themeFromInput = input(cubit.state).fieldSettings;
    final mergedSettings = (theme?.merge(themeFromInput) ?? themeFromInput) ??
        SelectFieldSettings<S>();

    return BlocSelector<T, WoForm, SelectInput<S?>>(
      selector: input,
      builder: (context, input) => switch (theme?.displayMode) {
        null || SelectFieldDisplayMode.radios => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (mergedSettings.labelText != null)
                ListTile(
                  title: Text(mergedSettings.labelText!),
                  visualDensity: VisualDensity.compact,
                ),
              ...mergedSettings.values?.map(
                    (value) => ListTile(
                      leading: Radio(
                        value: value,
                        groupValue: input.value,
                        onChanged: (value) => value == null
                            ? null
                            : cubit.onInputChanged(
                                input: input.copyWith(value: value),
                              ),
                      ),
                      title:
                          valueBuilder?.call(value) ?? Text(value.toString()),
                      onTap: () => cubit.onInputChanged(
                        input: input.copyWith(value: value),
                      ),
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ) ??
                  [],
            ],
          ),
        SelectFieldDisplayMode.selectChip => ListTile(
            title: Text(mergedSettings.labelText ?? ''),
            trailing: SelectChip<S>.uniqueChoice(
              values: mergedSettings.values ?? <S>[],
              onSelected: (value) => cubit.onInputChanged(
                input: input.copyWith(value: value),
              ),
              selectedValue: input.value,
              valueBuilder: valueBuilder,
              previewBuilder: previewBuilder,
            ),
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
          ),
      },
    );
  }
}

class SelectStringField<T extends WoFormCubit> extends SelectField<T, String> {
  const SelectStringField({
    required super.input,
    super.valueBuilder,
    super.previewBuilder,
    super.theme,
    super.key,
  });
}

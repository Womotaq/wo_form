import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsListField<T extends WoFormCubit> extends StatelessWidget {
  const InputsListField({
    required this.input,
    this.settings,
    super.key,
  });

  final InputsListInput Function(WoForm form) input;
  final MapFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    final themeFromInput = input(cubit.state).fieldSettings;
    final mergedSettings = settings?.merge(themeFromInput) ?? themeFromInput;

    return Column(
      children: [
        if (mergedSettings.labelText != null)
          Text(
            mergedSettings.labelText!,
            // TODO : WoFormTheme.titleStyle
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        BlocSelector<T, WoForm, List<WoFormInputMixin>?>(
          selector: (form) => input(form).value,
          builder: (context, inputs) {
            if (inputs == null) const SizedBox.shrink();

            return Column(
              children: inputs!
                  .map((i) => SmartField<T>(input: (form) => i))
                  .toList(),
            );
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsListField<T extends WoFormCubit> extends StatelessWidget {
  const InputsListField({
    required this.getInput,
    this.settings,
    super.key,
  });

  final InputsListInput Function(WoForm form) getInput;
  final MapFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    final themeFromInput = getInput(cubit.state).fieldSettings;
    final mergedSettings = settings?.merge(themeFromInput) ?? themeFromInput;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (mergedSettings.labelText != null)
          ListTile(
            title: Text(mergedSettings.labelText!),
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
          ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: BlocSelector<T, WoForm, List<WoFormInputMixin>?>(
            selector: (form) => getInput(form).value,
            builder: (context, inputs) {
              if (inputs == null) const SizedBox.shrink();

              return Column(
                children: inputs!
                    .map(
                      (input) => SmartField<T>(
                        input: (form) => getInput(form)
                            .value!
                            .firstWhere((i) => i.id == input.id),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ),
      ],
    );
  }
}

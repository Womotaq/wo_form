import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget<T extends WoFormCubit> extends StatelessWidget {
  const InputsNodeWidget({
    required this.inputId,
    this.settings,
    super.key,
  });

  final Object inputId;
  final MapFieldSettings? settings;

  InputsNode getInput(WoForm form) =>
      form.getInput(inputId: inputId.toString())! as InputsNode;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    final inputSettings = getInput(cubit.state).fieldSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

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
                children: inputs!.map((i) => i.toField<T>()).toList(),
              );
            },
          ),
        ),
      ],
    );
  }
}

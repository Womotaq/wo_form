import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class NumField extends StatelessWidget {
  const NumField({
    required this.inputId,
    this.settings,
    super.key,
  });

  final String inputId;
  final NumFieldSettings? settings;

  NumInput getInput(WoForm form) =>
      form.getInput(inputId: inputId)! as NumInput;

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();
    final countController =
        TextEditingController(text: valuesCubit.state[inputId]?.toString());

    return BlocSelector<WoFormNodesCubit, WoForm, NumFieldSettings>(
      selector: (form) => getInput(form).fieldSettings,
      builder: (context, inputSettings) {
        final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

        return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, String>(
          selector: (values) => (values[inputId] as num?)?.toString() ?? '',
          builder: (context, countText) {
            if (countController.text != countText) {
              countController.text = countText;
            }

            return ListTile(
              title: Text(mergedSettings.labelText ?? ''),
              trailing: CountSelector(
                controller: countController,
                onChanged: (value) => valuesCubit.onValueChanged(
                  inputId: inputId,
                  value: value,
                ),
                axis: Axis.horizontal,
              ),
              visualDensity: VisualDensity.compact,
              contentPadding: EdgeInsets.zero,
            );
          },
        );
      },
    );
  }
}

// TODO : send in atomic_design
class CountSelector extends StatelessWidget {
  const CountSelector({
    required this.controller,
    required this.onChanged,
    this.axis = Axis.vertical,
    this.step = 1,
    super.key,
  });

  final TextEditingController controller;
  final void Function(int) onChanged;
  final Axis axis;
  final int step;

  static const minCount = 0;
  static const maxCount = 99;

  Widget getSideButton({
    required Axis axis,
    required bool isPlus,
  }) {
    final iconHeight = axis == Axis.vertical ? 22.0 : null;
    final icon = Icon(
      size: iconHeight,
      axis == Axis.vertical
          ? isPlus
              ? Icons.arrow_drop_up
              : Icons.arrow_drop_down
          : isPlus
              ? Icons.add_circle
              : Icons.remove_circle,
    );
    return SizedBox(
      height: iconHeight,
      child: Builder(
        builder: (context) {
          return IconButton(
            padding: EdgeInsets.zero,
            icon: icon,
            color: Theme.of(context).colorScheme.primaryContainer,
            onPressed: () {
              final newVal =
                  int.parse(controller.text) + (isPlus ? step : -step);
              if (newVal >= minCount && newVal <= maxCount) onChanged(newVal);
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final children = [
      getSideButton(
        axis: axis,
        isPlus: false,
      ),
      if (axis == Axis.horizontal) WoGap.xsmall,
      SizedBox(
        width: 40,
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            isDense: true,
            contentPadding: EdgeInsets.all(WoSize.small),
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(2),
          ],
          onChanged: (string) => onChanged(int.parse(string)),
        ),
      ),
      if (axis == Axis.horizontal) WoGap.xsmall,
      getSideButton(
        axis: axis,
        isPlus: true,
      ),
    ];

    return Card(
      borderOnForeground: false,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: axis == Axis.horizontal
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children.reversed.toList(),
            ),
    );
  }
}

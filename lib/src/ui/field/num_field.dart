import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class NumField<T extends WoFormCubit> extends StatelessWidget {
  const NumField({
    required this.getInput,
    this.settings,
    super.key,
  });

  final NumInput Function(WoForm form) getInput;
  final NumFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();
    final input = getInput(cubit.state);

    final themeFromInput = input.fieldSettings;
    final mergedSettings = settings?.merge(themeFromInput) ?? themeFromInput;

    final countController = TextEditingController(text: input.value.toString());

    return BlocSelector<T, WoForm, NumInput>(
      selector: getInput,
      builder: (context, input) {
        final newCount = input.value.toString();
        if (countController.text != newCount) {
          countController.text = newCount;
        }

        return ListTile(
          title: Text(mergedSettings.labelText ?? ''),
          trailing: CountSelector(
            controller: countController,
            onChanged: (value) =>
                cubit.onInputChanged(input: input.copyWith(value: value)),
            axis: Axis.horizontal,
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

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

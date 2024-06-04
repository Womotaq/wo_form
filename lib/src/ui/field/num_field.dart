import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class NumField extends StatefulWidget {
  const NumField({
    required this.inputId,
    this.settings,
    super.key,
  });

  final String inputId;
  final NumFieldSettings? settings;

  @override
  State<NumField> createState() => _NumFieldState();
}

class _NumFieldState extends State<NumField> {
  final countController = TextEditingController();

  NumInput getInput(WoForm form) =>
      form.getInput(inputId: widget.inputId)! as NumInput;

  @override
  void initState() {
    super.initState();

    countController.text =
        context.read<WoFormValuesCubit>().state[widget.inputId]?.toString() ??
            '';
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final inputSettings = getInput(form).fieldSettings;
    final mergedSettings =
        widget.settings?.merge(inputSettings) ?? inputSettings;

    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, num?>(
      selector: (values) => values[widget.inputId] as num?,
      builder: (context, count) {
        final countText = count?.toString() ?? '';
        if (countController.text != countText) {
          countController
            ..text = countText
            // This always brings the cursor to the last position possible.
            // By default, when the text changes, it is selected.
            ..selection = TextSelection.collapsed(
              offset: countController.text.length,
            );
        }

        return ListTile(
          title: Text(mergedSettings.labelText ?? ''),
          trailing: CountSelector(
            controller: countController,
            onChanged: (value) async => valuesCubit.onValueChanged(
              inputId: widget.inputId,
              value: value,
            ),
            axis: Axis.horizontal,
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
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
    this.minCount = 0,
    this.maxCount,
    super.key,
  });

  final TextEditingController controller;
  final Future<void> Function(num?) onChanged;
  final Axis axis;
  final int step;
  final num? minCount;
  final num? maxCount;

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
              var newVal = num.tryParse(controller.text) ?? 0;
              newVal += (isPlus ? step : -step);
              if (minCount != null && newVal < minCount!) return;
              if (maxCount != null && newVal > maxCount!) return;
              controller.text = newVal.toString();
              onChanged(newVal);
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
      ConstrainedBox(
        constraints: const BoxConstraints(minWidth: WoSize.xxlarge),
        child: IntrinsicWidth(
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
              // LengthLimitingTextInputFormatter(2),
            ],
            onChanged: (string) => onChanged(num.tryParse(string)),
          ),
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

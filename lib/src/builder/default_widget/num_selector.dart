import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumSelector extends StatelessWidget {
  const NumSelector({
    required this.controller,
    required this.onChanged,
    this.axis = Axis.vertical,
    this.step = 1,
    this.minCount = 0,
    this.maxCount,
    this.unit,
    super.key,
  });

  final TextEditingController controller;
  final void Function(num? value)? onChanged;
  final Axis axis;
  final int step;
  final num? minCount;
  final num? maxCount;
  final Widget? unit;

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
            color: Theme.of(context).colorScheme.primary,
            onPressed: onChanged == null
                ? null
                : () {
                    var newVal = num.tryParse(controller.text) ?? 0;
                    newVal += (isPlus ? step : -step);
                    if (minCount != null && newVal < minCount!) return;
                    if (maxCount != null && newVal > maxCount!) return;
                    controller.text = newVal.toString();
                    onChanged!(newVal);
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
      ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 48),
        child: IntrinsicWidth(
          child: TextField(
            enabled: onChanged != null,
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              isDense: true,
              contentPadding: const EdgeInsets.all(8),
              suffix: unit,
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              // LengthLimitingTextInputFormatter(2),
            ],
            onChanged: onChanged == null
                ? null
                : (string) => onChanged!(num.tryParse(string)),
          ),
        ),
      ),
      getSideButton(
        axis: axis,
        isPlus: true,
      ),
    ];

    return axis == Axis.horizontal
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children.reversed.toList(),
          );
  }
}

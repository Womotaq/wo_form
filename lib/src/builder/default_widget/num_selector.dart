import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumSelector extends StatefulWidget {
  const NumSelector({
    required this.onChanged,
    this.initialValue,
    this.axis = Axis.vertical,
    this.step = 1,
    this.minCount = 0,
    this.maxCount,
    this.unit,
    super.key,
  }) : controller = null;

  const NumSelector.withTextController({
    required TextEditingController controller,
    required this.onChanged,
    this.axis = Axis.vertical,
    this.step = 1,
    this.minCount = 0,
    this.maxCount,
    this.unit,
    super.key,
    // ignore: prefer_initializing_formals
  })  : controller = controller,
        initialValue = null;

  final TextEditingController? controller;
  final int? initialValue;
  final void Function(num? value)? onChanged;
  final Axis axis;
  final int step;
  final num? minCount;
  final num? maxCount;
  final Widget? unit;

  @override
  State<NumSelector> createState() => _NumSelectorState();
}

class _NumSelectorState extends State<NumSelector> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = widget.controller ??
        TextEditingController(text: (widget.initialValue ?? 0).toString());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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

    final currentValue = num.tryParse(controller.text) ?? 0;
    final nextValue = currentValue + (isPlus ? widget.step : -widget.step);
    final disabled = isPlus
        ? widget.maxCount != null && nextValue > widget.maxCount!
        : widget.minCount != null && nextValue < widget.minCount!;

    return SizedBox(
      height: iconHeight,
      child: Builder(
        builder: (context) {
          return IconButton(
            padding: EdgeInsets.zero,
            icon: icon,
            color: Theme.of(context).colorScheme.primary,
            onPressed: disabled || widget.onChanged == null
                ? null
                : () {
                    var newVal = num.tryParse(controller.text) ?? 0;
                    newVal += (isPlus ? widget.step : -widget.step);
                    if (widget.minCount != null && newVal < widget.minCount!) {
                      if (isPlus) {
                        newVal = widget.minCount!;
                      } else {
                        return;
                      }
                    }
                    if (widget.maxCount != null && newVal > widget.maxCount!) {
                      if (isPlus) {
                        return;
                      } else {
                        newVal = widget.maxCount!;
                      }
                    }
                    controller.text = newVal.toString();
                    widget.onChanged!(newVal);
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
        axis: widget.axis,
        isPlus: false,
      ),
      if (widget.controller != null)
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 48),
          child: IntrinsicWidth(
            child: TextField(
              enabled: widget.onChanged != null,
              controller: controller,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                isDense: true,
                contentPadding: const EdgeInsets.all(8),
                suffix: widget.unit,
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                // LengthLimitingTextInputFormatter(2),
              ],
              onChanged: widget.onChanged == null
                  ? null
                  : (string) => widget.onChanged!(num.tryParse(string)),
            ),
          ),
        )
      else
        Text(controller.text),
      getSideButton(
        axis: widget.axis,
        isPlus: true,
      ),
    ];

    return widget.axis == Axis.horizontal
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

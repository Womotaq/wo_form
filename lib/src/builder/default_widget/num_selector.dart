import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumSelector extends StatefulWidget {
  const NumSelector({
    required this.onChanged,
    this.controller,
    this.initialValue,
    this.axis = Axis.vertical,
    this.step = 1,
    this.steps,
    this.minCount = 0,
    this.maxCount,
    this.unit,
    super.key,
  }) : assert(
         (initialValue == null) != (controller == null),
         'Only one of initialValue or controller must be set.',
       );

  /// If you give a controller, it is you responsibility to dispose it.
  final TextEditingController? controller;
  final int? initialValue;
  final void Function(num? value)? onChanged;
  final Axis axis;
  final int step;
  final List<num>? steps;
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
    controller =
        widget.controller ??
        TextEditingController(text: (widget.initialValue ?? 0).toString());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.controller == null) controller.dispose();
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
                ? Icons.keyboard_arrow_up
                : Icons.keyboard_arrow_down
          // ? Icons.arrow_drop_up
          // : Icons.arrow_drop_down
          : isPlus
          ? Icons.add_circle
          : Icons.remove_circle,
    );

    final currentValue = num.tryParse(controller.text) ?? 0;
    final nextValue = _findNextStep(currentValue, isPlus: isPlus);
    final disabled = isPlus
        ? widget.maxCount != null && nextValue > widget.maxCount!
        : widget.minCount != null && nextValue < widget.minCount!;

    return SizedBox(
      height: iconHeight,
      width: 40,
      child: Builder(
        builder: (context) => IconButton(
          padding: EdgeInsets.zero,
          icon: icon,
          color: Theme.of(context).colorScheme.primary,
          onPressed: disabled || widget.onChanged == null
              ? null
              : () {
                  var newVal = num.tryParse(controller.text) ?? 0;
                  newVal = _findNextStep(newVal, isPlus: isPlus);
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

                  FocusScope.of(context).unfocus();

                  controller.text = newVal.toString();
                  widget.onChanged!(newVal);
                },
        ),
      ),
    );
  }

  num _findNextStep(num current, {required bool isPlus}) {
    final validSteps = widget.steps?.where((step) {
      if (widget.maxCount != null && step > widget.maxCount!) return false;
      if (widget.minCount != null && step < widget.minCount!) return false;
      return true;
    }).sorted();

    if (validSteps == null || validSteps.isEmpty) {
      return current + (isPlus ? widget.step : -widget.step);
    }

    return (isPlus
            ? validSteps.firstWhereOrNull((step) => step > current)
            : validSteps.lastWhereOrNull((step) => step < current)) ??
        current;
  }

  @override
  Widget build(BuildContext context) {
    final children = [
      if (!(widget.controller != null && widget.axis == Axis.horizontal))
        getSideButton(
          axis: widget.axis,
          isPlus: false,
        ),
      if (widget.controller != null)
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 40),
          child: IntrinsicWidth(
            child: TextField(
              enabled: widget.onChanged != null,
              controller: controller,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                isDense: true,
                contentPadding: const EdgeInsets.all(8),
                suffix: widget.unit,
                prefixIcon: getSideButton(axis: widget.axis, isPlus: false),
                prefixIconConstraints: const BoxConstraints(),
                suffixIcon: getSideButton(axis: widget.axis, isPlus: true),
                suffixIconConstraints: const BoxConstraints(),
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: widget.onChanged == null
                  ? null
                  : (string) => widget.onChanged!(num.tryParse(string)),
              // Flutter's default behaviour :
              // - web : tapping outside instantly unfocuses the field.
              // - mobile : tapping outside does nothing.
              // For better consistency across all plateforms, wo_form decided
              // to unfocus text fields on tap up.
              onTapOutside: (_) {},
              onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
            ),
          ),
        )
      else
        Text(controller.text),
      if (!(widget.controller != null && widget.axis == Axis.horizontal))
        getSideButton(
          axis: widget.axis,
          isPlus: true,
        ),
    ];

    return widget.axis == Axis.horizontal
        ? Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children.reversed.toList(),
          );
  }
}

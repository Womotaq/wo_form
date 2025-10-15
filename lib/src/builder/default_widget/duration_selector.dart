import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class DurationSelector extends StatefulWidget {
  const DurationSelector({
    required this.initialDuration,
    this.minDuration,
    this.maxDuration,
    this.onChanged,
    super.key,
  });

  final Duration? initialDuration;
  final Duration? minDuration;
  final Duration? maxDuration;
  final void Function(Duration? value)? onChanged;

  @override
  State<DurationSelector> createState() => _DurationSelectorState();
}

class _DurationSelectorState extends State<DurationSelector> {
  Duration duration = Duration.zero;
  late final TextEditingController daysController;
  late final TextEditingController hoursController;
  late final TextEditingController minutesController;

  @override
  void initState() {
    super.initState();

    duration = widget.initialDuration ?? Duration.zero;

    daysController = TextEditingController(text: duration.inDays.toString());
    hoursController = TextEditingController(
      text: (duration.inHours % 24).toString(),
    );
    minutesController = TextEditingController(
      text: (duration.inMinutes % 60).toString(),
    );
  }

  void _onValueChanged(Duration newDuration) {
    if (widget.minDuration != null && newDuration < widget.minDuration!) {
      // ignore: parameter_assignments
      newDuration = widget.minDuration!;
    }
    if (widget.maxDuration != null && newDuration > widget.maxDuration!) {
      // ignore: parameter_assignments
      newDuration = widget.maxDuration!;
    }
    setState(() => duration = newDuration);
    widget.onChanged?.call(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.woFormL10n;

    return Row(
      children: [
        const SizedBox(width: 16),
        Expanded(
          child: Row(
            children: [
              NumSelector(
                controller: daysController,
                onChanged: (value) => _onValueChanged(
                  duration +
                      Duration(days: (value ?? 0).toInt() - duration.inDays),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(l10n.days.call(duration.inDays)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              NumSelector(
                controller: hoursController,
                onChanged: (value) => _onValueChanged(
                  duration +
                      Duration(
                        hours: (value ?? 0).toInt() - (duration.inHours % 24),
                      ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    l10n.hours.call(duration.inHours % 24),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              NumSelector(
                controller: minutesController,
                onChanged: (value) => _onValueChanged(
                  duration +
                      Duration(
                        minutes:
                            (value ?? 0).toInt() - (duration.inMinutes % 60),
                      ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    l10n.minutes.call(duration.inMinutes % 60),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}

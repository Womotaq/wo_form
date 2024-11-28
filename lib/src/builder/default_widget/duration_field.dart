import 'package:flutter/material.dart';
import 'package:wo_form/src/builder/default_widget/date_time_selector.dart';
import 'package:wo_form/src/builder/default_widget/duration_selector.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class DurationField extends StatefulWidget {
  const DurationField(this.data, {super.key});

  final WoFieldData<DurationInput, Duration?, DurationInputUiSettings> data;

  @override
  State<DurationField> createState() => _DurationFieldState();

  static Future<Duration?> defaultPickDuration({
    required BuildContext context,
    Duration? initialDuration,
    Duration? minDuration,
    Duration? maxDuration,
  }) async {
    var duration = initialDuration;

    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => Padding(
        // This padding ensures the modal is always above the keyboard
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: 128,
          child: DurationSelector(
            initialDuration: initialDuration,
            minDuration: minDuration,
            maxDuration: maxDuration,
            onChanged: (value) => duration = value,
          ),
        ),
      ),
    );

    return duration;
  }

  static String defaultFormatDuration(Duration duration) {
    final hours = duration.inHours.abs();
    final minutes = (duration.inMinutes % 60).abs();

    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitHours = twoDigits(hours);
    final twoDigitMinutes = twoDigits(minutes);
    return '${twoDigitHours}h$twoDigitMinutes';
  }
}

class _DurationFieldState extends State<DurationField> {
  bool editAsDateTime = false;

  @override
  void initState() {
    super.initState();

    editAsDateTime = widget.data.input.startDatePath != null &&
        widget.data.uiSettings.initialEditMode == DurationEditMode.dateTime;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;
    final themedBorder = inputDecorationTheme.border;
    final initialDuration = widget.data.value;

    final hintText = editAsDateTime
        ? widget.data.uiSettings.dateTimeHintText
        : widget.data.uiSettings.hintText;

    final selector = editAsDateTime
        ? WoFormValueBuilder<DateTime>(
            path: widget.data.input.startDatePath ?? '',
            builder: (context, start) {
              start ??= DateTime.now();

              return DateTimeSelector(
                dateTime: widget.data.value == null
                    ? start
                    : start.add(widget.data.value!),
                minDateTime: widget.data.input.minDuration == null
                    ? start
                    : start.add(widget.data.input.minDuration!),
                maxDateTime: widget.data.input.maxDuration == null
                    ? start
                    : start.add(widget.data.input.maxDuration!),
                onChanged: (date) {
                  if (date == null) return;
                },
                showCloseButton: !widget.data.input.isRequired,
                settings: DateTimeInputUiSettings(
                  dateFormat: widget.data.uiSettings.dateFormat,
                  timeFormat: widget.data.uiSettings.timeFormat,
                  labelFlex: widget.data.uiSettings.labelFlex,
                  labelText: widget.data.uiSettings.dateTimeLabelText,
                  helperText: widget.data.uiSettings.dateTimeHelperText,
                  hintText: widget.data.uiSettings.dateTimeHintText,
                  editMode: widget.data.uiSettings.dateTimeEditMode,
                  pickDate: widget.data.uiSettings.pickDate,
                  pickTime: widget.data.uiSettings.pickTime,
                ),
              );
            },
          )
        : InkWell(
            borderRadius: themedBorder is OutlineInputBorder
                ? themedBorder.borderRadius
                : themedBorder is UnderlineInputBorder
                    ? themedBorder.borderRadius
                    : BorderRadius.zero,
            onTap: widget.data.onValueChanged == null
                ? null
                : () async {
                    final pickDuration = widget.data.uiSettings.pickDuration ??
                        WoFormTheme.of(context)?.pickDuration ??
                        DurationField.defaultPickDuration;

                    final selectedDuration = await pickDuration(
                      context: context,
                      initialDuration: initialDuration,
                      minDuration: widget.data.input.minDuration,
                      maxDuration: widget.data.input.maxDuration,
                    );

                    if (selectedDuration != null) {
                      widget.data.onValueChanged!(selectedDuration);
                    }
                  },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: inputDecorationTheme.fillColor,
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: theme.colorScheme.onSurface,
                  width: .6,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: initialDuration == null
                    ? hintText == null
                        ? const Icon(Icons.timer)
                        : Text(
                            hintText,
                            style: theme.textTheme.bodyMedium,
                          )
                    : Text(
                        (widget.data.uiSettings.formatDuration ??
                                WoFormTheme.of(context)?.formatDuration ??
                                DurationField.defaultFormatDuration)
                            .call(initialDuration),
                        style: theme.textTheme.bodyMedium,
                      ),
              ),
            ),
          );

    // if (data.input.startDatePath != null &&
    //     data.uiSettings.initialEditMode == DurationEditMode.dateTime) {
    //   return DateTimeField(
    //     WoFieldData(
    //       path: data.path,
    //       errorText: data.errorText,
    //     ),
    //   );
    // }

    return FlexField(
      path: widget.data.path,
      labelFlex: widget.data.uiSettings.labelFlex,
      labelText: editAsDateTime
          ? widget.data.uiSettings.dateTimeLabelText
          : widget.data.uiSettings.labelText,
      helperText: editAsDateTime
          ? widget.data.uiSettings.dateTimeHelperText
          : widget.data.uiSettings.helperText,
      errorText: widget.data.errorText,
      trailing: widget.data.input.startDatePath == null
          ? null
          : IconButton(
              onPressed: () => setState(() => editAsDateTime = !editAsDateTime),
              icon: const Icon(Icons.keyboard_arrow_down),
            ),
      disableMode: widget.data.onValueChanged == null
          ? FlexFieldDisableMode.all
          : FlexFieldDisableMode.none,
      child: selector,
    );
  }
}

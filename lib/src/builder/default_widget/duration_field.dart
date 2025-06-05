import 'package:flutter/material.dart';
import 'package:wo_form/src/builder/default_widget/date_time_selector.dart';
import 'package:wo_form/src/builder/default_widget/duration_selector.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class DurationField extends StatelessWidget {
  const DurationField(this.data, {super.key});

  final WoFieldData<DurationInput, Duration?, DurationInputUiSettings> data;

  static Future<Duration?> defaultPickDuration({
    required BuildContext context,
    Duration? initialDuration,
    Duration? minDuration,
    Duration? maxDuration,
  }) async {
    FocusScope.of(context).unfocus();

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

  @override
  Widget build(BuildContext context) {
    final editAsDateTime = data.input.startDatePath != null &&
        data.uiSettings.editMode == DurationEditMode.dateTime;
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;
    final themedBorder = inputDecorationTheme.border;
    final initialDuration = data.value;

    final hintText = editAsDateTime
        ? data.uiSettings.dateTimeHintText
        : data.uiSettings.hintText;

    final selector = editAsDateTime
        ? WoFormValueBuilder<DateTime>(
            path: data.input.startDatePath ?? '',
            builder: (context, start) {
              start ??= DateTime.now();

              return DateTimeSelector(
                dateTime: data.value == null ? start : start.add(data.value!),
                minDateTime: data.input.minDuration == null
                    ? start
                    : start.add(data.input.minDuration!),
                maxDateTime: data.input.maxDuration == null
                    ? null
                    : start.add(data.input.maxDuration!),
                onChanged: (date) {
                  if (date == null) return;
                  data.onValueChanged!(date.difference(start!));
                },
                showCloseButton: !data.input.isRequired,
                settings: DateTimeInputUiSettings(
                  dateFormat: data.uiSettings.dateFormat,
                  timeFormat: data.uiSettings.timeFormat,
                  labelFlex: data.uiSettings.labelFlex,
                  labelText: data.uiSettings.dateTimeLabelText,
                  helperText: data.uiSettings.dateTimeHelperText,
                  hintText: data.uiSettings.dateTimeHintText,
                  editMode: data.uiSettings.dateTimeEditMode,
                  pickDate: data.uiSettings.pickDate,
                  pickTime: data.uiSettings.pickTime,
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
            onTap: data.onValueChanged == null
                ? null
                : () async {
                    final pickDuration = data.uiSettings.pickDuration ??
                        WoFormTheme.of(context)?.pickDuration ??
                        DurationField.defaultPickDuration;

                    final selectedDuration = await pickDuration(
                      context: context,
                      initialDuration: initialDuration,
                      minDuration: data.input.minDuration,
                      maxDuration: data.input.maxDuration,
                    );

                    if (selectedDuration != null) {
                      data.onValueChanged!(selectedDuration);
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
                        (data.uiSettings.formatDuration ??
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
      path: data.path,
      labelFlex: data.uiSettings.labelFlex,
      labelText: editAsDateTime
          ? data.uiSettings.dateTimeLabelText
          : data.uiSettings.labelText,
      helperText: editAsDateTime
          ? data.uiSettings.dateTimeHelperText
          : data.uiSettings.helperText,
      errorText: data.errorText,
      disableMode: data.onValueChanged == null
          ? FlexFieldDisableMode.all
          : FlexFieldDisableMode.none,
      child: selector,
    );
  }
}

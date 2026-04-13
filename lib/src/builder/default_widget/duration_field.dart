import 'package:flutter/material.dart';
import 'package:wo_form/src/builder/default_widget/date_time_selector.dart';
import 'package:wo_form/src/builder/default_widget/duration_selector.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class DurationField extends StatelessWidget {
  const DurationField(this.data, {super.key});

  final WoFieldData<DurationInput, Duration?> data;

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
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
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
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;
    final themedBorder = inputDecorationTheme.border;
    final initialDuration = data.value;

    final uiSettings = data.input.uiSettings;

    final woFormTheme = WoFormTheme.of(context);
    final labelLocation =
        uiSettings?.labelLocation ??
        woFormTheme?.stringFieldLabelLocation ??
        FieldElementLocation.inside;
    final helperLocation =
        uiSettings?.helperLocation ??
        woFormTheme?.stringFieldHelperLocation ??
        FieldElementLocation.inside;
    final errorLocation =
        uiSettings?.errorLocation ??
        woFormTheme?.stringFieldErrorLocation ??
        FieldElementLocation.inside;
    final prefixIconLocation =
        uiSettings?.prefixIconLocation ??
        woFormTheme?.stringFieldPrefixIconLocation ??
        FieldElementLocation.outside;

    final editAsDateTime =
        data.input.startDatePath != null &&
        uiSettings?.editMode == DurationEditMode.dateTime;

    final hintText = editAsDateTime
        ? data.input.uiSettings?.dateTimeHintText
        : data.input.uiSettings?.hintText;

    final StatelessWidget selector;
    if (editAsDateTime) {
      selector = WoFormValueBuilder<DateTime>(
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
            errorText: errorLocation.isOutside ? null : data.errorText,
            showCloseButton: !data.input.isRequired,
            settings: DateTimeInputUiSettings(
              dateFormat: data.input.uiSettings?.dateFormat,
              timeFormat: data.input.uiSettings?.timeFormat,
              headerFlex: data.input.uiSettings?.headerFlex,
              labelText: labelLocation.isOutside ? null : uiSettings?.labelText,
              labelLocation: data.input.uiSettings?.labelLocation,
              helperText: helperLocation.isOutside
                  ? null
                  : uiSettings?.helperText,
              helperLocation: data.input.uiSettings?.helperLocation,
              prefixIcon: prefixIconLocation.isOutside
                  ? null
                  : uiSettings?.prefixIcon,
              prefixIconLocation: data.input.uiSettings?.prefixIconLocation,
              hintText: data.input.uiSettings?.dateTimeHintText,
              editMode: data.input.uiSettings?.dateTimeEditMode,
              pickDate: data.input.uiSettings?.pickDate,
              pickTime: data.input.uiSettings?.pickTime,
            ),
          );
        },
      );
    } else {
      selector = InkWell(
        borderRadius: themedBorder is OutlineInputBorder
            ? themedBorder.borderRadius
            : themedBorder is UnderlineInputBorder
            ? themedBorder.borderRadius
            : BorderRadius.zero,
        onTap: data.onValueChanged == null
            ? null
            : () async {
                final pickDuration =
                    data.input.uiSettings?.pickDuration ??
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
                    (data.input.uiSettings?.formatDuration ??
                            WoFormTheme.of(context)?.formatDuration ??
                            DurationField.defaultFormatDuration)
                        .call(initialDuration),
                    style: theme.textTheme.bodyMedium,
                  ),
          ),
        ),
      );
    }

    return FlexField(
      headerFlex: uiSettings?.headerFlex,
      labelText: labelLocation.isOutside
          ? editAsDateTime
                ? data.input.uiSettings?.dateTimeLabelText
                : data.input.uiSettings?.labelText
          : null,
      helperText: helperLocation.isOutside
          ? editAsDateTime
                ? data.input.uiSettings?.dateTimeHelperText
                : data.input.uiSettings?.helperText
          : null,
      errorText: errorLocation.isOutside ? data.errorText : null,
      disableMode: data.onValueChanged == null
          ? FlexFieldDisableMode.all
          : FlexFieldDisableMode.none,
      prefixIcon: prefixIconLocation.isOutside && uiSettings?.prefixIcon != null
          ? Padding(
              padding: EdgeInsets.only(
                top:
                    (Theme.of(
                          context,
                        ).inputDecorationTheme.contentPadding?.vertical ??
                        32) /
                    2,
              ),
              child: uiSettings?.prefixIcon,
            )
          : null,
      child: selector,
    );
  }
}

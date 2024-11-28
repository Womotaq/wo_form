import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/wo_form.dart';

class DateTimeField extends StatelessWidget {
  const DateTimeField(this.data, {super.key});

  final WoFieldData<DateTimeInput, DateTime?, DateTimeInputUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;
    final themedBorder = inputDecorationTheme.border;
    final initialDate = data.value;

    final label = Builder(
      builder: (context) {
        final headerData = WoFormInputHeaderData(
          path: data.path,
          labelText: data.uiSettings.labelText,
          helperText: data.uiSettings.helperText,
          errorText: data.errorText,
        );

        return (WoFormTheme.of(context)?.inputHeaderBuilder ?? InputHeader.new)
            .call(headerData);
      },
    );

    final dateSelector = data.input.editMode != DateEditMode.time
        ? InkWell(
            borderRadius: themedBorder is OutlineInputBorder
                ? themedBorder.borderRadius
                : themedBorder is UnderlineInputBorder
                    ? themedBorder.borderRadius
                    : BorderRadius.zero,
            onTap: data.onValueChanged == null
                ? null
                : () async {
                    final pickDate = data.uiSettings.pickDate ??
                        WoFormTheme.of(context)?.pickDate ??
                        defaultPickDate;

                    final selectedDate = await pickDate(
                      context: context,
                      initialDate: initialDate,
                      minDate: data.input.minDate?.resolve(),
                      maxDate: data.input.maxDate?.resolve(),
                      initialEntryMode: data.uiSettings.initialEntryMode,
                      initialDatePickerMode:
                          data.uiSettings.initialDatePickerMode,
                      dateFormat: data.uiSettings.dateFormat,
                    );

                    if (selectedDate != null) {
                      final initialDate =
                          data.value == null ? DateTime.now() : data.value!;

                      data.onValueChanged!(
                        selectedDate.copyWith(
                          hour: initialDate.hour,
                          minute: initialDate.minute,
                        ),
                      );
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
                child: initialDate == null
                    ? data.uiSettings.hintText == null
                        ? const Icon(Icons.calendar_month)
                        : Text(
                            data.uiSettings.hintText!,
                            style: theme.textTheme.bodyMedium,
                          )
                    : Text(
                        DateFormat(data.uiSettings.dateFormat ?? 'yMMMMd')
                            .format(initialDate),
                        style: theme.textTheme.bodyMedium,
                      ),
              ),
            ),
          )
        : null;

    final timeSelector = switch (data.input.editMode) {
      DateEditMode.date => false,
      DateEditMode.dateAndTime => initialDate != null,
      DateEditMode.time => true,
    }
        ? InkWell(
            borderRadius: themedBorder is OutlineInputBorder
                ? themedBorder.borderRadius
                : themedBorder is UnderlineInputBorder
                    ? themedBorder.borderRadius
                    : BorderRadius.zero,
            onTap: data.onValueChanged == null
                ? null
                : () async {
                    final initialDate =
                        data.value == null ? DateTime.now() : data.value!;

                    final pickDate = data.uiSettings.pickTime ??
                        WoFormTheme.of(context)?.pickTime ??
                        defaultPickTime;

                    final selectedTime = await pickDate(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(initialDate),
                    );

                    if (selectedTime != null) {
                      data.onValueChanged!(
                        initialDate.copyWith(
                          hour: selectedTime.hour,
                          minute: selectedTime.minute,
                        ),
                      );
                    }
                  },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).inputDecorationTheme.fillColor,
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Theme.of(context).colorScheme.onSurface,
                  width: .6,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: initialDate == null
                    ? data.uiSettings.hintText == null
                        ? const Icon(Icons.calendar_month)
                        : Text(
                            data.uiSettings.hintText!,
                            style: theme.textTheme.bodyMedium,
                          )
                    : Text(
                        DateFormat(
                          data.uiSettings.timeFormat ?? 'HH:mm',
                        ).format(initialDate),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
              ),
            ),
          )
        : null;

    final selector = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (initialDate != null && data.input.isRequired == false)
          IconButton(
            onPressed: data.onValueChanged == null
                ? null
                : () => data.onValueChanged!(null),
            icon: const Icon(Icons.close),
          ),
        if (dateSelector != null)
          timeSelector == null ? Expanded(child: dateSelector) : dateSelector,
        if (dateSelector != null && timeSelector != null)
          const Expanded(child: SizedBox(width: 16)),
        if (timeSelector != null)
          dateSelector == null ? Expanded(child: timeSelector) : timeSelector,
      ],
    );

    final labelFlex = data.uiSettings.labelFlex;

    return Opacity(
      opacity: data.onValueChanged == null ? 0.3 : 1,
      child: labelFlex == null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                label,
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: selector,
                ),
              ],
            )
          : ListTile(
              contentPadding: EdgeInsets.zero,
              title: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: labelFlex,
                    child: label,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 10,
                    child: selector,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
    );
  }

  static Future<DateTime?> defaultPickDate({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxDate,
    DateTime? minDate,
    DatePickerEntryMode? initialEntryMode,
    DatePickerMode? initialDatePickerMode,
    String? dateFormat,
  }) {
    final now = DateTime.now();

    return showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: minDate ?? DateTime(now.year, now.month - 1),
      lastDate: maxDate ?? DateTime(now.year + 1, now.month),
      initialEntryMode: initialEntryMode ?? DatePickerEntryMode.calendar,
      initialDatePickerMode: initialDatePickerMode ?? DatePickerMode.day,
    );
  }

  static Future<TimeOfDay?> defaultPickTime({
    required BuildContext context,
    required TimeOfDay initialTime,
    TimePickerEntryMode? initialEntryMode,
  }) =>
      showTimePicker(
        context: context,
        initialTime: initialTime,
        initialEntryMode: initialEntryMode ?? TimePickerEntryMode.dial,
      );
}

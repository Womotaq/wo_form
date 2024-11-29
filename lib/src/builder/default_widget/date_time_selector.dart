import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/wo_form.dart';

class DateTimeSelector extends StatelessWidget {
  const DateTimeSelector({
    this.dateTime,
    this.minDateTime,
    this.maxDateTime,
    this.onChanged,
    this.settings = const DateTimeInputUiSettings(),
    this.showCloseButton = true,
    super.key,
  });

  final DateTime? dateTime;
  final DateTime? minDateTime;
  final DateTime? maxDateTime;
  final void Function(DateTime? value)? onChanged;
  final DateTimeInputUiSettings settings;
  final bool showCloseButton;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;
    final themedBorder = inputDecorationTheme.border;

    final dateSelector = settings.editMode != DateEditMode.time
        ? InkWell(
            borderRadius: themedBorder is OutlineInputBorder
                ? themedBorder.borderRadius
                : themedBorder is UnderlineInputBorder
                    ? themedBorder.borderRadius
                    : BorderRadius.zero,
            onTap: onChanged == null
                ? null
                : () async {
                    final pickDate = settings.pickDate ??
                        WoFormTheme.of(context)?.pickDate ??
                        defaultPickDate;

                    final selectedDate = await pickDate(
                      context: context,
                      initialDate: dateTime,
                      minDate: minDateTime,
                      maxDate: maxDateTime,
                      initialEntryMode: settings.initialDateEntryMode,
                      initialDatePickerMode: settings.initialDatePickerMode,
                      dateFormat: settings.dateFormat,
                    );

                    if (selectedDate != null) {
                      final initialDate =
                          dateTime == null ? DateTime.now() : dateTime!;

                      onChanged!(
                        settings.editMode == DateEditMode.date
                            ? selectedDate
                            : selectedDate.copyWith(
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
                child: dateTime == null
                    ? settings.hintText == null
                        ? const Icon(Icons.calendar_month)
                        : Text(
                            settings.hintText!,
                            style: theme.textTheme.bodyMedium,
                          )
                    : Text(
                        DateFormat(settings.dateFormat ?? 'yMMMMd')
                            .format(dateTime!),
                        style: theme.textTheme.bodyMedium,
                      ),
              ),
            ),
          )
        : null;

    final timeSelector = switch (settings.editMode) {
      DateEditMode.date => false,
      DateEditMode.dateAndTime || null => dateTime != null,
      DateEditMode.time => true,
    }
        ? InkWell(
            borderRadius: themedBorder is OutlineInputBorder
                ? themedBorder.borderRadius
                : themedBorder is UnderlineInputBorder
                    ? themedBorder.borderRadius
                    : BorderRadius.zero,
            onTap: onChanged == null
                ? null
                : () async {
                    final initialDate =
                        dateTime == null ? DateTime.now() : dateTime!;

                    final pickTime = settings.pickTime ??
                        WoFormTheme.of(context)?.pickTime ??
                        defaultPickTime;

                    final selectedTime = await pickTime(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(initialDate),
                      initialEntryMode: settings.initialTimeEntryMode,
                    );

                    if (selectedTime != null) {
                      onChanged!(
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
                child: dateTime == null
                    ? settings.hintText == null
                        ? const Icon(Icons.calendar_month)
                        : Text(
                            settings.hintText!,
                            style: theme.textTheme.bodyMedium,
                          )
                    : Text(
                        DateFormat(
                          settings.timeFormat ?? 'HH:mm',
                        ).format(dateTime!),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
              ),
            ),
          )
        : null;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (dateTime != null && showCloseButton)
          IconButton(
            onPressed: onChanged == null ? null : () => onChanged!(null),
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

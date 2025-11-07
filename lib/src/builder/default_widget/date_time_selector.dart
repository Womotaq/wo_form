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
    this.errorText,
    this.showCloseButton = true,
    super.key,
  });

  final DateTime? dateTime;
  final DateTime? minDateTime;
  final DateTime? maxDateTime;
  final void Function(DateTime? value)? onChanged;
  final DateTimeInputUiSettings settings;
  final String? errorText;
  final bool showCloseButton;

  Future<void> pickDate(BuildContext context) async {
    final pickDate =
        settings.pickDate ??
        WoFormTheme.of(context)?.pickDate ??
        PickDate.calendarVerticalScroll;

    final selectedDate = await pickDate(
      context: context,
      initialDate: dateTime ?? settings.initialEditValue?.resolve(),
      minDate: minDateTime,
      maxDate: maxDateTime,
      dateFormat: settings.dateFormat,
    );

    if (selectedDate != null) {
      final initialDate = dateTime == null ? DateTime.now() : dateTime!;

      onChanged!(
        settings.editMode == DateEditMode.date
            ? selectedDate
            : selectedDate.copyWith(
                hour: initialDate.hour,
                minute: initialDate.minute,
              ),
      );
    }
  }

  Future<void> pickTime(BuildContext context) async {
    final initialDate = dateTime == null ? DateTime.now() : dateTime!;

    final pickTime =
        settings.pickTime ??
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
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final decoration = InputDecoration(
      labelText: settings.labelText,
      helperText: settings.helperText,
      errorText: errorText,
      prefixIcon: (settings.prefixIconLocation?.isInside ?? false)
          ? settings.prefixIcon
          : null,
      suffixIcon: dateTime == null || !showCloseButton
          ? null
          : IconButton(
              onPressed: onChanged == null ? null : () => onChanged!(null),
              icon: const Icon(Icons.close),
            ),
    );

    switch (settings.editMode) {
      case DateEditMode.date:
        return ClickableInputField(
          onTap: onChanged == null ? null : () => pickDate(context),
          decoration: decoration,
          child: dateTime == null
              ? Text(settings.addDateText ?? context.woFormL10n.selectDate)
              : Text(
                  DateFormat(
                    settings.dateFormat ?? 'yMMMMd',
                  ).format(dateTime!),
                ),
        );
      case DateEditMode.time:
        return ClickableInputField(
          onTap: onChanged == null ? null : () => pickTime(context),
          decoration: decoration,
          child: dateTime == null
              ? Text(settings.addTimeText ?? context.woFormL10n.selectTime)
              : Text(
                  DateFormat(
                    settings.dateFormat ?? 'HH:mm',
                  ).format(dateTime!),
                ),
        );
      case null:
      case DateEditMode.dateAndTime:
        return ClickableInputField(
          onTap: onChanged == null ? null : () => pickDate(context),
          decoration: decoration.copyWith(
            suffixIcon: dateTime == null
                ? null
                : DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: theme.colorScheme.onSurface.withAlpha(128),
                        ),
                      ),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InkWell(
                            onTap: onChanged == null
                                ? null
                                : () => pickTime(context),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Center(
                                child: Text(
                                  DateFormat(
                                    settings.timeFormat ?? 'HH:mm',
                                  ).format(dateTime!),
                                ),
                              ),
                            ),
                          ),
                          if (showCloseButton) ...[
                            VerticalDivider(
                              width: 1,
                              color: theme.colorScheme.onSurface.withAlpha(
                                128,
                              ),
                            ),
                            IconButton(
                              onPressed: onChanged == null
                                  ? null
                                  : () => onChanged!(null),
                              icon: const Icon(Icons.close),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
          ),
          child: dateTime == null
              ? Text(settings.addDateText ?? context.woFormL10n.selectDate)
              : Text(
                  DateFormat(
                    settings.dateFormat ?? 'yMMMMd',
                  ).format(dateTime!),
                ),
        );
    }
  }

  static Future<TimeOfDay?> defaultPickTime({
    required BuildContext context,
    required TimeOfDay initialTime,
    TimePickerEntryMode? initialEntryMode,
  }) => showTimePicker(
    context: context,
    initialTime: initialTime,
    initialEntryMode: initialEntryMode ?? TimePickerEntryMode.dial,
  );
}

class ClickableInputField extends StatelessWidget {
  const ClickableInputField({
    required this.child,
    required this.onTap,
    this.decoration = const InputDecoration(),
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;
    final themedBorder = inputDecorationTheme.border;
    final borderRadius = themedBorder is OutlineInputBorder
        ? themedBorder.borderRadius
        : themedBorder is UnderlineInputBorder
        ? themedBorder.borderRadius
        : BorderRadius.zero;

    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: InputDecorator(
        decoration: decoration,
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  Future<void> pickDate(BuildContext context) async {
    final pickDate =
        settings.pickDate ??
        WoFormTheme.of(context)?.pickDate ??
        context.read<DateTimeService>().pickDate;

    final selectedDate = await pickDate(
      context: context,
      initialDate: dateTime ?? settings.initialEditValue?.resolve(),
      minDate: minDateTime,
      maxDate: maxDateTime,
      initialEntryMode: settings.initialDateEntryMode,
      initialDatePickerMode: settings.initialDatePickerMode,
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

    switch (settings.editMode) {
      case DateEditMode.date:
        return ClickableInputField(
          onTap: onChanged == null ? null : () => pickDate(context),
          decoration: InputDecoration(
            prefixIcon: settings.prefixIcon,
            suffixIcon: dateTime == null || !showCloseButton
                ? null
                : IconButton(
                    onPressed: onChanged == null
                        ? null
                        : () => onChanged!(null),
                    icon: const Icon(Icons.close),
                  ),
          ),
          child: dateTime == null
              ? Text(
                  settings.addDateText ??
                      context.read<WoFormL10n?>()?.addDate?.call() ??
                      'Select a date',
                )
              : Text(
                  DateFormat(
                    settings.dateFormat ?? 'yMMMMd',
                  ).format(dateTime!),
                ),
        );
      case DateEditMode.time:
        return ClickableInputField(
          onTap: onChanged == null ? null : () => pickTime(context),
          decoration: InputDecoration(
            prefixIcon: settings.prefixIcon,
            suffixIcon: dateTime == null || !showCloseButton
                ? null
                : IconButton(
                    onPressed: onChanged == null
                        ? null
                        : () => onChanged!(null),
                    icon: const Icon(Icons.close),
                  ),
          ),
          child: dateTime == null
              ? Text(
                  settings.addTimeText ??
                      context.read<WoFormL10n?>()?.addTime?.call() ??
                      'Select a time',
                )
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
          decoration: InputDecoration(
            prefixIcon: settings.prefixIcon,
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
                          VerticalDivider(
                            width: 1,
                            color: theme.colorScheme.onSurface.withAlpha(
                              128,
                            ),
                          ),
                          if (showCloseButton)
                            IconButton(
                              onPressed: onChanged == null
                                  ? null
                                  : () => onChanged!(null),
                              icon: const Icon(Icons.close),
                            ),
                        ],
                      ),
                    ),
                  ),
          ),
          child: dateTime == null
              ? Text(
                  settings.addDateText ??
                      context.read<WoFormL10n?>()?.addDate?.call() ??
                      'Select a date',
                )
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
  }) {
    FocusScope.of(context).unfocus();

    return showTimePicker(
      context: context,
      initialTime: initialTime,
      initialEntryMode: initialEntryMode ?? TimePickerEntryMode.dial,
    );
  }
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

    return ClipRRect(
      borderRadius: themedBorder is OutlineInputBorder
          ? themedBorder.borderRadius
          : themedBorder is UnderlineInputBorder
          ? themedBorder.borderRadius
          : BorderRadius.zero,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        borderRadius: themedBorder is OutlineInputBorder
            ? themedBorder.borderRadius
            : themedBorder is UnderlineInputBorder
            ? themedBorder.borderRadius
            : BorderRadius.zero,
        child: InputDecorator(
          decoration: decoration,
          child: child,
        ),
      ),
    );
  }
}

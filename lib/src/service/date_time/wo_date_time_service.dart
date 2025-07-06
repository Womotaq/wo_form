import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class DateTimeService {
  const DateTimeService();

  static Future<DateTime?> materialPickDate({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxDate,
    DateTime? minDate,
    DatePickerEntryMode? initialEntryMode,
    DatePickerMode? initialDatePickerMode,
    String? dateFormat,
  }) {
    FocusScope.of(context).unfocus();

    final now = DateTime.now();
    final ref = initialDate ?? now;

    return showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: minDate ?? DateTime(ref.year - 100),
      lastDate: maxDate ?? DateTime(ref.year + 100, 12),
      initialEntryMode: initialEntryMode ?? DatePickerEntryMode.calendar,
      initialDatePickerMode: initialDatePickerMode ?? DatePickerMode.day,
    );
  }

  Future<DateTime?> pickDate({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxDate,
    DateTime? minDate,
    DatePickerEntryMode? initialEntryMode,
    DatePickerMode? initialDatePickerMode,
    String? dateFormat,
  }) {
    if (initialEntryMode == DatePickerEntryMode.input ||
        initialEntryMode == DatePickerEntryMode.inputOnly) {
      throw UnimplementedError(
        "WoDateTimeService doesn't support DatePickerEntryMode.input",
      );
    }

    if (minDate != null && maxDate != null && minDate.isAfter(maxDate)) {
      throw AssertionError('minDate must be before maxDate');
    }

    FocusScope.of(context).unfocus();

    return Navigator.push(
      context,
      MaterialPageRoute<DateTime>(
        builder: (_) => minDate == null
            ? PickDatePageWithYear(
                woFormStatusCubit: context.read(),
                minDate: minDate,
                maxDate: maxDate,
                initialDate: initialDate,
                dateFormat: dateFormat,
              )
            : switch (initialDatePickerMode) {
                DatePickerMode.year => PickDatePageWithYear(
                    woFormStatusCubit: context.read(),
                    minDate: minDate,
                    maxDate: maxDate,
                    initialDate: initialDate,
                    dateFormat: dateFormat,
                  ),
                DatePickerMode.day || null => PickDatePage(
                    woFormStatusCubit: context.read(),
                    minDate: minDate,
                    maxDate: maxDate,
                    initialDate: initialDate,
                    dateFormat: dateFormat,
                  ),
              },
      ),
    );
  }
}

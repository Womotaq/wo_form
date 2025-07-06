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

    final ref = initialDate ?? DateTime.now();

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

    final woFormStatusCubit = context.read<WoFormStatusCubit>();

    switch (initialDatePickerMode) {
      case null:
      case DatePickerMode.day:
        return Navigator.push(
          context,
          MaterialPageRoute<DateTime>(
            builder: (_) => PickDatePage(
              woFormStatusCubit: woFormStatusCubit,
              minDate: minDate,
              maxDate: maxDate,
              initialDate: initialDate,
              dateFormat: dateFormat,
            ),
          ),
        );
      case DatePickerMode.year:
        final screenSize = MediaQuery.of(context).size;
        if (screenSize.width > 500 && screenSize.height > 700) {
          return showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: PickDatePageWithYear.inModal(
                  woFormStatusCubit: woFormStatusCubit,
                  minDate: minDate,
                  maxDate: maxDate,
                  initialDate: initialDate,
                  dateFormat: dateFormat,
                ),
              ),
            ),
          );
        }

        return Navigator.push(
          context,
          MaterialPageRoute<DateTime>(
            builder: (_) => PickDatePageWithYear(
              woFormStatusCubit: woFormStatusCubit,
              minDate: minDate,
              maxDate: maxDate,
              initialDate: initialDate,
              dateFormat: dateFormat,
            ),
          ),
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class DateTimeService {
  const DateTimeService();

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
      throw AssertionError('minBound must be before maxBound');
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

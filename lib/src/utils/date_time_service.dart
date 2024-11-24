import 'package:flutter/material.dart';

// ignore: one_member_abstracts
abstract class DateTimeService {
  const DateTimeService();

  Future<DateTime?> pickDate({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxBound,
    DateTime? minBound,
    DatePickerEntryMode? initialEntryMode,
  });
}

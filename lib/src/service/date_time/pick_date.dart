// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wo_form/wo_form.dart';

typedef PickDateDef =
    Future<DateTime?> Function({
      required BuildContext context,
      DateTime? initialDate,
      DateTime? maxDate,
      DateTime? minDate,
      String? dateFormat,
    });

class PickDate {
  static Future<DateTime?> cupertino({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxDate,
    DateTime? minDate,
    String? dateFormat,
  }) async {
    var date = initialDate;

    // See : https://api.flutter.dev/flutter/cupertino/CupertinoDatePicker-class.html
    await Push.modalBottomSheet(
      context: context,
      layout: LayoutMethod.shrinkWrap,
      child: Builder(
        builder: (context) => Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6),
          // The Bottom margin is provided to align the popup above the system
          // navigation bar.
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Provide a background color for the popup.
          color: Theme.of(context).scaffoldBackgroundColor,
          // Use a SafeArea widget to avoid system overlaps.
          child: SafeArea(
            child: CupertinoDatePicker(
              initialDateTime: initialDate?.copyWith(
                hour: 0,
                minute: 0,
                second: 0,
                millisecond: 0,
                microsecond: 0,
              ),
              maximumDate: maxDate,
              minimumDate: minDate,
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime newDate) => date = newDate,
            ),
          ),
        ),
      ),
    );

    return date;
  }

  static Future<DateTime?> material({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxDate,
    DateTime? minDate,
    DatePickerEntryMode? initialEntryMode,
    DatePickerMode? initialDatePickerMode,
    String? dateFormat,
  }) {
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

  static Future<DateTime?> calendarHorizontalScroll({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxDate,
    DateTime? minDate,
    String? dateFormat,
  }) {
    if (minDate != null && maxDate != null && minDate.isAfter(maxDate)) {
      throw AssertionError('minDate must be before maxDate');
    }

    final screenSize = MediaQuery.of(context).size;
    if (screenSize.width > 500 && screenSize.height > 700) {
      return showDialog(
        context: context,
        builder: (context) => Dialog(
          clipBehavior: Clip.hardEdge,
          child: PickDatePageWithYear.inModal(
            minDate: minDate,
            maxDate: maxDate,
            initialDate: initialDate,
            dateFormat: dateFormat,
          ),
        ),
      );
    }

    return Navigator.push(
      context,
      MaterialPageRoute<DateTime>(
        builder: (_) => PickDatePageWithYear(
          minDate: minDate,
          maxDate: maxDate,
          initialDate: initialDate,
          dateFormat: dateFormat,
        ),
      ),
    );
  }

  static Future<DateTime?> calendarVerticalScroll({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? maxDate,
    DateTime? minDate,
    String? dateFormat,
  }) {
    if (minDate != null && maxDate != null && minDate.isAfter(maxDate)) {
      throw AssertionError('minDate must be before maxDate');
    }

    final screenSize = MediaQuery.of(context).size;
    if (screenSize.width > 500 && screenSize.height > 700) {
      return showDialog(
        context: context,
        builder: (context) => Dialog(
          clipBehavior: Clip.hardEdge,
          child: PickDatePage.inModal(
            minDate: minDate,
            maxDate: maxDate,
            initialDate: initialDate,
            dateFormat: dateFormat,
          ),
        ),
      );
    }

    return Navigator.push(
      context,
      MaterialPageRoute<DateTime>(
        builder: (_) => PickDatePage(
          minDate: minDate,
          maxDate: maxDate,
          initialDate: initialDate,
          dateFormat: dateFormat,
        ),
      ),
    );
  }

  // The folowing fields are simply here to ensure
  // the methods follow PickDateDef's signature
  static const PickDateDef _cupertino = cupertino;
  static const PickDateDef _material = material;
  static const PickDateDef _calendarHorizontalScroll = calendarHorizontalScroll;
  static const PickDateDef _calendarVerticalScroll = calendarVerticalScroll;
}

class PickDateDefNullableConverter
    extends JsonConverter<PickDateDef?, String?> {
  const PickDateDefNullableConverter();

  @override
  PickDateDef? fromJson(String? json) => switch (json) {
    null => null,
    'cupertino' => PickDate.cupertino,
    'material' => PickDate.material,
    'calendarHorizontalScroll' => PickDate.calendarHorizontalScroll,
    'calendarVerticalScroll' => PickDate.calendarVerticalScroll,
    _ => null,
  };

  @override
  String? toJson(PickDateDef? object) => switch (object) {
    null => null,
    PickDate.cupertino => 'cupertino',
    PickDate.material => 'material',
    PickDate.calendarHorizontalScroll => 'calendarHorizontalScroll',
    PickDate.calendarVerticalScroll => 'calendarVerticalScroll',
    _ => null,
  };
}

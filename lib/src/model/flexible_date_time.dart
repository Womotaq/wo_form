import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';

part 'flexible_date_time.freezed.dart';
part 'flexible_date_time.g.dart';

@freezed
sealed class FlexibleDateTime with _$FlexibleDateTime {
  const factory FlexibleDateTime.fixed({
    required DateTime date,
  }) = FixedDateTime;

  const factory FlexibleDateTime.today({
    int? addYears,
    int? addMonths,
    int? addDays,
    int? replaceYears,
    int? replaceMonths,
    int? replaceDays,

    /// A number from 1 (Monday) to 7 (Sunday). In accordance with ISO 8601.
    /// Applied after [replaceDays].
    int? replaceWeekday,
    int? replaceHours,
    int? replaceMinutes,
  }) = TodayDate;

  /// Required for the override getter
  const FlexibleDateTime._();

  factory FlexibleDateTime.fromJson(Json json) =>
      _$FlexibleDateTimeFromJson(json);

  // --

  DateTime resolve() {
    switch (this) {
      case FixedDateTime(date: final date):
        return date;
      case TodayDate(
        addYears: final addYears,
        addMonths: final addMonths,
        addDays: final addDays,
        replaceYears: final replaceYears,
        replaceMonths: final replaceMonths,
        replaceDays: final replaceDays,
        replaceWeekday: final replaceWeekday,
        replaceHours: final replaceHours,
        replaceMinutes: final replaceMinutes,
      ):
        final now = DateTime.now();
        final date = DateTime(
          replaceYears ?? now.year + (addYears ?? 0),
          replaceMonths ?? now.month + (addMonths ?? 0),
          replaceDays ?? now.day + (addDays ?? 0),
          replaceHours ?? 0,
          replaceMinutes ?? 0,
        );

        if (replaceWeekday != null) {
          return date.copyWith(day: date.day + replaceWeekday - date.weekday);
        } else {
          return date;
        }
    }
  }
}

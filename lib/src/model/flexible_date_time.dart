import 'package:freezed_annotation/freezed_annotation.dart';

part 'flexible_date_time.freezed.dart';
part 'flexible_date_time.g.dart';

@freezed
sealed class FlexibleDateTime with _$FlexibleDateTime {
  const factory FlexibleDateTime.fixed({
    required DateTime date,
  }) = FixedDateTime;

  const factory FlexibleDateTime.today({
    @Default(0) int addYears,
    @Default(0) int addMonths,
    @Default(0) int addDays,
    int? replaceYears,
    int? replaceMonths,
    int? replaceDays,

    /// A number from 1 (Monday) to 7 (Sunday). In accordance with ISO 8601.
    /// Applied after [replaceDays].
    int? replaceWeekday,
  }) = TodayDate;

  /// Required for the override getter
  const FlexibleDateTime._();

  factory FlexibleDateTime.fromJson(Map<String, dynamic> json) =>
      _$FlexibleDateTimeFromJson(json);

  static Map<String, dynamic>? staticToJson(FlexibleDateTime? object) =>
      object?.toJson();

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
      ):
        final now = DateTime.now();
        final date = DateTime(
          replaceYears ?? now.year + addYears,
          replaceMonths ?? now.month + addMonths,
          replaceDays ?? now.day + addDays,
        );

        if (replaceWeekday != null) {
          return date.copyWith(day: date.day + replaceWeekday - date.weekday);
        } else {
          return date;
        }
    }
  }
}

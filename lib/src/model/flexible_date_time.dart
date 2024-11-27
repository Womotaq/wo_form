import 'package:freezed_annotation/freezed_annotation.dart';

part 'flexible_date_time.freezed.dart';
part 'flexible_date_time.g.dart';

/// A media is either an image or a video. For audio and other files,
/// see [FileInput].
@freezed
sealed class FlexibleDateTime with _$FlexibleDateTime {
  const factory FlexibleDateTime.fixed({
    required DateTime date,
  }) = FixedDateTime;

  const factory FlexibleDateTime.relative({
    @Default(0) int addYears,
    @Default(0) int addMonths,
    @Default(0) int addDays,
    int? replaceYears,
    int? replaceMonths,
    int? replaceDays,
  }) = RelativeDate;

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
      case RelativeDate(
          addYears: final addYears,
          addMonths: final addMonths,
          addDays: final addDays,
          replaceYears: final replaceYears,
          replaceMonths: final replaceMonths,
          replaceDays: final replaceDays,
        ):
        final now = DateTime.now();
        final today = DateTime(now.year, now.month, now.day);
        return today.copyWith(
          year: replaceYears ?? now.year + addYears,
          month: replaceMonths ?? now.month + addMonths,
          day: replaceDays ?? now.day + addDays,
        );
    }
  }
}

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

  const factory FlexibleDateTime.now() = NowDateTime;

  const factory FlexibleDateTime.add({
    @Default(0) int years,
    @Default(0) int months,
    @Default(0) int days,
    @Default(0) int hours,
    @Default(0) int minutes,
  }) = AddToNowDateTime;

  const factory FlexibleDateTime.replace({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
  }) = ReplaceFromNowDateTime;

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
      case NowDateTime():
        return DateTime.now();
      case AddToNowDateTime(
          years: final years,
          months: final months,
          days: final days,
          hours: final hours,
          minutes: final minutes,
        ):
        final now = DateTime.now();
        return now.copyWith(
          year: now.year + years,
          month: now.month + months,
          day: now.day + days,
          hour: now.hour + hours,
          minute: now.minute + minutes,
        );
      case ReplaceFromNowDateTime(
          years: final years,
          months: final months,
          days: final days,
          hours: final hours,
          minutes: final minutes,
        ):
        return DateTime.now().copyWith(
          year: years,
          month: months,
          day: days,
          hour: hours,
          minute: minutes,
        );
    }
  }
}

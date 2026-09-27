import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  group('FlexibleDateTime.resolve — fixed', () {
    test('returns the exact date given', () {
      final date = DateTime(2024, 3, 15);
      expect(FlexibleDateTime.fixed(date: date).resolve(), date);
    });
  });

  group('FlexibleDateTime.resolve — today', () {
    test('with no fields set, resolves to today at midnight', () {
      final now = DateTime.now();
      final resolved = const FlexibleDateTime.today().resolve();

      expect(resolved.year, now.year);
      expect(resolved.month, now.month);
      expect(resolved.day, now.day);
      expect(resolved.hour, 0);
      expect(resolved.minute, 0);
    });

    test('addDays/addMonths/addYears offset from today', () {
      final now = DateTime.now();
      final resolved = const FlexibleDateTime.today(
        addDays: 1,
        addMonths: 1,
        addYears: 1,
      ).resolve();

      expect(
        resolved,
        DateTime(now.year + 1, now.month + 1, now.day + 1),
      );
    });

    test('replaceYears/Months/Days override today outright', () {
      final resolved = const FlexibleDateTime.today(
        replaceYears: 2000,
        replaceMonths: 6,
        replaceDays: 15,
      ).resolve();

      expect(resolved, DateTime(2000, 6, 15));
    });

    test('replaceHours/Minutes set the time of day', () {
      final resolved = const FlexibleDateTime.today(
        replaceYears: 2000,
        replaceMonths: 1,
        replaceDays: 1,
        replaceHours: 14,
        replaceMinutes: 30,
      ).resolve();

      expect(resolved, DateTime(2000, 1, 1, 14, 30));
    });

    test('replaceWeekday snaps to that ISO weekday in the same week', () {
      // 2024-01-01 is a Monday (ISO weekday 1).
      final resolved = const FlexibleDateTime.today(
        replaceYears: 2024,
        replaceMonths: 1,
        replaceDays: 1,
        replaceWeekday: 3, // Wednesday
      ).resolve();

      expect(resolved, DateTime(2024, 1, 3));
      expect(resolved.weekday, DateTime.wednesday);
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

// TODO : use TabBar.foregroundColor ?

class PickDatePage extends StatelessWidget {
  const PickDatePage({
    required this.minDate,
    this.maxDate,
    this.initialDate,
    this.dateFormat,
    super.key,
  }) : _displayMode = _DisplayMode.page;

  const PickDatePage.inModal({
    required this.minDate,
    this.maxDate,
    this.initialDate,
    this.dateFormat,
    super.key,
  }) : _displayMode = _DisplayMode.modal;

  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? initialDate;
  final String? dateFormat;
  final _DisplayMode _displayMode;

  DateTime _clamp(DateTime date) {
    if (minDate != null && date.isBefore(minDate!)) return minDate!;
    if (maxDate != null && date.isAfter(maxDate!)) return maxDate!;
    return date;
  }

  void selectDate(BuildContext context, DateTime date) {
    if (_clamp(date) == date) Navigator.of(context).pop(date);
  }

  @override
  Widget build(BuildContext context) {
    var initialDate = this.initialDate;
    if (initialDate != null &&
        minDate != null &&
        initialDate.isBefore(minDate!)) {
      initialDate = null;
    } else if (initialDate != null &&
        maxDate != null &&
        initialDate.isAfter(maxDate!)) {
      initialDate = null;
    }

    switch (_displayMode) {
      case _DisplayMode.page:
        return Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: const Size(double.maxFinite, kToolbarHeight),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: AppBarTheme.of(context).foregroundColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: DaysOfWeek(),
                ),
              ),
            ),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              final sideOverflow = constraints.maxWidth - 512;
              final sidePadding = sideOverflow > 0 ? sideOverflow / 2 : .0;

              final ref = initialDate ?? DateTime.now();

              return InfiniteListView(
                padding: EdgeInsets.symmetric(horizontal: 16 + sidePadding),
                centerIndex: ref.fullMonth,
                minIndex: minDate?.fullMonth,
                maxIndex: maxDate?.fullMonth,
                itemBuilder: (context, fullMonth) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 32,
                        child: Text(
                          DateFormat.yMMMM()
                              .format(DateTime(0, fullMonth))
                              .capitalized(),
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      MonthlyCalendar(
                        fullMonth: fullMonth,
                        selectedDate: initialDate,
                        minDate: minDate,
                        maxDate: maxDate,
                        onSelect: (day) => selectDate(
                          context,
                          DateTime(0, fullMonth, day),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        );
      case _DisplayMode.modal:
        return BlocProvider(
          create: (context) => _FullMonthCubit(
            initialDate?.fullMonth ?? DateTime.now().fullMonth,
            maxDate: maxDate?.fullMonth,
            minDate: minDate?.fullMonth,
          ),
          child: BlocBuilder<_FullMonthCubit, int>(
            builder: (context, fullMonth) {
              return SizedBox(
                width: 32 + kMinInteractiveDimension * 7,
                height:
                    32 +
                    kToolbarHeight +
                    kMinInteractiveDimension * (1 + fullMonth.weeks),
                child: Column(
                  children: [
                    ColoredBox(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: kToolbarHeight,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () => context
                                        .read<_FullMonthCubit>()
                                        .set(fullMonth - 1),
                                    icon: const Icon(Icons.arrow_back),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        DateFormat.yMMMM()
                                            .format(DateTime(0, fullMonth))
                                            .capitalized(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => context
                                        .read<_FullMonthCubit>()
                                        .set(fullMonth + 1),
                                    icon: const Icon(Icons.arrow_forward),
                                  ),
                                ],
                              ),
                            ),
                            const DaysOfWeek(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: MonthlyCalendar(
                        fullMonth: fullMonth,
                        selectedDate: initialDate,
                        minDate: minDate,
                        maxDate: maxDate,
                        onSelect: (day) => selectDate(
                          context,
                          DateTime(0, fullMonth, day),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
    }
  }

  /// Return the amount of weeks in a month
  int weeksInMonth(int fullMonth) {
    // Get the first and last days of the month.
    final firstDayOfMonth = DateTime(0, fullMonth);
    final lastDayOfMonth = DateTime(
      0,
      fullMonth + 1,
      0,
    ); // 0 gives the last day of the month.

    // Calculate the weekday of the first and last day.
    final firstWeekday = firstDayOfMonth.weekday; // 1 (Monday) to 7 (Sunday)
    final lastWeekday = lastDayOfMonth.weekday;

    // Total days in the month.
    final daysInMonth = lastDayOfMonth.day;

    // Calculate the total number of weeks.
    // Weeks overlap if the month doesn't start on Monday or end on Sunday.
    return ((daysInMonth + firstWeekday - 1 + (7 - lastWeekday)) / 7).ceil();
  }
}

enum _DisplayMode { page, modal }

class _FullMonthCubit extends Cubit<int> {
  _FullMonthCubit(
    super.initialState, {
    required this.minDate,
    required this.maxDate,
  });

  final int? minDate;
  final int? maxDate;

  Future<void> set(int fullMonth) async {
    final newFullMonth = fullMonth._clamp(minDate, maxDate);
    if (newFullMonth == state) return;
    emit(newFullMonth);
  }
}

extension _FullMonth on int {
  int _clamp(int? min, int? max) {
    if (min != null && this < min) return min;
    if (max != null && this > max) return max;
    return this;
  }

  /// The number of weeks required to display all days of this month
  /// in a standard calendar grid (starting Monday or Sunday, depending on
  /// DateTime.weekday's definition).
  ///
  /// This calculation accounts for the day of the week the month starts on
  /// and the total number of days in that month. It effectively calculates
  /// `ceil(totalDaysIncludingPadding / 7)`.
  ///
  /// Example:
  /// - January 2023 (`2023 * 12 + 0` = 24276): Starts on a Sunday (weekday 7).
  ///   Has 31 days. It will span 6 weeks.
  /// - February 2023 (`2023 * 12 + 1` = 24277): Starts on a Wednesday
  ///   (weekday 3). Has 28 days. It will span 5 weeks.
  int get weeks {
    // Get the first day of the month.
    final firstDayOfMonth = DateTime(0, this);

    // Get the last day of the month to find the total number of days.
    // By setting the day to 0 of the *next* month, DateTime automatically
    // rolls back to the last day of the *current* month.
    final daysInMonth = DateTime(0, this + 1, 0).day;

    // Get the day of the week for the 1st of the month.
    // `DateTime.weekday` returns: 1 = Monday, 2 = Tuesday, ..., 7 = Sunday.
    final firstDayWeekday = firstDayOfMonth.weekday;

    // Calculate the total number of "slots" needed in a calendar grid.
    // This includes any leading empty days before the 1st of the month if
    // the month doesn't start on a Monday (or your preferred start day).
    // (firstDayWeekday - 1) gives the number of blank days before the 1st.
    final totalSlots = (firstDayWeekday - 1) + daysInMonth;

    // Calculate the number of weeks using integer ceiling division.
    // Adding 6 to `totalSlots` before integer division by 7 correctly
    // implements `ceil(totalSlots / 7)`.
    return (totalSlots + 6) ~/ 7;
  }
}

class InfiniteListView extends StatelessWidget {
  const InfiniteListView({
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
    this.centerIndex = 0,
    this.minIndex,
    this.maxIndex,
    this.padding,
    super.key,
  });

  final Widget? Function(BuildContext context, int index) itemBuilder;
  final Axis scrollDirection;

  /// Will start at this index
  final int centerIndex;
  final int? minIndex;
  final int? maxIndex;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    if (scrollDirection != Axis.vertical) throw UnimplementedError();

    if (maxIndex != null && centerIndex > maxIndex!) {
      throw AssertionError(
        'centerIndex ($centerIndex) must be lower or equal to '
        'maxIndex ($maxIndex)',
      );
    }
    if (minIndex != null && centerIndex < minIndex!) {
      throw AssertionError(
        'centerIndex ($centerIndex) must be higher or equal to '
        'minIndex ($minIndex)',
      );
    }

    final Key forwardListKey = UniqueKey();
    return Scrollable(
      viewportBuilder: (BuildContext context, ViewportOffset offset) {
        return Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Viewport(
            offset: offset,
            center: forwardListKey,
            slivers: [
              // reverse
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: minIndex == null ? null : centerIndex - minIndex!,
                  (BuildContext context, int index) {
                    final movedIndex = centerIndex - index - 1;
                    final child = itemBuilder(context, movedIndex);
                    if (child == null) {
                      if (minIndex != null && movedIndex > minIndex!) {
                        return const SizedBox.shrink();
                      }
                    }
                    return child;
                  },
                ),
              ),
              // forward
              SliverList(
                key: forwardListKey,
                delegate: SliverChildBuilderDelegate(
                  childCount: maxIndex == null
                      ? null
                      : maxIndex! - centerIndex + 1,
                  (BuildContext context, int index) {
                    final movedIndex = centerIndex + index;
                    final child = itemBuilder(context, movedIndex);
                    if (child == null) {
                      if (maxIndex != null && movedIndex < maxIndex!) {
                        return const SizedBox.shrink();
                      }
                    }
                    return child;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

extension on DateTime {
  int get fullMonth => year * 12 + month;
}

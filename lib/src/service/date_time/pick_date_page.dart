import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/wo_form.dart';

class PickDatePage extends StatelessWidget {
  const PickDatePage({
    required this.minDate,
    this.maxDate,
    this.initialDate,
    this.dateFormat,
    super.key,
  });

  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? initialDate;
  final String? dateFormat;

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

    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size(double.maxFinite, kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DaysOfWeek(),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final sideOverflow = constraints.maxWidth - 512;
          final sidePadding = sideOverflow > 0 ? sideOverflow / 2 : .0;

          // final maxWidth = min(constraints.maxWidth, 512);
          // final cellWidth = (maxWidth - 32) / 7;
          // var initialScrollOffset = 0.0;
          // if (initialDate != null) {
          //   for (var i = 0;
          //       i < initialDate.fullMonth - minDate.fullMonth;
          //       i++) {
          //     final fullMonth = i + minDate.fullMonth;
          //     initialScrollOffset +=
          //         32 + cellWidth * weeksInMonth(fullMonth) + 16;
          //   }
          // }

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
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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

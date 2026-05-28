import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class PickDatePage extends StatelessWidget {
  const PickDatePage({
    required this.minDate,
    this.maxDate,
    this.initialDate,
    this.dateFormat,
    super.key,
  }) : _displayMode = _DisplayMode.page;

  const PickDatePage.dialog({
    required this.minDate,
    this.maxDate,
    this.initialDate,
    this.dateFormat,
    super.key,
  }) : _displayMode = _DisplayMode.dialog;

  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? initialDate;
  final String? dateFormat;
  final _DisplayMode _displayMode;

  void selectDate(BuildContext context, DateTime date) =>
      Navigator.of(context).pop(date);

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
            actions: const [
              _Test(),
            ],
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
                itemBuilder: (context, fullMonth) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        DateFormat.yMMMM()
                            .format(DateTime(0, fullMonth))
                            .capitalized(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      child: const DaysOfWeek(),
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
                ),
              );
            },
          ),
        );
      case _DisplayMode.dialog:
        return BlocProvider(
          create: (context) => _FullMonthCubit(
            initialDate?.fullMonth ?? DateTime.now().fullMonth,
            maxDate: maxDate?.fullMonth,
            minDate: minDate?.fullMonth,
          ),
          child: BlocBuilder<_FullMonthCubit, int>(
            builder: (context, fullMonth) => SizedBox(
              width: 32 + kMinInteractiveDimension * 7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                      shrinkWrap: false,
                    ),
                  ),
                ],
              ),
            ),
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

enum _DisplayMode { page, dialog }

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

class _Test extends StatefulWidget {
  const _Test();

  @override
  State<_Test> createState() => _TestState();
}

class _TestState extends State<_Test> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notification) {
        print(notification);
        return false;
      },
      child: Text(DateFormat.yMMMM().format(date)),
    );
  }
}

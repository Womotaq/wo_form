import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/wo_form.dart';

class PickDatePageWithYear extends StatefulWidget {
  const PickDatePageWithYear({
    required this.woFormStatusCubit,
    this.minDate,
    this.maxDate,
    this.initialDate,
    this.dateFormat,
    super.key,
  });

  final WoFormStatusCubit? woFormStatusCubit;
  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? initialDate;
  final String? dateFormat;

  @override
  State<PickDatePageWithYear> createState() => _PickDatePageWithYearState();
}

class _PickDatePageWithYearState extends State<PickDatePageWithYear> {
  late final InfinitePageController yearScrollController;
  late final InfinitePageController monthScrollController;
  late final InfinitePageController dayScrollController;
  DateTime? initialDateSafe;

  @override
  void initState() {
    super.initState();

    initialDateSafe = widget.initialDate ?? DateTime.now();
    if (widget.minDate != null && initialDateSafe!.isBefore(widget.minDate!)) {
      initialDateSafe = null;
    } else if (widget.maxDate != null &&
        initialDateSafe!.isAfter(widget.maxDate!)) {
      initialDateSafe = null;
    }

    final yearMonthCenter =
        initialDateSafe ?? widget.minDate ?? widget.maxDate ?? DateTime.now();

    yearScrollController = InfinitePageController(
      initialIndex: yearMonthCenter.year,
      minIndex: widget.minDate?.year,
      maxIndex: widget.maxDate?.year,
      viewportFraction: .25,
    );
    monthScrollController = InfinitePageController(
      initialIndex: yearMonthCenter.fullMonth
          ._clamp(widget.minDate?.fullMonth, widget.maxDate?.fullMonth),
      minIndex: widget.minDate?.fullMonth,
      maxIndex: widget.maxDate?.fullMonth,
      viewportFraction: .32,
    );
    dayScrollController = InfinitePageController(
      initialIndex: yearMonthCenter.fullMonth,
      maxIndex: widget.maxDate?.fullMonth,
      minIndex: widget.minDate?.fullMonth,
    );
  }

  @override
  Widget build(BuildContext context) {
    var initialDate = widget.initialDate?.date;
    final minDate = widget.minDate?.date;
    final maxDate = widget.maxDate?.date;

    if (initialDate != null &&
        minDate != null &&
        initialDate.isBefore(minDate)) {
      initialDate = null;
    }
    if (initialDate != null &&
        maxDate != null &&
        initialDate.isAfter(maxDate)) {
      initialDate = null;
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _FullMonthCubit(
            initialDateSafe?.fullMonth ?? DateTime.now().fullMonth,
            yearScrollController: yearScrollController,
            monthScrollController: monthScrollController,
            dayPageController: dayScrollController,
            minDate: minDate?.fullMonth,
            maxDate: maxDate?.fullMonth,
          ),
        ),
        BlocProvider(
          create: (context) => _SelectedDateCubit(
            initialDate,
            fullMonthCubit: context.read(),
            maxDate: maxDate,
            minDate: minDate,
          ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            SizedBox(
              height: 64,
              child: InfinitePageView(
                controller: yearScrollController,
                itemBuilder: (context, index) => _YearWidget(year: index),
                pageSnapping: false,
              ),
            ),
            SizedBox(
              height: 64,
              child: InfinitePageView(
                controller: monthScrollController,
                itemBuilder: (context, index) => _MonthWidget(fullMonth: index),
                pageSnapping: false,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SizedBox(
                width: _DateWidget.cellWidth * 7,
                height: _DateWidget.cellWidth * 7,
                child: _DateWidget(controller: dayScrollController),
              ),
            ),
            RepositoryProvider.value(
              value: widget.woFormStatusCubit,
              child: BlocBuilder<_SelectedDateCubit, DateTime?>(
                builder: (context, date) {
                  if (date == null) return const SizedBox.shrink();

                  return BlocBuilder<_FullMonthCubit, int>(
                    builder: (context, fullMonth) {
                      if (fullMonth != date.fullMonth) {
                        return const SizedBox.shrink();
                      }

                      return SubmitButton(
                        SubmitButtonData(
                          text: DateFormat(widget.dateFormat ?? 'yMMMMd')
                              // DateFormat('EEEE d MMMM y')
                              .format(date),
                          // MaterialLocalizations.of(context)
                          //     .keyboardKeySelect,
                          onPressed: () => Navigator.of(context).pop(
                            context.read<_SelectedDateCubit>().state,
                          ),
                          position: SubmitButtonPosition.body,
                          pageIndex: 0,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    yearScrollController.dispose();
    monthScrollController.dispose();
    super.dispose();
  }
}

class _SelectedDateCubit extends Cubit<DateTime?> {
  _SelectedDateCubit(
    super.initialState, {
    required this.fullMonthCubit,
    required this.minDate,
    required this.maxDate,
  });

  final _FullMonthCubit fullMonthCubit;
  final DateTime? minDate;
  final DateTime? maxDate;

  DateTime _clamp(DateTime date) {
    if (minDate != null && date.isBefore(minDate!)) return minDate!;
    if (maxDate != null && date.isAfter(maxDate!)) return maxDate!;
    return date;
  }

  void setDay(int day) {
    final newDate = DateTime(0, fullMonthCubit.state, day);
    if (_clamp(newDate) == newDate) emit(newDate);
  }
}

class _FullMonthCubit extends Cubit<int> {
  _FullMonthCubit(
    super.initialState, {
    required this.yearScrollController,
    required this.monthScrollController,
    required this.dayPageController,
    required this.minDate,
    required this.maxDate,
  });

  final InfinitePageController yearScrollController;
  final InfinitePageController monthScrollController;
  final InfinitePageController dayPageController;
  final int? minDate;
  final int? maxDate;

  bool _locked = false;

  Future<void> setFullMonth(int fullMonth, {bool fromMonths = false}) async {
    if (_locked) return;

    final newFullMonth = fullMonth._clamp(minDate, maxDate);
    final scrollYear = newFullMonth.year != state.year;

    if (newFullMonth == state) return;
    _locked = true;
    emit(newFullMonth);

    if (fromMonths) dayPageController.jumpToPage(fullMonth);

    if (scrollYear) yearScrollController.jumpToPage(state.year);

    // Let the widgets update their sizes before srolling to their hitbox
    await monthScrollController.animateToPage(
      state,
      duration: Durations.medium1,
      curve: Curves.easeInOut,
    );

    _locked = false;
  }

  Future<void> setYear(int year) async {
    if (_locked) return;

    final fullMonth = _FullMonth.build(year: year, month: state.month)
        ._clamp(minDate, maxDate);

    if (fullMonth == state) return;
    _locked = true;
    emit(fullMonth);

    dayPageController.jumpToPage(
      fullMonth,
      // duration: Durations.medium1,
      // curve: Curves.easeInOut,
    );

    // Let the _MonthWidgets apply year delta before srolling to their index
    monthScrollController.jumpToPage(
      state,
    );

    // Let the widgets update their sizes before srolling to their hitbox
    await yearScrollController.animateToPage(
      state.year,
      duration: Durations.medium1,
      curve: Curves.easeInOut,
    );

    _locked = false;
  }
}

extension on DateTime {
  int get fullMonth => year * 12 + month;
  DateTime get date => DateTime(year, month, day);
}

extension _FullMonth on int {
  static int build({required int year, required int month}) =>
      year * 12 + month;

  (int, int) get yearAndMonth {
    var month = this % 12;
    var year = this ~/ 12;
    if (month == 0) {
      month = 12;
      year -= 1;
    }

    return (year, month);
  }

  int get year => yearAndMonth.$1;
  int get month => yearAndMonth.$2;

  int _clamp(int? min, int? max) {
    if (min != null && this < min) return min;
    if (max != null && this > max) return max;
    return this;
  }
}

class _YearWidget extends StatelessWidget {
  const _YearWidget({required this.year});

  final int year;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<_FullMonthCubit, int, int>(
      selector: (date) => date.year,
      builder: (context, selectedYear) {
        return _SelectableIndex(
          index: year,
          selectedIndex: selectedYear,
          child: Text(year.toString()),
          onSelect: () => context.read<_FullMonthCubit>().setYear(year),
        );
      },
    );
  }
}

class _MonthWidget extends StatelessWidget {
  const _MonthWidget({required this.fullMonth});

  final int fullMonth;

  @override
  Widget build(BuildContext context) {
    final month = fullMonth % 12;
    return BlocBuilder<_FullMonthCubit, int>(
      builder: (context, currentFullMonth) {
        return _SelectableIndex(
          index: fullMonth,
          selectedIndex: currentFullMonth,
          child: Text(DateFormat.MMMM().format(DateTime(1, month))),
          onSelect: () => context
              .read<_FullMonthCubit>()
              .setFullMonth(fullMonth, fromMonths: true),
        );
      },
    );
  }
}

class _SelectableIndex extends StatelessWidget {
  const _SelectableIndex({
    required this.index,
    required this.selectedIndex,
    required this.child,
    required this.onSelect,
  });

  final int index;
  final int selectedIndex;
  final Widget child;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final yearWidget = Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: child,
    );

    return DefaultTextStyle(
      style: index == selectedIndex
          ? theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onPrimary,
            )
          : TextStyle(color: theme.disabledColor),
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onSelect,
          child: index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: yearWidget,
                )
              : yearWidget,
        ),
      ),
    );
  }
}

class _DateWidget extends StatelessWidget {
  const _DateWidget({required this.controller});

  final InfinitePageController controller;

  static const cellWidth = 48;

  @override
  Widget build(BuildContext context) {
    final selectedDateCubit = context.watch<_SelectedDateCubit>();
    final minDate = selectedDateCubit.minDate;
    final maxDate = selectedDateCubit.maxDate;

    return InfinitePageView(
      controller: controller,
      onPageChanged: (index) =>
          context.read<_FullMonthCubit>().setFullMonth(index),
      itemBuilder: (context, index) {
        return Column(
          children: [
            const DaysOfWeek(),
            MonthlyCalendar(
              fullMonth: index,
              selectedDate: selectedDateCubit.state,
              onSelect: selectedDateCubit.setDay,
              minDate: minDate,
              maxDate: maxDate,
            ),
          ],
        );
      },
    );
  }
}

class MonthlyCalendar extends StatelessWidget {
  const MonthlyCalendar({
    required this.fullMonth,
    this.selectedDate,
    this.minDate,
    this.maxDate,
    this.onSelect,
    super.key,
  });

  final int fullMonth;
  final DateTime? selectedDate;
  final DateTime? minDate;
  final DateTime? maxDate;
  final void Function(int day)? onSelect;

  @override
  Widget build(BuildContext context) {
    // Generate the calendar grid for the given month
    final days = _generateCalendar(fullMonth.year, fullMonth.month);

    final selectedDay =
        fullMonth == selectedDate?.fullMonth ? selectedDate!.day : null;
    final minDay = minDate != null
        ? minDate!.fullMonth == fullMonth
            ? minDate!.day
            : minDate!.fullMonth > fullMonth
                ? 32
                : null
        : null;
    final maxDay = maxDate != null
        ? maxDate!.fullMonth == fullMonth
            ? maxDate!.day
            : maxDate!.fullMonth < fullMonth
                ? -1
                : null
        : null;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7, // 7 days in a week
      ),
      itemCount: days.length,
      itemBuilder: (context, index) {
        final day = days[index];
        final selectable = day != null &&
            !((minDay != null && day < minDay) ||
                (maxDay != null && day > maxDay));

        return Center(
          child: SizedBox(
            width: 40,
            height: 40,
            child: day != null
                ? selectedDay == day
                    ? Container(
                        decoration: selectedDay == day
                            ? BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: BoxShape.circle,
                              )
                            : null,
                        child: Center(
                          child: Text(
                            day.toString(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : InkWell(
                        borderRadius: BorderRadius.circular(40),
                        onTap: onSelect == null
                            ? null
                            : selectable
                                ? () => onSelect!(day)
                                : null,
                        child: Center(
                          child: Text(
                            day.toString(),
                            style: selectable
                                ? null
                                : TextStyle(
                                    color: Theme.of(context).disabledColor,
                                  ),
                          ),
                        ),
                      )
                : const SizedBox.shrink(),
          ),
        );
      },
    );
  }

  List<int?> _generateCalendar(int year, int month) {
    final days = <int?>[];
    final firstDayOfMonth = DateTime(year, month);
    final daysInMonth = DateTime(year, month + 1, 0).day; // Last day of month

    // Calculate the starting weekday (1 = Monday, 7 = Sunday)
    final startWeekday = firstDayOfMonth.weekday;

    // Add blank cells for days of the previous month
    for (var i = 1; i < startWeekday; i++) {
      days.add(null);
    }

    // Add days of the current month
    for (var i = 1; i <= daysInMonth; i++) {
      days.add(i);
    }

    return days;
  }
}

class DaysOfWeek extends StatelessWidget {
  const DaysOfWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 512),
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
          ),
          itemCount: 7,
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                DateFormat(DateFormat.ABBR_WEEKDAY)
                    .format(DateTime(1, 1, 1 + index))[0]
                    .toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ),
    );
  }
}

class InfinitePageController extends PageController {
  InfinitePageController({
    required int initialIndex,
    this.minIndex,
    this.maxIndex,
    super.keepPage = true,
    super.viewportFraction = 1.0,
    super.onAttach,
    super.onDetach,
  }) : super(
          initialPage: _processInitialIndex(
            initialIndex,
            minIndex: minIndex,
            maxIndex: maxIndex,
          ),
        ) {
    if (maxIndex != null && initialIndex > maxIndex!) {
      throw AssertionError(
        'initialIndex ($initialIndex) must be lower or equal to '
        'maxIndex ($maxIndex)',
      );
    }
    if (minIndex != null && initialIndex < minIndex!) {
      throw AssertionError(
        'initialIndex ($initialIndex) must be higher or equal to '
        'minIndex ($minIndex)',
      );
    }
  }

  final int? minIndex;
  final int? maxIndex;

  static int _processInitialIndex(
    int index, {
    required int? minIndex,
    required int? maxIndex,
  }) {
    if (minIndex != null) {
      // ignore: parameter_assignments
      index -= minIndex;
    } else if (maxIndex == null) {
      // This is a hack for infinite scroll in the negative direction.

      // ignore: parameter_assignments
      index += 1000000;
    } else {
      // ignore: parameter_assignments
      index = maxIndex - index;
    }
    return index;
  }

  static double _processIndex(
    double index, {
    required int? minIndex,
    required int? maxIndex,
  }) {
    if (minIndex != null) {
      // ignore: parameter_assignments
      index += minIndex;
    } else if (maxIndex == null) {
      // This is a hack for infinite scroll in the negative direction.

      // ignore: parameter_assignments
      index -= 1000000;
    } else {
      // ignore: parameter_assignments
      index = maxIndex - index;
    }
    return index;
  }

  int processIndex(int index) =>
      _processIndex(index.toDouble(), minIndex: minIndex, maxIndex: maxIndex)
          .toInt();

  bool get _reverse => minIndex == null && maxIndex != null;
  int? get _itemCount =>
      maxIndex == null || minIndex == null ? null : maxIndex! - minIndex! + 1;

  @override
  void jumpToPage(int page) {
    super.jumpToPage(
      _processInitialIndex(page, minIndex: minIndex, maxIndex: maxIndex),
    );
  }

  @override
  Future<void> animateToPage(
    int page, {
    required Duration duration,
    required Curve curve,
  }) {
    return super.animateToPage(
      _processInitialIndex(page, minIndex: minIndex, maxIndex: maxIndex),
      duration: duration,
      curve: curve,
    );
  }

  @override
  double? get page {
    final page = super.page;
    if (page == null) return null;
    return _processIndex(page, minIndex: minIndex, maxIndex: maxIndex);
  }
}

class InfinitePageView extends StatelessWidget {
  const InfinitePageView({
    required this.controller,
    required this.itemBuilder,
    this.onPageChanged,
    this.pageSnapping = true,
    super.key,
  });

  final InfinitePageController controller;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final void Function(int index)? onPageChanged;
  final bool pageSnapping;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      pageSnapping: pageSnapping,
      reverse: controller._reverse,
      itemCount: controller._itemCount,
      itemBuilder: (context, index) =>
          itemBuilder(context, controller.processIndex(index)),
      onPageChanged: onPageChanged == null
          ? null
          : (index) => onPageChanged!(controller.processIndex(index)),
    );
  }
}

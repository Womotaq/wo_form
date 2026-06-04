import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

// Top spacing before the month label.
const _kMonthTopSpacing = 24.0;

class PickDatePage extends StatefulWidget {
  const PickDatePage({
    required this.minDate,
    this.maxDate,
    this.initialDate,
    this.uiSettings,
    super.key,
  });

  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? initialDate;
  final PickDateUiSettings? uiSettings;

  @override
  State<PickDatePage> createState() => _PickDatePageState();
}

class _PickDatePageState extends State<PickDatePage> {
  late final _CalendarController? scrollController;
  late final DateTime? _initialDate;
  late final int _initialFullMonth;

  @override
  void initState() {
    super.initState();

    var initialDate = widget.initialDate;
    if (initialDate != null &&
        widget.minDate != null &&
        initialDate.isBefore(widget.minDate!)) {
      initialDate = null;
    } else if (initialDate != null &&
        widget.maxDate != null &&
        initialDate.isAfter(widget.maxDate!)) {
      initialDate = null;
    }
    _initialDate = initialDate;
    _initialFullMonth = (_initialDate ?? DateTime.now()).fullMonth;

    if ((widget.uiSettings?.presentationMode ??
            PickDateUiSettings.defaultPresentationMode) ==
        PickDatePresentationMode.page) {
      scrollController = _CalendarController(
        initialFullMonth: _initialFullMonth,
      );
    }
  }

  @override
  Future<void> dispose() async {
    scrollController?.dispose();
    super.dispose();
  }

  void selectDate(BuildContext context, DateTime date) =>
      Navigator.of(context).pop(date);

  @override
  Widget build(BuildContext context) {
    switch (widget.uiSettings?.presentationMode ??
        PickDateUiSettings.defaultPresentationMode) {
      case PickDatePresentationMode.page:
        return Scaffold(
          appBar: AppBar(
            actions: [
              _YearPicker(
                controller: scrollController!,
                minYear: widget.minDate?.year,
                maxYear: widget.maxDate?.year,
              ),
            ],
          ),
          body:
              (widget.uiSettings?.bodyWrapper ??
              PickDateUiSettings.defaultBodyWrapper)(
                context,
                LayoutBuilder(
                  builder: (context, constraints) {
                    final sideOverflow = constraints.maxWidth - 512;
                    final sidePadding = sideOverflow > 0
                        ? sideOverflow / 2
                        : .0;

                    return InfiniteListView(
                      controller: scrollController,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16 + sidePadding,
                      ),
                      centerIndex: _initialFullMonth,
                      minIndex: widget.minDate?.fullMonth,
                      maxIndex: widget.maxDate?.fullMonth,
                      itemBuilder: (context, fullMonth) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: _kMonthTopSpacing),
                          SizedBox(
                            height: kMinInteractiveDimension,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  DateFormat.yMMMM()
                                      .format(DateTime(0, fullMonth))
                                      .capitalized(),
                                  style:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyLarge?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                          const DaysOfWeek(),
                          MonthlyCalendar(
                            fullMonth: fullMonth,
                            selectedDate: _initialDate,
                            minDate: widget.minDate,
                            maxDate: widget.maxDate,
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
              ),
        );
      case PickDatePresentationMode.dialog:
        return BlocProvider(
          create: (context) => _FullMonthCubit(
            _initialFullMonth,
            maxDate: widget.maxDate?.fullMonth,
            minDate: widget.minDate?.fullMonth,
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
                                    child: OutlinedButton(
                                      onPressed: () async {
                                        final fullMonthCubit = context
                                            .read<_FullMonthCubit>();
                                        final currentYear =
                                            (fullMonth - 1) ~/ 12;
                                        final currentMonth = fullMonth % 12;

                                        final year = await _pickYear(
                                          context: context,
                                          initialYear: currentYear,
                                          minYear: widget.minDate?.year,
                                          maxYear: widget.maxDate?.year,
                                          displayMode:
                                              PickDatePresentationMode.dialog,
                                        );

                                        if (year != null) {
                                          await fullMonthCubit.set(
                                            year * 12 + currentMonth,
                                          );
                                        }
                                      },
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
                      selectedDate: _initialDate,
                      minDate: widget.minDate,
                      maxDate: widget.maxDate,
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
}

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
  int get weeksCount {
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
    this.controller,
    this.scrollDirection = Axis.vertical,
    this.centerIndex = 0,
    this.minIndex,
    this.maxIndex,
    this.padding,
    super.key,
  });

  final Widget? Function(BuildContext context, int index) itemBuilder;
  final ScrollController? controller;
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
      controller: controller,
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

class _CalendarController extends ScrollController {
  _CalendarController({required this.initialFullMonth});

  final int initialFullMonth;

  // Height of one month item: fixed top spacing + label row + days-of-week
  // row + N calendar rows, all at kMinInteractiveDimension per row.
  static double _monthHeight(int fullMonth) =>
      _kMonthTopSpacing + kMinInteractiveDimension * (2 + fullMonth.weeksCount);

  // Scroll offset at which the top of [fullMonth] aligns with the viewport top.
  // Positive = forward (future), negative = backward (past) from
  // initialFullMonth.
  double _offsetForFullMonth(int fullMonth) {
    var offset = 0.0;
    if (fullMonth > initialFullMonth) {
      for (var fm = initialFullMonth; fm < fullMonth; fm++) {
        offset += _monthHeight(fm);
      }
    } else {
      for (var fm = fullMonth; fm < initialFullMonth; fm++) {
        offset -= _monthHeight(fm);
      }
    }
    return offset;
  }

  // The month whose top is currently at (or just above) the viewport top.
  int get visibleFullMonth {
    if (!hasClients) return initialFullMonth;
    var fm = initialFullMonth;
    var remaining = offset;
    if (remaining >= 0) {
      while (remaining >= _monthHeight(fm)) {
        remaining -= _monthHeight(fm);
        fm++;
      }
    } else {
      while (remaining < 0) {
        fm--;
        remaining += _monthHeight(fm);
      }
    }
    return fm;
  }

  void scrollToFullMonth(int fullMonth) =>
      jumpTo(_offsetForFullMonth(fullMonth));
}

class _YearPicker extends StatefulWidget {
  const _YearPicker({
    required this.controller,
    required this.minYear,
    required this.maxYear,
  });

  final _CalendarController controller;
  final int? minYear;
  final int? maxYear;

  @override
  State<_YearPicker> createState() => _YearPickerState();
}

class _YearPickerState extends State<_YearPicker> {
  late int _visibleYear;

  @override
  void initState() {
    super.initState();
    _visibleYear = DateTime(0, widget.controller.visibleFullMonth).year;
    widget.controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    final newYear = DateTime(0, widget.controller.visibleFullMonth).year;
    if (newYear != _visibleYear) setState(() => _visibleYear = newYear);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: _selectYear,
      icon: const Icon(Icons.arrow_drop_down),
      iconAlignment: IconAlignment.end,
      label: Text(
        DateFormat.y().format(DateTime(_visibleYear)).capitalized(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      style: TextButton.styleFrom(
        foregroundColor: AppBarTheme.of(context).foregroundColor,
      ),
    );
  }

  Future<void> _selectYear() async {
    final visibleMonth = DateTime(0, widget.controller.visibleFullMonth).month;
    final year = await _pickYear(
      context: context,
      initialYear: _visibleYear,
      minYear: widget.minYear,
      maxYear: widget.maxYear,
      displayMode: PickDatePresentationMode.page,
    );

    if (year != null) {
      widget.controller.scrollToFullMonth(year * 12 + visibleMonth);
    }
  }
}

Future<int?> _pickYear({
  required BuildContext context,
  required int initialYear,
  required int? minYear,
  required int? maxYear,
  required PickDatePresentationMode displayMode,
}) async {
  const padding = 16.0;

  return (displayMode == PickDatePresentationMode.dialog
      ? Push.dialog
      : Push.modalBottomSheet)<int>(
    context: context,
    layout: LayoutMethod.shrinkWrap,
    child: SizedBox(
      height: WoFormTheme.MAX_WIDTH / 2,
      width: WoFormTheme.of(context)?.maxWidth ?? WoFormTheme.MAX_WIDTH,
      child: LayoutBuilder(
        builder: (context, constraints) {
          const minButtonWidth = 112;
          final maxWidth = constraints.maxWidth;

          final buttonsPerRow = max(maxWidth ~/ minButtonWidth, 1);

          return InfiniteListView(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            centerIndex: initialYear ~/ buttonsPerRow - 1,
            minIndex: minYear == null ? null : minYear ~/ buttonsPerRow - 1,
            maxIndex: maxYear == null ? null : maxYear ~/ buttonsPerRow + 1,
            itemBuilder: (context, yearBase) => Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                spacing: padding,
                children: List.generate(
                  buttonsPerRow,
                  (index) {
                    final year = yearBase * buttonsPerRow + index;
                    final active =
                        (minYear == null || year >= minYear) &&
                        (maxYear == null || year <= maxYear);

                    return Expanded(
                      child:
                          (year == initialYear
                          ? FilledButton.tonal
                          : OutlinedButton.new)(
                            onPressed: active
                                ? () => Navigator.of(context).pop(year)
                                : null,
                            child: Text(year.toString()),
                          ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

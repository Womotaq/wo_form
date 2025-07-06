import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/wo_form.dart';

class PickDatePage extends StatelessWidget {
  const PickDatePage({
    required this.woFormStatusCubit,
    required this.minDate,
    this.maxDate,
    this.initialDate,
    this.dateFormat,
    super.key,
  });

  final WoFormStatusCubit? woFormStatusCubit;
  final DateTime minDate;
  final DateTime? maxDate;
  final DateTime? initialDate;
  final String? dateFormat;

  @override
  Widget build(BuildContext context) {
    var initialDate = this.initialDate;
    if (initialDate != null && initialDate.isBefore(minDate)) {
      initialDate = null;
    } else if (initialDate != null &&
        maxDate != null &&
        initialDate.isAfter(maxDate!)) {
      initialDate = null;
    }

    return BlocProvider(
      create: (context) => _SelectedDateCubit(
        initialDate,
        maxDate: maxDate,
        minDate: minDate,
      ),
      child: Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size(double.maxFinite, 40),
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

            final maxWidth = min(constraints.maxWidth, 512);

            final cellWidth = (maxWidth - 32) / 7;
            var initialScrollOffset = 0.0;
            if (initialDate != null) {
              for (var i = 0;
                  i < initialDate.fullMonth - minDate.fullMonth;
                  i++) {
                final fullMonth = i + minDate.fullMonth;
                initialScrollOffset +=
                    32 + cellWidth * weeksInMonth(fullMonth) + 16;
              }
            }
            return ListView.builder(
              controller: initialDate == null
                  ? null
                  : ScrollController(initialScrollOffset: initialScrollOffset),
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16 + sidePadding,
              ),
              itemCount: maxDate == null
                  ? null
                  : maxDate!.fullMonth - minDate.fullMonth + 1,
              itemBuilder: (context, index) {
                final fullMonth = index + minDate.fullMonth;

                return BlocBuilder<_SelectedDateCubit, DateTime?>(
                  builder: (context, date) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 32,
                          child: Text(
                            DateFormat.yMMMM()
                                .format(DateTime(0, fullMonth))
                                .capitalized(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        MonthlyCalendar(
                          fullMonth: fullMonth,
                          selectedDate: date,
                          minDate: minDate,
                          maxDate: maxDate,
                          onSelect: (day) => context
                              .read<_SelectedDateCubit>()
                              .setDay(day, fullMonth),
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
        bottomNavigationBar: RepositoryProvider.value(
          value: woFormStatusCubit,
          child: BlocBuilder<_SelectedDateCubit, DateTime?>(
            builder: (context, date) {
              if (date == null) return const SizedBox.shrink();

              return SubmitButton(
                SubmitButtonData(
                  text: DateFormat(dateFormat ?? 'yMMMMd').format(date),
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
          ),
        ),
      ),
    );
  }

  /// Return the amount of weeks in a month
  int weeksInMonth(int fullMonth) {
    // Get the first and last days of the month.
    final firstDayOfMonth = DateTime(0, fullMonth);
    final lastDayOfMonth =
        DateTime(0, fullMonth + 1, 0); // 0 gives the last day of the month.

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

class _SelectedDateCubit extends Cubit<DateTime?> {
  _SelectedDateCubit(
    super.initialState, {
    required this.minDate,
    required this.maxDate,
  });

  final DateTime? minDate;
  final DateTime? maxDate;

  DateTime _clamp(DateTime date) {
    if (minDate != null && date.isBefore(minDate!)) return minDate!;
    if (maxDate != null && date.isAfter(maxDate!)) return maxDate!;
    return date;
  }

  void setDay(int day, int fullMonth) {
    final newDate = DateTime(0, fullMonth, day);
    if (_clamp(newDate) == newDate) emit(newDate);
  }
}

extension on DateTime {
  int get fullMonth => year * 12 + month;
}

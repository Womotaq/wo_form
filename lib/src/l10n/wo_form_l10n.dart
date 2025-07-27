import 'package:wo_form/wo_form.dart';

typedef TranslateInputError = String? Function(WoFormInputError? error);

class WoFormL10n {
  const WoFormL10n({
    required this.submit,
    required this.next,
    required this.translateError,
    required this.errors,
    this.days,
    this.hours,
    this.minutes,
    this.addDate,
    this.addTime,
  });

  final String Function() submit;
  final String Function() next;
  final TranslateInputError translateError;
  final String? Function(int count) errors;
  final String Function(int count)? days;
  final String Function(int count)? hours;
  final String Function(int count)? minutes;
  final String Function()? addDate;
  final String Function()? addTime;
}

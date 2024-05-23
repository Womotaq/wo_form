// ignore_for_file: public_member_api_docs

import 'package:wo_form/wo_form.dart';

class IntInput extends WoFormInput<int> {
  const IntInput({
    required super.id,
    super.value = 0,
    this.minBound,
    this.maxBound,
  });

  final int? minBound;
  final int? maxBound;

  IntInput copyWith({
    int? value,
    int? minBound,
    int? maxBound,
  }) {
    return IntInput(
      id: id,
      value: value ?? this.value,
      minBound: minBound ?? this.minBound,
      maxBound: maxBound ?? this.maxBound,
    );
  }

  @override
  WoFormInputError? getError() => validator(value);

  @override
  WoFormInputError? validator(int value) {
    if ((minBound != null) && (value < minBound!)) {
      return WoFormInputError.minBound(inputId: id);
    } else if ((maxBound != null) && (value > maxBound!)) {
      return WoFormInputError.maxBound(inputId: id);
    }
    return null;
  }
}

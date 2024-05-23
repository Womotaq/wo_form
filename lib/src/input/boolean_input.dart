// ignore_for_file: public_member_api_docs

import 'package:wo_form/wo_form.dart';

class BooleanInput extends WoFormInput<bool> {
  const BooleanInput({
    required super.id,
    super.value = false,
    this.trueIsRequired = false,
    this.fieldTheme,
  });

  final bool trueIsRequired;
  final BooleanFieldTheme? fieldTheme;

  BooleanInput copyWith({bool? value}) => BooleanInput(
        id: id,
        value: value ?? this.value,
        trueIsRequired: trueIsRequired,
        fieldTheme: fieldTheme,
      );

  @override
  WoFormInputError? getError() => validator(value);

  @override
  WoFormInputError? validator(bool value) {
    return trueIsRequired && value == false
        ? WoFormInputError.empty(inputId: id)
        : null;
  }
}

import 'package:wo_form/wo_form.dart';

class SelectInput<T> extends WoFormInput<T?> {
  const SelectInput({
    required super.id,
    super.value,
    this.isRequired = false,
    this.fieldTheme,
  });

  final bool isRequired;
  final SelectFieldTheme<T>? fieldTheme;

  SelectInput<T> copyWith({T? value}) => SelectInput(
        id: id,
        value: value ?? this.value,
        isRequired: isRequired,
        fieldTheme: fieldTheme,
      );

  @override
  WoFormInputError? getError() => validator(value);

  @override
  WoFormInputError? validator(T? value) {
    if (value == null) {
      return isRequired ? WoFormInputError.empty(inputId: id) : null;
    }

    return null;
  }
}

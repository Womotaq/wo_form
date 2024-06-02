import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class SmartField<T extends WoFormCubit> extends StatelessWidget {
  const SmartField({
    required this.input,
    super.key,
  });

  final WoFormInputMixin Function(WoForm form) input;

  @override
  Widget build(BuildContext context) {
    final i = input(context.read<T>().state);
    if (i is WoFormInput) {
      switch (i) {
        case BooleanInput():
          return BooleanField<T>(input: (form) => input(form) as BooleanInput);
        case InputsListInput():
          return InputsListField<T>(
            input: (form) => input(form) as InputsListInput,
          );
        case NumInput():
          throw UnimplementedError('No field implemented for NumInput');
        case StringInput():
          return StringField<T>(input: (form) => input(form) as StringInput);
        case SelectStringInput():
          return SelectStringField<T>(
            input: (form) => input(form) as SelectStringInput,
          );
      }
    } else if (i is ListInput) {
      throw UnimplementedError('No field implemented for ListInput');
    } else if (i is SelectInput) {
      return SelectField<T, dynamic>(
        input: (form) => input(form) as SelectInput<dynamic>,
      );
    } else {
      throw UnimplementedError('Unsupported input type : ${i.runtimeType}');
    }
  }
}

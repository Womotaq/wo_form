import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormElementBuilder extends StatelessWidget {
  const WoFormElementBuilder({required this.inputPath, super.key});

  final String inputPath;

  @override
  Widget build(BuildContext context) {
    final input = context.read<WoForm>().getInput(
          path: inputPath,
          values: context.read<WoFormValuesCubit>().state,
        );

    if (input == null) {
      throw ArgumentError(
        'Expected <WoFormElementMixin> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    return input.toWidget(
      parentPath: inputPath.parentPath,
    );
  }
}

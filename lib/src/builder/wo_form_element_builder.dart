import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormElementBuilder extends StatelessWidget {
  const WoFormElementBuilder({required this.path, super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    final input = context.read<RootNode>().getChild(
          path: path,
          values: context.read<WoFormValuesCubit>().state,
        );

    if (input == null) {
      throw ArgumentError(
        'Expected <WoFormNodeMixin> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    return input.toWidget(
      parentPath: path.parentPath,
    );
  }
}

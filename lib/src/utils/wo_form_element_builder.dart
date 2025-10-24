import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class WoFormElementBuilder extends StatelessWidget {
  const WoFormElementBuilder({required this.path, super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    final node = context.read<WoFormValuesCubit>().getNode(path: path);

    if (node == null) {
      throw ArgumentError(
        'Expected <WoFormNode> at path: "$path", found: null',
      );
    }

    return node.toWidget(
      parentPath: path.parentPath,
    );
  }
}

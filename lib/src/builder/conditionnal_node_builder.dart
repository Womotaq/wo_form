import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class ConditionnalNodeBuilder extends StatelessWidget {
  const ConditionnalNodeBuilder({
    required this.path,
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    final form = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final node = form.getChild(path: path, values: valuesCubit.state);
    if (node is! ConditionnalNode) {
      throw ArgumentError(
        'Expected <ConditionnalNode> at path: "$path", '
        'found: <${node.runtimeType}>',
      );
    }

    return AnimatedSize(
      duration: Durations.medium1,
      alignment: Alignment.topCenter,
      child: BlocSelector<WoFormValuesCubit, WoFormValues, bool>(
        selector: (values) => values.meet(node.conditions),
        builder: (context, conditionsAreMet) {
          if (!conditionsAreMet) return const SizedBox();

          return node.child.toWidget(parentPath: path);
        },
      ),
    );
  }
}

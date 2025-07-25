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
        selector: (values) => values.meet(node.condition),
        builder: (context, conditionsAreMet) {
          // TODO : improve
          if (!conditionsAreMet) {
            if (node.clearChildrenWhenHidden) {
              final valuesCubit = context.read<WoFormValuesCubit>();
              valuesCubit.onValuesChanged({
                for (final children in valuesCubit.state.keys
                    .where((childPath) => childPath.startsWith(path)))
                  children: null,
              });
            }
            return const SizedBox.shrink();
          }

          return node.child.toWidget(parentPath: path);
        },
      ),
    );
  }
}

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
    final valuesCubit = context.read<WoFormValuesCubit>();
    final node = valuesCubit.getNode(path: path);
    if (node is! ConditionnalNode) {
      throw ArgumentError(
        'Expected <ConditionnalNode> at path: "$path", '
        'found: <${node.runtimeType}>',
      );
    }

    return AnimatedSize(
      duration: WoFormTheme.ANIMATION_DURATION,
      alignment: Alignment.topCenter,
      child: BlocSelector<WoFormValuesCubit, WoFormValues, bool>(
        selector: (values) => values.meet(node.condition),
        builder: (context, conditionsAreMet) {
          // TODO : improve
          if (!conditionsAreMet) {
            if (node.resetChildrenWhenHidden) {
              valuesCubit.onValuesChanged(
                node.child.getInitialValues(parentPath: path),
                updateStatus: UpdateStatus.ifPathAlreadyVisited,
              );
            }
            return const SizedBox.shrink();
          }

          return node.child.toWidget(parentPath: path);
        },
      ),
    );
  }
}

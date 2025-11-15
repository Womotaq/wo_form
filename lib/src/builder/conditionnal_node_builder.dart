import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class ConditionnalNodeBuilder extends StatelessWidget {
  const ConditionnalNodeBuilder({required this.path, super.key});

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
        builder: (context, conditionIsMet) => conditionIsMet
            ? node.child.toWidget(parentPath: path)
            : _HiddenChildren(node: node, path: path),
      ),
    );
  }
}

class _HiddenChildren extends StatefulWidget {
  const _HiddenChildren({required this.node, required this.path});

  final ConditionnalNode node;
  final String path;

  @override
  State<_HiddenChildren> createState() => __HiddenChildrenState();
}

class __HiddenChildrenState extends State<_HiddenChildren> {
  @override
  void initState() {
    super.initState();

    if (widget.node.resetChildrenWhenHidden) {
      context.read<WoFormValuesCubit>().onValuesChanged(
        widget.node.child.getInitialValues(parentPath: widget.path),
        updateStatus: UpdateStatus.ifPathAlreadyVisited,
      );
    }
  }

  @override
  /// _HiddenChildren is used only when the condition isn't met, which means
  /// the node should render nothing.
  Widget build(BuildContext context) => const SizedBox.shrink();
}

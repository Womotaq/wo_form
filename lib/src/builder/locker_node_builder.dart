import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class LockerNodeBuilder extends StatelessWidget {
  const LockerNodeBuilder({required this.path, super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();
    final node = valuesCubit.getNode(path: path);
    if (node is! LockerNode) {
      throw ArgumentError(
        'Expected <LockerNode> at path: "$path", '
        'found: <${node.runtimeType}>',
      );
    }

    return _DescendanceLocker(path: path, node: node);
  }
}

class _DescendanceLocker extends StatefulWidget {
  const _DescendanceLocker({
    required this.path,
    required this.node,
  });

  final String path;
  final LockerNode node;

  @override
  State<_DescendanceLocker> createState() => _DescendanceLockerState();
}

class _DescendanceLockerState extends State<_DescendanceLocker> {
  @override
  void initState() {
    super.initState();
    updateLocks();
  }

  @override
  void didUpdateWidget(covariant _DescendanceLocker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.node.isLocked != oldWidget.node.isLocked) {
      updateLocks();
    }
  }

  void updateLocks() {
    final valuesCubit = context.read<WoFormValuesCubit>();
    final lockCubit = context.read<WoFormLockCubit>();

    final descendancePaths = widget.node.child.getAllInputPaths(
      values: valuesCubit.state,
      parentPath: widget.path,
    );

    if (widget.node.isLocked) {
      lockCubit.lockInputs(paths: descendancePaths);
    } else {
      lockCubit.unlockInputs(paths: descendancePaths);
    }
  }

  @override
  Widget build(BuildContext context) =>
      widget.node.child.toWidget(parentPath: widget.path);
}

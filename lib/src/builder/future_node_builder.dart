import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class FutureNodeBuilder<T> extends StatefulWidget {
  const FutureNodeBuilder({
    required this.path,
    super.key,
  });

  final String path;

  @override
  State<FutureNodeBuilder<T>> createState() => _FutureNodeBuilderState<T>();
}

class _FutureNodeBuilderState<T> extends State<FutureNodeBuilder<T>> {
  late final FutureNode<T> node;

  @override
  void initState() {
    super.initState();

    final root = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final nodeAtPath = root.getChild(
      path: widget.path,
      parentPath: '',
      values: valuesCubit.state,
    );
    if (nodeAtPath is! FutureNode<T>) {
      throw ArgumentError(
        'Expected <FutureNode<$T>> at path: "${widget.path}", '
        'found: <${nodeAtPath.runtimeType}>',
      );
    }
    node = nodeAtPath;

    final snapshot = valuesCubit.state[widget.path] as AsyncSnapshot?;
    if (snapshot != null) {
      final initialSnapshot = AsyncSnapshot.withData(
        ConnectionState.waiting,
        node.initialData,
      );

      if (snapshot != initialSnapshot) {
        /// If the future has already been called, we don't need to do it again
        return;
      }
    }

    unawaited(
      getData(
        (snapshot) => valuesCubit.onValueChanged(
          path: widget.path,
          value: snapshot,
          updateStatus: UpdateStatus.ifPathAlreadyVisited,
        ),
      ),
    );
  }

  Future<void> getData(
    void Function(AsyncSnapshot<T?> snapshot) onSnapshotChanged,
  ) async {
    try {
      onSnapshotChanged(AsyncSnapshot.waiting());
      final data = await node.future;

      if (!mounted) return;

      final snapshot = AsyncSnapshot.withData(ConnectionState.done, data);
      onSnapshotChanged(snapshot);

      if (node.willResetToInitialValues) {
        final valuesCubit = context.read<WoFormValuesCubit>();

        final newInitialValues = node.getInitialValues(
          parentPath: widget.path.parentPath,
        );

        // Overrides the initial snapshot as the one with provided data.
        // It may keep the form pure if none of the paths were visited.
        newInitialValues[widget.path] = snapshot;

        valuesCubit.onValuesChanged(
          newInitialValues,
          updateStatus: UpdateStatus.ifPathAlreadyVisited,
        );
      }
    } catch (error) {
      onSnapshotChanged(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  @override
  Widget build(BuildContext context) {
    return WoFormValueBuilder<AsyncSnapshot<T?>>(
      path: widget.path,
      builder: (context, snapshot) {
        final input = node.builder!(snapshot ?? const AsyncSnapshot.nothing());

        return input.toWidget(
          key: Key(snapshot?.connectionState.name ?? 'none'),
          parentPath: widget.path,
        );
      },
    );
  }
}

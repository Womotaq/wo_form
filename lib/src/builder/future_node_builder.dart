import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class FutureNodeBuilder<T> extends StatefulWidget {
  const FutureNodeBuilder({
    required this.parentPath,
    required this.node,
    super.key,
  });

  final String parentPath;
  final FutureNode<T> node;

  @override
  State<FutureNodeBuilder<T>> createState() => _FutureNodeBuilderState<T>();
}

class _FutureNodeBuilderState<T> extends State<FutureNodeBuilder<T>> {
  @override
  void initState() {
    super.initState();

    final valuesCubit = context.read<WoFormValuesCubit>();
    final childPath = '${widget.parentPath}/${widget.node.id}';

    final snapshot = valuesCubit.state.getValue(childPath) as AsyncSnapshot?;
    if (snapshot != null) {
      final initialSnapshot = AsyncSnapshot.withData(
        ConnectionState.waiting,
        widget.node.initialData,
      );

      if (snapshot != initialSnapshot) {
        /// If the future has already been called, we don't need to do it again
        return;
      }
    }

    getData(
      (snapshot) => valuesCubit.onValueChanged(
        path: childPath,
        value: snapshot,
        updateStatus: UpdateStatus.ifPathAlreadyVisited,
      ),
    );
  }

  Future<void> getData(
    void Function(AsyncSnapshot<T?> snapshot) onSnapshotChanged,
  ) async {
    try {
      onSnapshotChanged(AsyncSnapshot.waiting());
      final data = await widget.node.future;

      if (!mounted) return;

      final snapshot = AsyncSnapshot.withData(ConnectionState.done, data);
      onSnapshotChanged(snapshot);

      if (widget.node.willResetToInitialValues) {
        final valuesCubit = context.read<WoFormValuesCubit>();

        final newInitialValues = widget.node.getInitialValues(
          parentPath: widget.parentPath,
          initialSnapshot: snapshot,
        );
        for (final entry in newInitialValues.entries) {
          valuesCubit.onValueChanged(
            path: entry.key,
            value: entry.value,
            updateStatus: UpdateStatus.ifPathAlreadyVisited,
          );
        }
      }
    } catch (error) {
      onSnapshotChanged(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  @override
  Widget build(BuildContext context) {
    final childPath = '${widget.parentPath}/${widget.node.id}';

    return WoFormValueBuilder<AsyncSnapshot<T?>>(
      path: childPath,
      builder: (context, snapshot) {
        final input = widget.node.builder(
          childPath,
          snapshot ?? const AsyncSnapshot.nothing(),
        );

        return input.toWidget(
          key: Key(snapshot?.connectionState.name ?? 'none'),
          parentPath: childPath,
        );
      },
    );
  }
}

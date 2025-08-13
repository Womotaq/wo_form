import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class FutureNodeBuilder<T> extends StatefulWidget {
  const FutureNodeBuilder({
    required this.parentPath,
    required this.child,
    super.key,
  });

  final String parentPath;
  final FutureNode<T> child;

  @override
  State<FutureNodeBuilder<T>> createState() => _FutureNodeBuilderState<T>();
}

class _FutureNodeBuilderState<T> extends State<FutureNodeBuilder<T>> {
  @override
  void initState() {
    super.initState();

    final childPath = '${widget.parentPath}/${widget.child.id}';
    getData(
      (snapshot) => context.read<WoFormValuesCubit>().onValueChanged(
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
      final data = await widget.child.future;

      if (!mounted) return;

      final snapshot = AsyncSnapshot.withData(ConnectionState.done, data);
      onSnapshotChanged(snapshot);

      if (widget.child.willResetToInitialValues) {
        final valuesCubit = context.read<WoFormValuesCubit>();

        final newInitialValues = widget.child.getInitialValues(
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
    final childPath = '${widget.parentPath}/${widget.child.id}';

    return WoFormValueBuilder<AsyncSnapshot<T?>>(
      path: childPath,
      builder: (context, snapshot) {
        final input = widget.child.builder(
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

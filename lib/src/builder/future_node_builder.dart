import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class FutureNodeBuilder<T> extends StatelessWidget {
  const FutureNodeBuilder({
    required this.parentPath,
    required this.child,
    super.key,
  });

  final String parentPath;
  final FutureNode<T> child;

  Future<void> getData(
    void Function(AsyncSnapshot<T?> snapshot) onSnapshotChanged,
  ) async {
    try {
      final data = await child.future;
      onSnapshotChanged(AsyncSnapshot.withData(ConnectionState.done, data));
    } on Exception catch (error) {
      onSnapshotChanged(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();

    final childPath = '$parentPath/${child.id}';

    getData(
      (snapshot) => valuesCubit.onValueChanged(
        path: childPath,
        value: snapshot,
        updateStatus: UpdateStatus.ifPathAlreadyVisited,
      ),
    );

    return WoFormValueBuilder<AsyncSnapshot<T?>>(
      path: childPath,
      builder: (context, snapshot) {
        final input = child.builder(
          childPath,
          snapshot ?? const AsyncSnapshot.nothing(),
        );

        if (child.willResetToInitialValues) {
          if (snapshot?.connectionState == ConnectionState.done) {
            final newInitialValues = child.getInitialValues(
              parentPath: parentPath,
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
        }

        return input.toWidget(
          key: ValueKey(snapshot?.connectionState),
          parentPath: childPath,
        );
      },
    );
  }
}

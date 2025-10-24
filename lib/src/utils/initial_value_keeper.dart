import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

/// This widget resets the value of a node to its [initialValue] if this value
/// changed while the node hasn't been visited yet.
///
/// This allows the field [initialValue] to be dynamically set by a
/// [ValueBuilderNode] or any other builder node.
///
/// IMPORTANT : thanks to this widget, editing [initialValue] also works on hot
/// reload. The drawback is that when using [ShowErrors.afterSubmission],
/// hot reloading will always reset to the initial value. You may also see your
/// fields reset unexpectedly, even after interacting with them. This happens
/// because [ShowErrors.afterSubmission] only marks your inputs as visited once
/// you submitted the form, so [InitialValueKeeper] thinks the fields is free to
/// overwrite.
class InitialValueKeeper<T> extends StatefulWidget {
  const InitialValueKeeper({
    required this.initialValue,
    required this.path,
    required this.child,
    super.key,
  });

  final T initialValue;
  final String path;
  final Widget child;

  @override
  State<InitialValueKeeper<T>> createState() => _InitialValueKeeperState();
}

class _InitialValueKeeperState<T> extends State<InitialValueKeeper<T>> {
  @override
  void initState() {
    super.initState();

    tryEnforceInitialValue();
  }

  @override
  void didUpdateWidget(covariant InitialValueKeeper<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.path == oldWidget.path &&
        widget.initialValue != oldWidget.initialValue) {
      tryEnforceInitialValue();
    }
  }

  /// If the node has not been visited yet, and the initialValue changed
  /// (because of a ValueBuilderNode for example), then we reset the value
  /// in WoFormValuesCubit.
  void tryEnforceInitialValue() {
    final valuesCubit = context.read<WoFormValuesCubit>();

    if (valuesCubit.state.get<T>(widget.path) != widget.initialValue &&
        !valuesCubit.state.isVisited(path: widget.path)) {
      valuesCubit.onValueChanged(
        path: widget.path,
        value: widget.initialValue,
        updateStatus: UpdateStatus.no,
      );
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

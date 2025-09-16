import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormValueListener<T> extends StatelessWidget {
  const WoFormValueListener({
    required this.path,
    required this.listener,
    required this.child,
    this.listenWhen,
    super.key,
  });

  final String path;
  final void Function(BuildContext context, T? value) listener;
  final bool Function(T? previous, T? current)? listenWhen;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<WoFormValuesCubit, WoFormValues>(
      listenWhen: (previous, current) {
        return listenWhen?.call(
              previous.getValue(path) as T?,
              current.getValue(path) as T?,
            ) ??
            previous.getValue(path) != current.getValue(path);
      },
      listener: (context, values) =>
          listener(context, values.getValue(path) as T?),
      child: child,
    );
  }
}

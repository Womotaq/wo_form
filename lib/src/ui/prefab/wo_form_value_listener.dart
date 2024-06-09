import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormValueListener<T> extends StatelessWidget {
  const WoFormValueListener({
    required this.inputPath,
    required this.listener,
    required this.child,
    this.listenWhen,
    super.key,
  });

  final String inputPath;
  final void Function(BuildContext context, T? value) listener;
  final bool Function(T? previous, T? current)? listenWhen;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<WoFormValuesCubit, Map<String, dynamic>>(
      listenWhen: (previous, current) {
        return listenWhen?.call(
              previous[inputPath] as T?,
              current[inputPath] as T?,
            ) ??
            previous[inputPath] != current[inputPath];
      },
      listener: (context, values) => listener(context, values[inputPath] as T?),
      child: child,
    );
  }
}

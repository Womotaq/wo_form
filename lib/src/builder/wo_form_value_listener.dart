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
    return BlocListener<WoFormValuesCubit, Map<String, dynamic>>(
      listenWhen: (previous, current) {
        return listenWhen?.call(
              previous[path] as T?,
              current[path] as T?,
            ) ??
            previous[path] != current[path];
      },
      listener: (context, values) => listener(context, values[path] as T?),
      child: child,
    );
  }
}

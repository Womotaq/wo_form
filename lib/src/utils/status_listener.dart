import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormStatusListener<T extends WoFormCubit> extends StatelessWidget {
  const WoFormStatusListener({
    required this.listener,
    required this.child,
    super.key,
  });

  final void Function(BuildContext context, WoFormStatus status) listener;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<T, WoForm>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, form) => listener(context, form.status),
      child: child,
    );
  }
}

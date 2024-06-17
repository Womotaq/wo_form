import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormBuilder extends StatelessWidget {
  const WoFormBuilder({
    required this.builder,
    super.key,
  });

  final Widget Function(
    BuildContext context,
    WoForm form,
    WoFormStatus status,
    Map<String, dynamic> values,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (_, status) {
        return BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
          builder: (context, values) {
            return builder(context, form, status, values);
          },
        );
      },
    );
  }
}

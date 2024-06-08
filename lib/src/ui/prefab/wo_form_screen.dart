import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class WoFormScreen extends StatelessWidget {
  const WoFormScreen({
    required this.form,
    required this.onSubmitting,
    this.onSubmitted,
    super.key,
  });

  final WoForm form;
  final VoidCallback onSubmitting;
  final void Function(BuildContext context)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return WoFormInitializer(
      form: form,
      onSubmitting: onSubmitting,
      child: Builder(
        builder: (context) {
          return BlocListener<WoFormStatusCubit, WoFormStatus>(
            listener: (context, status) {
              if (status is SubmittedStatus && onSubmitted != null) {
                context.read<WoFormStatusCubit>().setIdle();
                onSubmitted!(context);
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...form.inputs.map((e) => e.toWidget(parentPath: '')),
                WoGap.xxxlarge,
                FilledFeedCardButton(
                  onPressed: context.read<WoFormValuesCubit>().submit,
                  child: const Text('Envoyer'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

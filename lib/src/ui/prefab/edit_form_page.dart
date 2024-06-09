import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

// TODO : remove but before use its back button
class EditFormPage extends StatelessWidget {
  const EditFormPage({
    required this.form,
    required this.onSubmitting,
    required this.builder,
    super.key,
  });

  final WoForm form;
  final FutureOr<void> Function(Map<String, dynamic> values) onSubmitting;
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return WoFormInitializer(
      form: form,
      onSubmitting: onSubmitting,
      child: BlocListener<WoFormStatusCubit, WoFormStatus>(
        listener: (context, status) {
          if (status is SubmitErrorStatus) {
            snackBarError(context, context.formL10n.errorOccurred);
            // This prevents the snack bar from appearing twice
            context.read<WoFormStatusCubit>().setIdle();
          }
        },
        child: Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    if (context.read<WoFormValuesCubit>().isPure) {
                      return Navigator.of(context).pop();
                    }
      
                    showActionDialog(
                      pageContext: context,
                      title: context.formL10n.discardChangesQuestion,
                      actionText: context.formL10n.discardChanges,
                      onAction: Navigator.of(context).pop,
                      cancelText: context.formL10n.keepEditing,
                    );
                  },
                ),
                actions: [
                  BlocBuilder<WoFormStatusCubit, WoFormStatus>(
                    builder: (context, status) => switch (status) {
                      IdleStatus() ||
                      InvalidValuesStatus() ||
                      SubmittingStatus() ||
                      SubmitErrorStatus() =>
                        FilledButton(
                          onPressed: context.read<WoFormValuesCubit>().submit,
                          child: Text(context.formL10n.save),
                        ),
                      SubmittedStatus() => TextButton(
                          onPressed: null,
                          child: Text(context.formL10n.saved),
                        ),
                    },
                  ),
                  WoGap.small,
                ],
              ),
              body: BlocSelector<WoFormStatusCubit, WoFormStatus, bool>(
                selector: (status) => status is SubmittingStatus,
                builder: (context, submitting) {
                  return TopProgressIndicator(
                    loading: submitting,
                    child: builder(context),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

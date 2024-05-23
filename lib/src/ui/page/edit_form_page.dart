import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class EditFormPage<T extends WoFormCubit> extends StatelessWidget {
  const EditFormPage({
    required this.createFormCubit,
    required this.builder,
    super.key,
  });

  final T Function(BuildContext context) createFormCubit;
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: createFormCubit,
      child: BlocListener<T, WoForm>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, form) {
          if (form.status == WoFormStatus.submitError) {
            snackBarError(context, context.formL10n.errorOccurred);
            // This prevents the snack bar from appearing twice
            context.read<T>().setIdle();
          }
        },
        child: Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    if (context.read<T>().isPure) {
                      return Navigator.of(context).pop();
                    }

                    showActionDialog(
                      pageContext: context,
                      title: context.formL10n.discardChangesQuestion,
                      actionText: context.formL10n.discardChanges,
                      // actionIcon: const Icon(Icons.close),
                      onAction: Navigator.of(context).pop,
                      cancelText: context.formL10n.keepEditing,
                      // cancelIcon: const Icon(Icons.arrow_back),
                    );
                  },
                ),
                actions: [
                  BlocSelector<T, WoForm, WoFormStatus>(
                    selector: (form) => form.status,
                    builder: (context, status) => switch (status) {
                      WoFormStatus.idle ||
                      WoFormStatus.invalid ||
                      WoFormStatus.submitting ||
                      WoFormStatus.submitError =>
                        FilledButton(
                          onPressed: context.read<T>().submit,
                          child: Text(context.formL10n.save),
                        ),
                      WoFormStatus.submitted => TextButton(
                          onPressed: null,
                          child: Text(context.formL10n.saved),
                        ),
                    },
                  ),
                  WoGap.small,
                ],
              ),
              body: BlocSelector<T, WoForm, bool>(
                selector: (form) => form.status == WoFormStatus.submitting,
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

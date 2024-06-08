import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/ui/node_widget/form_card.dart';
import 'package:wo_form/wo_form.dart';

class WoFormScreen extends StatelessWidget {
  const WoFormScreen({
    required this.form,
    required this.onSubmitting,
    this.onSubmitted,
    this.settings,
    super.key,
  });

  final WoForm form;
  final VoidCallback onSubmitting;
  final void Function(BuildContext context)? onSubmitted;
  final WoFormUiSettings? settings;

  @override
  Widget build(BuildContext context) {
    final inputSettings = form.uiSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

    final submitButton = BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return switch (mergedSettings.submitMode) {
          null || WoFormSubmitMode.submit => switch (status) {
              IdleStatus() ||
              InvalidValuesStatus() ||
              SubmitErrorStatus() =>
                FilledBigCardButton(
                  onPressed: context.read<WoFormValuesCubit>().submit,
                  child: Text(mergedSettings.submitText ?? ''),
                ),
              SubmittingStatus() => FilledBigCardButton(
                  onPressed: () {},
                  child: Text(mergedSettings.submitText ?? ''),
                ),
              SubmittedStatus() => FilledBigCardButton(
                  child: Text(
                    mergedSettings.submittedText ??
                        mergedSettings.submitText ??
                        '',
                  ),
                ),
            },
          WoFormSubmitMode.submitIfValid => switch (status) {
              SubmittingStatus() => FilledBigCardButton(
                  onPressed: () {},
                  leading: Padding(
                    padding: const EdgeInsets.only(right: WoSize.small),
                    child: SizedBox.square(
                      dimension: WoSize.medium,
                      child: CircularProgressIndicator(
                        color: context.colorScheme.onPrimary,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                  trailing: const SizedBox(width: WoSize.large),
                  child: Text(mergedSettings.submitText ?? ''),
                ),
              SubmittedStatus()
                  when (mergedSettings.submittedText ?? '').isNotEmpty =>
                FilledBigCardButton(
                  child: Text(
                    mergedSettings.submittedText ??
                        mergedSettings.submitText ??
                        '',
                  ),
                ),
              _ => BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
                  builder: (context, values) {
                    final isValid = form.getErrors(values).isEmpty;
                    return FilledBigCardButton(
                      onPressed: isValid
                          ? context.read<WoFormValuesCubit>().submit
                          : null,
                      child: Text(mergedSettings.submitText ?? ''),
                    );
                  },
                ),
            },
          WoFormSubmitMode.save => switch (status) {
              SubmittingStatus() => FilledButton(
                  onPressed: () {},
                  child: Text(mergedSettings.submitText ?? ''),
                ),
              IdleStatus() ||
              InvalidValuesStatus() ||
              SubmitErrorStatus() =>
                FilledButton(
                  onPressed: context.read<WoFormValuesCubit>().submit,
                  child: Text(mergedSettings.submitText ?? ''),
                ),
              SubmittedStatus() => TextButton(
                  onPressed: null,
                  child: Text(
                    mergedSettings.submittedText ??
                        mergedSettings.submitText ??
                        '',
                  ),
                ),
            },
        };
      },
    );

    final body = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...form.inputs.map((e) => e.toWidget(parentPath: '')),
        if (mergedSettings.displayMode != WoFormDisplayMode.page) ...[
          WoGap.xlarge,
          submitButton,
        ],
      ],
    );

    return WoFormInitializer(
      form: form,
      onSubmitting: onSubmitting,
      child: BlocListener<WoFormStatusCubit, WoFormStatus>(
        listener: (context, status) {
          if (status is SubmittedStatus && onSubmitted != null) {
            onSubmitted!(context);
          }
        },
        child: switch (mergedSettings.displayMode) {
          null || WoFormDisplayMode.card => FormCard(
              labelText: mergedSettings.titleText ?? '',
              helperText: '',
              child: body,
            ),
          WoFormDisplayMode.page => Scaffold(
              appBar: AppBar(
                title: Text(mergedSettings.titleText ?? ''),
                actions: [submitButton],
              ),
              body: WoPadding.allMedium(child: body),
            ),
        },
      ),
    );
  }
}

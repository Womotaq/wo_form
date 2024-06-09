import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/ui/prefab/form_card.dart';
import 'package:wo_form/wo_form.dart';

class WoFormScreen extends StatelessWidget {
  const WoFormScreen({
    required this.form,
    this.onSubmitting,
    this.onSubmitted,
    this.uiSettings,
    super.key,
  });

  final WoForm form;
  final void Function(Map<String, dynamic> values)? onSubmitting;
  final void Function(BuildContext context)? onSubmitted;
  final WoFormUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final inputSettings = form.uiSettings;
    final mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    final submitButton = BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return switch (mergedSettings.submitMode) {
          _ when mergedSettings.displayMode is WoFormDisplayedInPage
            // || WoFormSubmitMode.save
            =>
            switch (status) {
              SubmittingStatus() => FilledButton.icon(
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.only(right: WoSize.xsmall),
                    child: SizedBox.square(
                      dimension: WoSize.medium,
                      child: CircularProgressIndicator(
                        color: context.colorScheme.onPrimary,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                  label: Text(mergedSettings.submitText ?? ''),
                ),
              SubmittedStatus()
                  when (mergedSettings.submittedText ?? '').isNotEmpty =>
                TextButton(
                  onPressed: null,
                  child: Text(
                    mergedSettings.submittedText ??
                        mergedSettings.submitText ??
                        '',
                  ),
                ),
              _ => FilledButton(
                  onPressed: context.read<WoFormValuesCubit>().submit,
                  child: Text(mergedSettings.submitText ?? ''),
                ),
            },
          null || WoFormSubmitMode.submit || WoFormSubmitMode.save => switch (
                status) {
              SubmittingStatus() => BigButton.filled(
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
                BigButton.filled(
                  child: Text(
                    mergedSettings.submittedText ??
                        mergedSettings.submitText ??
                        '',
                  ),
                ),
              _ => BigButton.filled(
                  onPressed: context.read<WoFormValuesCubit>().submit,
                  child: Text(mergedSettings.submitText ?? ''),
                ),
            },
          WoFormSubmitMode.submitIfValid => switch (status) {
              SubmittingStatus() => BigButton.filled(
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
                BigButton.filled(
                  child: Text(
                    mergedSettings.submittedText ??
                        mergedSettings.submitText ??
                        '',
                  ),
                ),
              _ => BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
                  builder: (context, values) {
                    final isValid = form.getErrors(values).isEmpty;
                    return BigButton.filled(
                      onPressed: isValid
                          ? context.read<WoFormValuesCubit>().submit
                          : null,
                      child: Text(mergedSettings.submitText ?? ''),
                    );
                  },
                ),
            },
        };
      },
    );

    final body = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...form.inputs.map((e) => e.toWidget(parentPath: '')),
        if (mergedSettings.displayMode is! WoFormDisplayedInPage) ...[
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
          null || WoFormDisplayedInCard() => FormCard(
              labelText: mergedSettings.titleText ?? '',
              helperText: '',
              child: body,
            ),
          WoFormDisplayedInPage() => Scaffold(
              appBar: AppBar(
                leading: WoFormPopButton(form: form),
                title: Text(mergedSettings.titleText ?? ''),
                actions: [submitButton, WoGap.small],
              ),
              body: SingleChildScrollView(
                child: WoPadding.allMedium(child: body),
              ),
            ),
          WoFormDisplayedInPages(
            nextText: final nextText,
            backText: final backText,
          ) =>
            Scaffold(
              appBar: AppBar(
                leading: WoFormPopButton(form: form),
                title: Text(mergedSettings.titleText ?? ''),
              ),
              body: _WoFormPageView(
                form: form,
                backText: backText,
                nextText: nextText,
                submitButton: submitButton,
              ),
            ),
        },
      ),
    );
  }
}

class _WoFormPageView extends StatelessWidget {
  const _WoFormPageView({
    required this.form,
    required this.backText,
    required this.submitButton,
    required this.nextText,
  });

  final WoForm form;
  final String? backText;
  final BlocBuilder<WoFormStatusCubit, WoFormStatus> submitButton;
  final String? nextText;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return PageView.builder(
      controller: pageController,
      itemCount: form.inputs.length,
      itemBuilder: (context, index) => WoPadding.allMedium(
        child: Column(
          children: [
            form.inputs[index].toWidget(parentPath: ''),
            WoGap.xlarge,
            Row(
              children: [
                if (index > 0)
                  BigButton(
                    onPressed: () {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut,
                      );
                    },
                    child: Text(backText ?? ''),
                  ),
                const Spacer(),
                if (index == form.inputs.length - 1)
                  submitButton
                else
                  BigButton.filled(
                    onPressed: () {
                      final input = form.inputs[index];
                      final valuesMap = context.read<WoFormValuesCubit>().state;

                      final Iterable<WoFormInputError> errors;
                      if (input is WoFormNode) {
                        errors = input.getErrors(valuesMap, parentPath: '');
                      } else if (input is WoFormInputMixin) {
                        errors = [
                          (input as WoFormInputMixin)
                              .getError(valuesMap['/${input.id}']),
                        ].whereNotNull();
                      } else {
                        throw UnimplementedError();
                      }

                      if (errors.isNotEmpty) {
                        return context
                            .read<WoFormStatusCubit>()
                            .setInvalidValues(inputErrors: errors);
                      } else {
                        // remove the InvalidValuesStatus
                        context.read<WoFormStatusCubit>().setIdle();
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        );
                      }
                    },
                    child: Text(nextText ?? ''),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WoFormPopButton extends StatelessWidget {
  const WoFormPopButton({
    required this.form,
    super.key,
  });

  final WoForm form;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        if (form.onUnsubmittedQuit == null ||
            context.read<WoFormStatusCubit>().state is SubmittedStatus) {
          return Navigator.of(context).pop();
        } else {
          form.onUnsubmittedQuit!(context);
        }
      },
    );
  }
}

import 'dart:math';

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
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context.read<WoFormValuesCubit>().submit();
                  },
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
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context.read<WoFormValuesCubit>().submit();
                  },
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
                          ? () {
                              FocusScope.of(context).unfocus();
                              context.read<WoFormValuesCubit>().submit();
                            }
                          : null,
                      child: Text(mergedSettings.submitText ?? ''),
                    );
                  },
                ),
            },
        };
      },
    );

    Widget buildBody() => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...form.inputs.map((e) => e.toWidget(parentPath: '')),
            if (mergedSettings.displayMode is! WoFormDisplayedInPage) ...[
              WoGap.xlarge,
              WoPadding.horizontalSmall(child: submitButton),
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
          null || WoFormDisplayedInCard() => WoPadding.verticalMedium(
              child: FormCard(
                labelText: mergedSettings.titleText ?? '',
                helperText: '',
                child: buildBody(),
              ),
            ),
          WoFormDisplayedInPage() => Scaffold(
              appBar: AppBar(
                leading: WoFormPopButton(
                  onUnsubmittedQuit: form.onUnsubmittedQuit,
                ),
                title: Text(mergedSettings.titleText ?? ''),
                actions: [submitButton, WoGap.small],
              ),
              body: SingleChildScrollView(
                child: WoPadding.verticalMedium(child: buildBody()),
              ),
            ),
          WoFormDisplayedInPages(
            nextText: final nextText,
          ) =>
            _WoFormPageView(
              form: form,
              titleText: mergedSettings.titleText ?? '',
              nextText: nextText,
              submitButton: submitButton,
            ),
        },
      ),
    );
  }
}

class _PageIndexCubit extends Cubit<int> {
  _PageIndexCubit() : super(0);

  void set(int index) => emit(index);
}

class _WoFormPageView extends StatelessWidget {
  const _WoFormPageView({
    required this.form,
    required this.titleText,
    required this.nextText,
    required this.submitButton,
  });

  final WoForm form;
  final String titleText;
  final String? nextText;
  final BlocBuilder<WoFormStatusCubit, WoFormStatus> submitButton;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    final pageIndexCubit = _PageIndexCubit();

    return BlocProvider.value(
      value: pageIndexCubit,
      child: Scaffold(
        appBar: AppBar(
          // leading: WoFormPopButton(
          //   onUnsubmittedQuit: (context) {
          //     // TODO : PopScope
          //     if (pageController.page != null && pageController.page! > 0) {
          //       FocusScope.of(context).unfocus();
          //       pageController.previousPage(
          //         duration: const Duration(milliseconds: 300),
          //         curve: Curves.easeIn,
          //       );
          //       return false;
          //     } else if (form.onUnsubmittedQuit == null ||
          //         context.read<WoFormStatusCubit>().state is SubmittedStatus) {
          //       return Navigator.of(context).pop();
          //     } else {
          //       form.onUnsubmittedQuit!(context);
          //     }
          //   },
          // ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // TODO : PopScope
              if (pageController.page != null && pageController.page! > 0) {
                FocusScope.of(context).unfocus();
                pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else if (form.onUnsubmittedQuit == null ||
                  context.read<WoFormStatusCubit>().state is SubmittedStatus) {
                return Navigator.of(context).pop();
              } else {
                form.onUnsubmittedQuit!(context);
              }
            },
          ),
          title: Text(titleText),
        ),
        body: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: pageIndexCubit.set,
              itemCount: form.inputs.length,
              itemBuilder: (context, index) => ListView(
                children: [
                  WoGap.medium,
                  form.inputs[index].toWidget(parentPath: ''),
                  WoGap.xlarge,
                  WoPadding.horizontalSmall(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (index == form.inputs.length - 1)
                          submitButton
                        else
                          BigButton.filled(
                            onPressed: () {
                              final input = form.inputs[index];
                              final values =
                                  context.read<WoFormValuesCubit>().state;

                              final Iterable<WoFormInputError> errors;
                              if (input is WoFormNode) {
                                errors =
                                    input.getErrors(values, parentPath: '');
                              } else if (input is WoFormInputMixin) {
                                errors = [
                                  (input as WoFormInputMixin)
                                      .getError(values['/${input.id}']),
                                ].whereNotNull();
                              } else {
                                throw UnimplementedError();
                              }

                              if (errors.isNotEmpty) {
                                return context
                                    .read<WoFormStatusCubit>()
                                    .setInvalidValues(inputErrors: errors);
                              } else {
                                FocusScope.of(context).unfocus();
                                // remove the InvalidValuesStatus
                                context.read<WoFormStatusCubit>().setIdle();
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: Text(nextText ?? ''),
                          ),
                      ],
                    ),
                  ),
                  WoGap.medium,
                ],
              ),
            ),
            BlocBuilder<_PageIndexCubit, int>(
              builder: (context, pageIndex) {
                return TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  tween: Tween<double>(
                    begin: 0,
                    end: pageIndex.toDouble(),
                  ),
                  builder: (context, value, _) {
                    return LinearProgressIndicator(
                      value: value / max(1, form.inputs.length - 1),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WoFormPopButton extends StatelessWidget {
  const WoFormPopButton({
    required this.onUnsubmittedQuit,
    super.key,
  });

  final Future<bool?> Function(BuildContext)? onUnsubmittedQuit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        final canPop = onUnsubmittedQuit == null || status is SubmittedStatus;

        return PopScope(
          canPop: canPop,
          onPopInvoked: (didPop) async {
            if (didPop) return;
            if (canPop) return;
            final confirmPop = await onUnsubmittedQuit!(context);
            if (confirmPop ?? false) {
              if (!context.mounted) return;
              Navigator.of(context).pop();
            }
          },
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (onUnsubmittedQuit == null || status is SubmittedStatus) {
                return Navigator.of(context).pop();
              } else {
                final confirmPop = await onUnsubmittedQuit!(context);
                if (confirmPop ?? false) {
                  if (!context.mounted) return;
                  Navigator.of(context).pop();
                }
              }
            },
          ),
        );
      },
    );
  }
}

import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

// TODO : name as page
class WoFormPage extends StatelessWidget {
  const WoFormPage({
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
    return WoFormInitializer(
      form: form,
      onSubmitting: onSubmitting,
      child: BlocListener<WoFormStatusCubit, WoFormStatus>(
        listener: (context, status) {
          if (status is SubmittedStatus && onSubmitted != null) {
            onSubmitted!(context);
          }
        },
        child: Theme(
          data: form.themeBuilder?.call(context) ?? Theme.of(context),
          child: _WoFormPage(
            form: form,
            onSubmitted: onSubmitted,
            uiSettings: uiSettings,
          ),
        ),
      ),
    );
  }
}

class _WoFormPage extends StatelessWidget {
  const _WoFormPage({
    required this.form,
    this.onSubmitted,
    this.uiSettings,
  });

  final WoForm form;
  final void Function(BuildContext context)? onSubmitted;
  final WoFormUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final uiSettings = form.uiSettings;

    void submit() {
      FocusScope.of(context).unfocus();
      context.read<WoFormValuesCubit>().submit();
    }

    final submitMode = uiSettings.submitMode;
    final submitButton = BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        final disabled = switch (submitMode.disableSubmitMode) {
          DisableSubmitButton.whenInitialOrSubmitted =>
            status is InitialStatus || status is SubmittedStatus,
          DisableSubmitButton.whenInvalid => context.select(
              (WoFormValuesCubit c) => form.getErrors(c.state).isNotEmpty,
            ),
          DisableSubmitButton.never => false,
        };

        final submitButtonData = SubmitButtonData(
          formStatus: status,
          onPressed: status is SubmittingStatus
              ? () {}
              : disabled
                  ? null
                  : submit,
          text:
              submitMode.submitText ?? context.read<WoFormL10n?>()?.submitText,
          position: submitMode.buttonPosition,
        );

        return uiSettings.submitButtonBuilder?.call(submitButtonData) ??
            WoFormTheme.of(context)
                ?.submitButtonBuilder
                ?.call(submitButtonData) ??
            SubmitButton(data: submitButtonData);
      },
    );

    if (submitMode is PageByPageSubmitMode) {
      return _WoFormPageView(
        form: form,
        titleText: uiSettings.titleText,
        nextText: submitMode.nextText,
        submitButton: submitButton,
      );
    }

    Widget buildBody() => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...form.inputs.map((e) => e.toWidget(parentPath: '')),
            if (uiSettings.submitMode.buttonPosition ==
                SubmitButtonPosition.bottom)
              submitButton,
          ],
        );

    return Scaffold(
      appBar: AppBar(
        leading: QuitPageButton(canQuit: form.canQuit),
        title: uiSettings.titlePosition == WoFormTitlePosition.appBar
            ? Text(uiSettings.titleText)
            : null,
        actions: [
          if (uiSettings.submitMode.buttonPosition ==
              SubmitButtonPosition.appBar) ...[
            submitButton,
            WoGap.small,
          ],
        ],
      ),
      body: SingleChildScrollView(
        child: WoPadding.verticalMedium(
          child: Column(
            children: [
              if (uiSettings.titlePosition == WoFormTitlePosition.header)
                FormHeader(
                  labelText: uiSettings.titleText,
                  helperText: '',
                ),
              buildBody(),
            ],
          ),
        ),
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
          leading: QuitPageButton(
            canQuit: (context) async {
              if (pageController.page != null && pageController.page! > 0) {
                FocusScope.of(context).unfocus();
                await pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
                return false;
              } else {
                return form.canQuit?.call(context) ?? true;
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
                          Builder(
                            builder: (context) {
                              final submitButtonData = SubmitButtonData(
                                text: nextText ??
                                    context.read<WoFormL10n?>()?.nextText,
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
                                    context
                                        .read<WoFormStatusCubit>()
                                        .setInProgress();
                                    pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                    );
                                  }
                                },
                                position: SubmitButtonPosition.bottom,
                              );

                              return form.uiSettings.submitButtonBuilder
                                      ?.call(submitButtonData) ??
                                  WoFormTheme.of(context)
                                      ?.submitButtonBuilder
                                      ?.call(submitButtonData) ??
                                  SubmitButton(data: submitButtonData);
                            },
                          ),
                      ],
                    ),
                  ),
                  WoGap.medium,
                ],
              ),
            ),
            if ((form.uiSettings.submitMode as PageByPageSubmitMode)
                .showProgressIndicator)
              BlocBuilder<_PageIndexCubit, int>(
                builder: (context, pageIndex) {
                  return TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    tween: Tween<double>(
                      begin: 1,
                      end: pageIndex.toDouble() + 1,
                    ),
                    builder: (context, value, _) {
                      return LinearProgressIndicator(
                        value: value / max(1, form.inputs.length),
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

import 'dart:math';

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
    final disabled = switch (submitMode.disableSubmitMode) {
      DisableSubmitButton.whenInitialOrSubmitted => switch (
            context.watch<WoFormStatusCubit>().state) {
          InitialStatus() || SubmittedStatus() => true,
          _ => false,
        },
      DisableSubmitButton.whenInvalid => context.select(
          (WoFormValuesCubit c) => form.getErrors(c.state).isNotEmpty,
        ),
      DisableSubmitButton.never => false,
    };

    final submitButtonData = SubmitButtonData(
      onPressed: disabled ? null : submit,
      text: submitMode.submitText ?? context.read<WoFormL10n?>()?.submitText,
      position: submitMode.buttonPosition,
    );

    if (submitMode is PageByPageSubmitMode) {
      return _WoFormPageView(
        form: form,
        titleText: uiSettings.titleText,
        nextText: submitMode.nextText,
        submitButtonData: submitButtonData,
      );
    }

    final submitButton = uiSettings.submitButtonBuilder
            ?.call(submitButtonData) ??
        WoFormTheme.of(context)?.submitButtonBuilder?.call(submitButtonData) ??
        SubmitButton(data: submitButtonData);

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...form.inputs.map((e) => e.toWidget(parentPath: '')),
                  if (uiSettings.submitMode.buttonPosition ==
                      SubmitButtonPosition.bottom)
                    submitButton,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WoFormPageView extends StatefulWidget {
  const _WoFormPageView({
    required this.form,
    required this.titleText,
    required this.nextText,
    required this.submitButtonData,
  });

  final WoForm form;
  final String titleText;
  final String? nextText;
  final SubmitButtonData submitButtonData;

  @override
  State<_WoFormPageView> createState() => _WoFormPageViewState();
}

class _WoFormPageViewState extends State<_WoFormPageView> {
  late PageController _pageController;
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pageController.addListener(
      () => setState(() => _currentPage = _pageController.page!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: QuitPageButton(
          canQuit: (context) async {
            if (_pageController.page != null && _pageController.page! > 0) {
              FocusScope.of(context).unfocus();
              await _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              return false;
            } else {
              return widget.form.canQuit?.call(context) ?? true;
            }
          },
        ),
        title: Text(widget.titleText),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.form.inputs.length,
            itemBuilder: (context, index) => ListView(
              children: [
                WoGap.medium,
                widget.form.inputs[index].toWidget(parentPath: ''),
                WoGap.xlarge,
                WoPadding.horizontalSmall(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Builder(
                        builder: (context) {
                          final submitButtonData =
                              index == widget.form.inputs.length - 1
                                  ? widget.submitButtonData
                                  : SubmitButtonData(
                                      text: widget.nextText ??
                                          context.read<WoFormL10n?>()?.nextText,
                                      onPressed: () => context
                                          .read<WoFormValuesCubit>()
                                          .submitInput(
                                            index: index,
                                            onSuccess: () {
                                              FocusScope.of(context).unfocus();
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                  milliseconds: 300,
                                                ),
                                                curve: Curves.easeIn,
                                              );
                                            },
                                          ),
                                      position: SubmitButtonPosition.bottom,
                                    );

                          return widget.form.uiSettings.submitButtonBuilder
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
          if ((widget.form.uiSettings.submitMode as PageByPageSubmitMode)
              .showProgressIndicator)
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              tween: Tween<double>(
                begin: 1,
                end: _currentPage + 1,
              ),
              builder: (context, value, _) {
                return LinearProgressIndicator(
                  value: value / max(1, widget.form.inputs.length),
                );
              },
            ),
        ],
      ),
    );
  }
}

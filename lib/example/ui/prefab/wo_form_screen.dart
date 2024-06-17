import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

// TODO : name file as page
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

    final submitMode = uiSettings.submitMode;

    if (submitMode is PageByPageSubmitMode) {
      return _WoFormPageView(
        form: form,
        titleText: uiSettings.titleText,
        nextText: submitMode.nextText,
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: QuitPageButton(canQuit: form.canQuit),
        title: uiSettings.titlePosition == WoFormTitlePosition.appBar
            ? Text(uiSettings.titleText)
            : null,
        actions: [
          if (uiSettings.submitMode.buttonPosition ==
              SubmitButtonPosition.appBar) ...[
            const SubmitButtonBuilder(),
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
                    const SubmitButtonBuilder(),
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
  });

  final WoForm form;
  final String titleText;
  final String? nextText;

  @override
  State<_WoFormPageView> createState() => _WoFormPageViewState();
}

class _WoFormPageViewState extends State<_WoFormPageView> {
  double pageIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final pageController = context.read<WoFormValuesCubit>().pageController;
    pageController.addListener(
      () => setState(() => pageIndex = pageController.page!),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pageController = context.read<WoFormValuesCubit>().pageController;

    return Scaffold(
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
              return widget.form.canQuit?.call(context) ?? true;
            }
          },
        ),
        title: Text(widget.titleText),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
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
                      SubmitButtonBuilder(pageIndex: index),
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
                end: pageIndex + 1,
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

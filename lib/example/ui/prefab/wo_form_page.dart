import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormPage extends StatelessWidget {
  const WoFormPage({required this.form, super.key});

  final WoForm form;

  @override
  Widget build(BuildContext context) {
    return WoFormInitializer(
      form: form,
      child: BlocListener<WoFormStatusCubit, WoFormStatus>(
        listener: (context, status) {
          if (form.onSubmitted != null && status is SubmittedStatus) {
            form.onSubmitted!(context);
          }
        },
        child: Builder(
          builder: (context) {
            final uiSettings = form.uiSettings;

            final submitMode = uiSettings.submitMode;
            final page = submitMode is PageByPageSubmitMode
                ? _WoFormStandardPageByPage(
                    form: form,
                    titleText: uiSettings.titleText,
                    nextText: submitMode.nextText,
                  )
                : _WoFormStandardPage(form: form);

            return form.themeBuilder == null
                ? page
                : Theme(
                    data: form.themeBuilder!(context),
                    child: page,
                  );
          },
        ),
      ),
    );
  }
}

class _WoFormStandardPage extends StatelessWidget {
  const _WoFormStandardPage({required this.form});

  final WoForm form;

  @override
  Widget build(BuildContext context) {
    final uiSettings = form.uiSettings;

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
                Builder(
                  builder: (context) {
                    final headerData = WoFormHeaderData(
                      labelText: uiSettings.titleText,
                    );

                    return uiSettings.headerBuilder?.call(headerData) ??
                        WoFormTheme.of(context)
                            ?.headerBuilder
                            ?.call(headerData) ??
                        FormHeader(data: headerData);
                  },
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

class _WoFormStandardPageByPage extends StatefulWidget {
  const _WoFormStandardPageByPage({
    required this.form,
    required this.titleText,
    required this.nextText,
  });

  final WoForm form;
  final String titleText;
  final String? nextText;

  @override
  State<_WoFormStandardPageByPage> createState() =>
      _WoFormStandardPageByPageState();
}

class _WoFormStandardPageByPageState extends State<_WoFormStandardPageByPage> {
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
                const SizedBox(height: 16),
                widget.form.inputs[index].toWidget(parentPath: ''),
                const SizedBox(height: 32),
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

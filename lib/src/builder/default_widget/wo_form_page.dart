import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormPage extends StatelessWidget {
  const WoFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final uiSettings = form.uiSettings;

    final submitMode = uiSettings.submitMode;
    return submitMode is PageByPageSubmitMode
        ? WoFormPageByPage(
            form: form,
            titleText: uiSettings.titleText,
            nextText: submitMode.nextText,
          )
        : WoFormStandardPage(form: form);
  }
}

class WoFormStandardPage extends StatelessWidget {
  const WoFormStandardPage({required this.form, super.key});

  final WoForm form;

  @override
  Widget build(BuildContext context) {
    final uiSettings = form.uiSettings;

    final woFormTheme = WoFormTheme.of(context);

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
            const SizedBox(width: 8),
          ],
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              if (uiSettings.titlePosition == WoFormTitlePosition.header)
                Builder(
                  builder: (context) {
                    final headerData = WoFormHeaderData(
                      labelText: uiSettings.titleText,
                    );

                    return (uiSettings.headerBuilder ??
                            woFormTheme?.headerBuilder ??
                            FormHeader.new)
                        .call(headerData);
                  },
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...form.inputs.map(
                    (e) => Padding(
                      padding: EdgeInsets.only(
                        bottom: woFormTheme?.verticalSpacing ?? 0,
                      ),
                      child: e.toWidget(parentPath: ''),
                    ),
                  ),
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

class WoFormPageByPage extends StatefulWidget {
  const WoFormPageByPage({
    required this.form,
    required this.titleText,
    required this.nextText,
    super.key,
  });

  final WoForm form;
  final String titleText;
  final String? nextText;

  @override
  State<WoFormPageByPage> createState() => WoFormPageByPageState();
}

class WoFormPageByPageState extends State<WoFormPageByPage> {
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
      body: SafeArea(
        child: Stack(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SubmitButtonBuilder(pageIndex: index),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
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
      ),
    );
  }
}

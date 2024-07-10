import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormPage extends StatelessWidget {
  const WoFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();

    final submitMode = root.uiSettings.submitMode;
    return submitMode is PageByPageSubmitMode
        ? WoFormPageByPage(
            root: root,
            titleText: root.uiSettings.titleText,
            nextText: submitMode.nextText,
          )
        : WoFormStandardPage(root: root);
  }
}

class WoFormStandardPage extends StatelessWidget {
  const WoFormStandardPage({required this.root, super.key});

  final RootNode root;

  @override
  Widget build(BuildContext context) {
    final submitMode = root.uiSettings.submitMode;
    if (submitMode is! StandardSubmitMode) {
      throw ArgumentError('submitMode must be StandardSubmitMode');
    }

    final woFormTheme = WoFormTheme.of(context);

    final column = Column(
      children: [
        if (root.uiSettings.titlePosition == WoFormTitlePosition.header)
          Builder(
            builder: (context) {
              final headerData = WoFormHeaderData(
                labelText: root.uiSettings.titleText,
              );

              return (root.uiSettings.headerBuilder ??
                      woFormTheme?.headerBuilder ??
                      FormHeader.new)
                  .call(headerData);
            },
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...root.children.map(
              (child) => Padding(
                padding: EdgeInsets.only(
                  bottom: woFormTheme?.verticalSpacing ?? 0,
                ),
                child: child.toWidget(parentPath: ''),
              ),
            ),
            if (root.uiSettings.submitMode.buttonPosition ==
                SubmitButtonPosition.body)
              const SubmitButtonBuilder(),
          ],
        ),
      ],
    );

    return (submitMode.scaffoldBuilder ??
            woFormTheme?.standardScaffoldBuilder ??
            _StandardScaffold.new)
        .call(column);
  }
}

class _StandardScaffold extends StatelessWidget {
  const _StandardScaffold(this.body);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final uiSettings = context.read<RootNode>().uiSettings;

    return Scaffold(
      appBar: AppBar(
        leading: QuitPageButton(canQuit: uiSettings.canQuit),
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
      bottomNavigationBar:
          uiSettings.submitMode.buttonPosition == SubmitButtonPosition.bottomBar
              ? const SubmitButtonBuilder()
              : null,
      body: SingleChildScrollView(
        child: SafeArea(
          child: body,
        ),
      ),
    );
  }
}

class WoFormPageByPage extends StatefulWidget {
  const WoFormPageByPage({
    required this.root,
    required this.titleText,
    required this.nextText,
    super.key,
  });

  final RootNode root;
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
    final uiSettings = context.read<RootNode>().uiSettings;
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
              return uiSettings.canQuit?.call(context) ?? true;
            }
          },
        ),
        title: Text(widget.titleText),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // TODO : new way
            PageView.builder(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) => ListView(
                children: [
                  const SizedBox(height: 16),
                  widget.root.children[index].toWidget(parentPath: ''),
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
            if ((uiSettings.submitMode as PageByPageSubmitMode)
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
                    // TODO : new way
                    value: value / max(1, [widget.root].length),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

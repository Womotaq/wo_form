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
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
          spacing: woFormTheme?.verticalSpacing ?? 0,
          children: root.children
              .map((child) => child.toWidget(parentPath: ''))
              .toList(),
        ),
        if (root.uiSettings.submitMode.buttonPosition ==
            SubmitButtonPosition.body)
          const SubmitButtonBuilder(),
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
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth:
                    WoFormTheme.of(context)?.maxWidth ??
                    WoFormThemeData.DEFAULT_MAX_WIDTH,
              ),
              child: body,
            ),
          ),
        ),
      ),
      floatingActionButton:
          uiSettings.submitMode.buttonPosition == SubmitButtonPosition.floating
          ? const SubmitButtonBuilder()
          : null,
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
  late PageController pageController;
  double pageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    context.read<WoFormValuesCubit>().addTemporarySubmitData(
      onSubmitting: () => pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      ),
      path: '/${widget.root.children[0].id}',
    );

    pageController.addListener(
      () {
        final newPageIndex = pageController.page!;
        setState(() => pageIndex = newPageIndex);

        if (newPageIndex == widget.root.children.length - 1) {
          context.read<WoFormValuesCubit>().clearTemporarySubmitData();
        } else {
          context.read<WoFormValuesCubit>().addTemporarySubmitData(
            onSubmitting: () => pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            ),
            path: '/${widget.root.children[newPageIndex.toInt()].id}',
          );
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uiSettings = context.read<RootNode>().uiSettings;
    // final pageController = context.read<WoFormValuesCubit>().pageController;
    // final pageController = PageController();

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
              itemCount: widget.root.children.length,
              itemBuilder: (context, index) => ConstrainedListView(
                maxWidth:
                    WoFormTheme.of(context)?.maxWidth ??
                    WoFormThemeData.DEFAULT_MAX_WIDTH,
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
                    value: value / max(1, widget.root.children.length),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

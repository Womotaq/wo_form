import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/utils/constrained_column.dart';
import 'package:wo_form/wo_form.dart';

class WoFormPage extends StatelessWidget {
  const WoFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();

    final submitMode = root.uiSettings.submitMode;
    return submitMode is MultiStepSubmitMode
        ? WoFormMultiStepPage(submitMode: submitMode)
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
      mainAxisSize: root.uiSettings.scrollable
          ? MainAxisSize.max
          : MainAxisSize.min,
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
          spacing: woFormTheme?.spacing ?? 0,
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
    final constrainedBody = Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth:
              WoFormTheme.of(context)?.maxWidth ??
              WoFormThemeData.DEFAULT_MAX_WIDTH,
        ),
        child: body,
      ),
    );

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
      body: uiSettings.scrollable
          ? SingleChildScrollView(child: constrainedBody)
          : constrainedBody,
      floatingActionButton:
          uiSettings.submitMode.buttonPosition == SubmitButtonPosition.floating
          ? const SubmitButtonBuilder()
          : null,
    );
  }
}

class WoFormMultiStepPage extends StatefulWidget {
  const WoFormMultiStepPage({required this.submitMode, super.key});

  final MultiStepSubmitMode submitMode;

  // ignore: constant_identifier_names
  static const Duration TRANSITION_DURATION = Durations.short4;

  @override
  State<WoFormMultiStepPage> createState() => WoFormMultiStepPageState();
}

class WoFormMultiStepPageState extends State<WoFormMultiStepPage> {
  late PageController pageController;
  double pageIndex = 0;

  @override
  void initState() {
    final root = context.read<RootNode>();
    pageController = PageController();

    context.read<WoFormValuesCubit>().addTemporarySubmitData(
      onSubmitting: () => pageController.nextPage(
        duration: WoFormMultiStepPage.TRANSITION_DURATION,
        curve: Curves.easeIn,
      ),
      path: '/${root.children[0].id}',
    );

    pageController.addListener(
      () {
        final newPageIndex = pageController.page!;
        setState(() => pageIndex = newPageIndex);

        if (newPageIndex == root.children.length - 1) {
          context.read<WoFormValuesCubit>().clearTemporarySubmitData();
        } else {
          context.read<WoFormValuesCubit>().addTemporarySubmitData(
            onSubmitting: () => pageController.nextPage(
              duration: WoFormMultiStepPage.TRANSITION_DURATION,
              curve: Curves.easeIn,
            ),
            path: '/${root.children[newPageIndex.toInt()].id}',
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
    final root = context.read<RootNode>();
    final woFormTheme = WoFormTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: QuitPageButton(
          canQuit: (context) async {
            if (pageController.page != null && pageController.page! > 0) {
              FocusScope.of(context).unfocus();
              await pageController.previousPage(
                duration: WoFormMultiStepPage.TRANSITION_DURATION,
                curve: Curves.easeIn,
              );
              return false;
            } else {
              return root.uiSettings.canQuit?.call(context) ?? true;
            }
          },
        ),
        title: Text(root.uiSettings.titleText),
      ),
      body: Column(
        children: [
          if (widget.submitMode.showProgressIndicator)
            (widget.submitMode.progressIndicatorBuilder ??
                woFormTheme?.multiStepProgressIndicatorBuilder ??
                MultiStepProgressIndicator.new)(
              index: pageIndex.toInt(),
              maxIndex: root.children.length - 1,
            ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: root.children.length,
              itemBuilder: (context, index) {
                final body = Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 32),
                  child: root.children[index].toWidget(
                    parentPath: '',
                  ),
                );
                return ConstrainedColumn(
                  maxWidth:
                      woFormTheme?.maxWidth ??
                      WoFormThemeData.DEFAULT_MAX_WIDTH,
                  children: [
                    Flexible(
                      child: root.uiSettings.scrollable
                          ? SingleChildScrollView(child: body)
                          : body,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SubmitButtonBuilder(
                            submitButtonBuilder:
                                index == root.children.length - 1
                                ? null
                                : (data) =>
                                      (root.uiSettings.submitButtonBuilder ??
                                      woFormTheme?.submitButtonBuilder ??
                                      SubmitButton.new)(
                                        data.copyWith(
                                          text:
                                              widget.submitMode.nextText ??
                                              context
                                                  .read<WoFormL10n?>()
                                                  ?.next(),
                                          icon: null,
                                          path: '/${root.children[index].id}',
                                        ),
                                      ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

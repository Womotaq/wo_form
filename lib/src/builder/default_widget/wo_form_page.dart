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
        Flexible(
          flex:
              root.uiSettings.scrollable ||
                  root.children.every(
                    (child) => (child.flex(context) ?? 0) == 0,
                  )
              ? 0
              : 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: woFormTheme?.spacing ?? 0,
            children: root.children
                .map(
                  (child) => Flexible(
                    flex: root.uiSettings.scrollable
                        ? 0
                        : child.flex(context) ?? 0,
                    child: child.toWidget(parentPath: ''),
                  ),
                )
                .toList(),
          ),
        ),
        if (submitMode.buttonPosition == SubmitButtonPosition.body)
          const SubmitButtonBuilder(),
      ],
    );

    return (root.uiSettings.scaffoldBuilder ??
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
      body: uiSettings.scrollable
          ? SingleChildScrollView(child: constrainedBody)
          : constrainedBody,
      bottomNavigationBar:
          uiSettings.submitMode.buttonPosition == SubmitButtonPosition.bottomBar
          ? const SubmitButtonBuilder()
          : null,
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
  late MultistepController controller;

  @override
  void initState() {
    super.initState();

    controller = MultistepController(context.read<WoFormValuesCubit>());
    addTemporarySubmitData();
  }

  /// Adds temporary submit data to the submit button of the current page,
  /// so that, instead of submitting the form, it submits only the page,
  /// and then navigates to the next page.
  Future<void> addTemporarySubmitData() async {
    if (!mounted) return;

    final root = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();
    final multistepIndex = valuesCubit.readMultistepIndex() ?? 0;
    final node = root.children[multistepIndex];

    // If node is the last page, we shouldn't add temporary submit data.
    if (multistepIndex + 1 == root.children.length) return;

    valuesCubit.addTemporarySubmitData(
      onSubmitting: () async {
        FocusScope.of(context).unfocus();

        await widget.submitMode.onTemporarySubmitting?.call(context, node);

        return controller.nextPage(
          duration: WoFormMultiStepPage.TRANSITION_DURATION,
          curve: Curves.easeIn,
        );
      },
      path: '/${node.id}',
    );
  }

  /// Usually called at the start of a transition animation
  void onNewPageIndex(int newPageIndex) {
    if (newPageIndex == context.read<RootNode>().children.length - 1) {
      context.read<WoFormValuesCubit>().clearTemporarySubmitData();
    } else {
      addTemporarySubmitData();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();
    final woFormTheme = WoFormTheme.of(context);

    final body = Column(
      children: [
        if (widget.submitMode.showProgressIndicator)
          (widget.submitMode.progressIndicatorBuilder ??
              woFormTheme?.multiStepProgressIndicatorBuilder ??
              MultiStepProgressIndicator.new)(),
        Expanded(
          child: PageView.builder(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: root.children.length,
            itemBuilder: (context, index) {
              final node = root.children[index];
              final body = Padding(
                padding:
                    // TODO : rework fieldsPadding
                    widget.submitMode.fieldsPadding ??
                    const EdgeInsets.only(top: 16, bottom: 32),
                child: node.toWidget(parentPath: ''),
              );
              return ConstrainedColumn(
                maxWidth:
                    woFormTheme?.maxWidth ?? WoFormThemeData.DEFAULT_MAX_WIDTH,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    flex:
                        root.uiSettings.scrollable ||
                            (node.flex(context) ?? 0) == 0
                        ? 0
                        : 1,
                    child: root.uiSettings.scrollable
                        ? SingleChildScrollView(child: body)
                        : body,
                  ),
                  SubmitButtonBuilder(
                    submitButtonBuilder: (data) {
                      final submitButtonBuilder =
                          root.uiSettings.submitButtonBuilder ??
                          woFormTheme?.submitButtonBuilder ??
                          SubmitButton.new;
                      final isLastPage = index == root.children.length - 1;

                      return submitButtonBuilder(
                        isLastPage
                            // This line ensures a smooth transition
                            ? data.copyWith(path: '')
                            : data.copyWith(
                                text:
                                    widget.submitMode.nextText ??
                                    context.read<WoFormL10n?>()?.next(),
                                // ignores submitIcon
                                icon: null,
                                path: '/${node.id}',
                              ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );

    return BlocListener<WoFormValuesCubit, WoFormValues>(
      listenWhen: (previous, current) =>
          previous[WoFormValuesCubit.MULTISTEP_INDEX_KEY] !=
          current[WoFormValuesCubit.MULTISTEP_INDEX_KEY],
      listener: (context, state) => onNewPageIndex(
        state[WoFormValuesCubit.MULTISTEP_INDEX_KEY] as int? ?? 0,
      ),
      child: MultistepControllerProvider(
        controller: controller,
        child:
            (root.uiSettings.scaffoldBuilder ??
                    // TODO : woFormTheme?.multistepScaffoldBuilder ??
                    _MultistepScaffold.new)
                .call(body),
      ),
    );
  }
}

class MultistepControllerProvider extends InheritedWidget {
  const MultistepControllerProvider({
    required this.controller,
    required super.child,
    super.key,
  });

  final MultistepController controller;

  @override
  bool updateShouldNotify(MultistepControllerProvider oldWidget) =>
      controller != oldWidget.controller;
}

class _MultistepScaffold extends StatelessWidget {
  const _MultistepScaffold(this.body);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const MultistepBackButton(),
        title: Text(context.read<RootNode>().uiSettings.titleText),
      ),
      body: body,
    );
  }
}

class MultistepBackButton extends StatelessWidget {
  const MultistepBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MultistepController.of(context);

    return QuitPageButton(
      canQuit: (context) async {
        if (controller.page != null && controller.page! > 0) {
          FocusScope.of(context).unfocus();
          await controller.previousPage(
            duration: WoFormMultiStepPage.TRANSITION_DURATION,
            curve: Curves.easeIn,
          );
          return false;
        } else {
          return context.read<RootNode>().uiSettings.canQuit?.call(context) ??
              true;
        }
      },
    );
  }
}

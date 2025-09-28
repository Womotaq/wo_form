part of '../core/wo_form.dart';

class WoFormPageBuilder extends StatelessWidget {
  const WoFormPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();

    final multistepSettings = root.uiSettings.multistepSettings;
    final body = multistepSettings == null
        ? const _WoFormStandardBody()
        : _WoFormMultistepBody(multistepSettings: multistepSettings);

    return _ControllersManager(
      child: Builder(
        builder: (context) =>
            (root.uiSettings.scaffoldBuilder ??
                    WoFormTheme.of(context)?.standardScaffoldBuilder ??
                    WoFormScaffold.new)
                .call(body),
      ),
    );
  }
}

class _WoFormStandardBody extends StatelessWidget {
  const _WoFormStandardBody();

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();
    final woFormTheme = WoFormTheme.of(context);
    final scrollController = ScrollControllerProvider.of(context);

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
              !root.uiSettings.layout.supportFlex ||
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
                    flex: root.uiSettings.layout.supportFlex
                        ? child.flex(context) ?? 0
                        : 0,
                    child: child.toWidget(parentPath: ''),
                  ),
                )
                .toList(),
          ),
        ),
        if (root.uiSettings.submitButtonPosition == SubmitButtonPosition.body)
          const SubmitButtonBuilder(),
      ],
    );

    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: woFormTheme?.maxWidth ?? WoFormThemeData.DEFAULT_MAX_WIDTH,
        ),
        child: root.uiSettings.layout.isScrollable
            ? SingleChildScrollView(
                controller: scrollController,
                child: column,
              )
            : column,
      ),
    );
  }
}

class _WoFormMultistepBody extends StatelessWidget {
  const _WoFormMultistepBody({required this.multistepSettings});

  final MultistepSettings multistepSettings;

  bool get generatingSteps => multistepSettings.generatingSteps;

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();
    final woFormTheme = WoFormTheme.of(context);
    final stepController = MultistepController.of(context);
    final scrollController = ScrollControllerProvider.of(context);

    final pageView = Builder(
      builder: (context) {
        final generatedSteps = generatingSteps
            ? context.select((WoFormValuesCubit c) => c.state.generatedSteps)
            : null;

        return PageView.builder(
          controller: stepController?._controller,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: generatedSteps == null ? root.children.length : null,
          itemBuilder: (context, index) {
            final WoFormNodeMixin step;

            if (generatedSteps != null) {
              if (index >= generatedSteps.length) return null;
              final stepId = generatedSteps[index];
              final stepOrNull = root.children.firstWhereOrNull(
                (step) => step.id == stepId,
              );

              if (stepOrNull == null) {
                throw ArgumentError('No step found with id $stepId');
              } else {
                step = stepOrNull;
              }
            } else {
              step = root.children[index];
            }

            final stepWidget = Padding(
              padding:
                  // TODO : rework fieldsPadding
                  multistepSettings.fieldsPadding ??
                  const EdgeInsets.only(top: 16, bottom: 32),
              child: step.toWidget(parentPath: ''),
            );

            return Builder(
              builder: (context) => ConstrainedColumn(
                maxWidth:
                    woFormTheme?.maxWidth ?? WoFormThemeData.DEFAULT_MAX_WIDTH,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex:
                        root.uiSettings.layout.supportFlex &&
                            (step.flex(context) ?? 0) == 0
                        ? 0
                        : 1,
                    child: root.uiSettings.layout.isScrollable
                        ? SingleChildScrollView(
                            controller: scrollController,
                            child: stepWidget,
                          )
                        : stepWidget,
                  ),
                  if (root.uiSettings.submitButtonPosition ==
                      SubmitButtonPosition.body)
                    SubmitButtonBuilder(path: '/${step.id}'),
                ],
              ),
            );
          },
        );
      },
    );

    return Column(
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
        if (multistepSettings.showProgressIndicator)
          (multistepSettings.progressIndicatorBuilder ??
              woFormTheme?.multiStepProgressIndicatorBuilder ??
              MultiStepProgressIndicator.new)(),
        Expanded(child: pageView),
      ],
    );
  }
}

class MultistepController {
  MultistepController._(this.valuesCubit) : _controller = PageController();

  final PageController _controller;
  final WoFormValuesCubit valuesCubit;

  // static MultistepController? of(BuildContext context, {bool listen = true}) =>
  //     listen
  //     ? context
  //           .dependOnInheritedWidgetOfExactType<_MultistepControllerProvider>()
  //           ?.controller
  //     : context
  //           .getInheritedWidgetOfExactType<_MultistepControllerProvider>()
  //           ?.controller;

  static MultistepController? of(BuildContext context) => context
      .getInheritedWidgetOfExactType<_MultistepControllerProvider>()
      ?.controller;

  /// The current page displayed in the controlled [PageView].
  ///
  /// There are circumstances that this [PageController] can't know the current
  /// page.
  /// Reading [page] will throw an [AssertionError] in the following cases:
  ///
  /// 1. No [PageView] is currently using this [PageController]. Once a
  /// [PageView] starts using this [PageController], the new [page]
  /// position will be derived:
  ///
  ///   * First, based on the attached [PageView]'s [BuildContext] and the
  ///     position saved at that context's [PageStorage] if [keepPage] is true.
  ///   * Second, from the [PageController]'s [initialPage].
  ///
  /// 2. More than one [PageView] using the same [PageController].
  ///
  /// The [hasClients] property can be used to check if a [PageView] is attached
  /// prior to accessing [page].
  double? get page => _controller.page;

  MultistepFailure? jumpToStep(int step) {
    final page = _controller.page;
    // Can't move if already moving
    if (page == null || page.toInt() != page) return MultistepFailure.error;

    final failure = valuesCubit._onMultistepControllerUpdate(step);
    if (failure == null) {
      _controller.jumpToPage(step);
    }
    return failure;
  }

  Future<MultistepFailure?> animateToStep(int step) async {
    final page = _controller.page;
    // Can't move if already moving
    if (page == null || page.toInt() != page) return MultistepFailure.error;

    final failure = valuesCubit._onMultistepControllerUpdate(step);
    if (failure == null) {
      await _controller.animateToPage(
        step,
        duration: WoFormTheme.STEP_TRANSITION_DURATION,
        curve: Curves.easeIn,
      );
    }
    return failure;
  }

  Future<MultistepFailure?> nextStep() =>
      animateToStep((_controller.page?.toInt() ?? 0) + 1);

  Future<MultistepFailure?> previousStep() =>
      animateToStep((_controller.page?.toInt() ?? 0) - 1);

  void dispose() => _controller.dispose();
}

enum MultistepFailure { error, endOfForm, startOfForm }

class _ControllersManager extends StatefulWidget {
  const _ControllersManager({required this.child});

  final Widget child;

  @override
  State<_ControllersManager> createState() => _ControllersManagerState();
}

class _ControllersManagerState extends State<_ControllersManager> {
  late final MultistepController? stepController;
  late final ScrollController scrollController;
  late final bool inheritedScrollController;

  @override
  void initState() {
    super.initState();

    if (context.read<RootNode>().uiSettings.multistepSettings != null) {
      stepController = MultistepController._(context.read<WoFormValuesCubit>());
    } else {
      stepController = null;
    }

    final inherited = ScrollControllerProvider.of(context);
    inheritedScrollController = inherited != null;
    scrollController = inherited ?? ScrollController();
  }

  @override
  void dispose() {
    stepController?.dispose();
    if (!inheritedScrollController) scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final multistepProvided = stepController == null
        ? widget.child
        : _MultistepControllerProvider(
            controller: stepController!,
            child: widget.child,
          );

    return inheritedScrollController
        ? multistepProvided
        // This provider makes the scrollController accessible
        // to _ShrinkableScaffold, so the appBar can react to scroll.
        : ScrollControllerProvider(
            controller: scrollController,
            child: multistepProvided,
          );
  }
}

class _MultistepControllerProvider extends InheritedWidget {
  const _MultistepControllerProvider({
    required this.controller,
    required super.child,
  });

  final MultistepController controller;

  @override
  bool updateShouldNotify(_MultistepControllerProvider oldWidget) =>
      controller != oldWidget.controller;
}

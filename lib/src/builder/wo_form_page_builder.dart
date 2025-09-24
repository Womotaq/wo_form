part of '../core/wo_form.dart';

class WoFormPageBuilder extends StatelessWidget {
  const WoFormPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();
    final woFormTheme = WoFormTheme.of(context);

    final multistepSettings = root.uiSettings.multistepSettings;
    final body = multistepSettings == null
        ? const _WoFormStandardBody()
        : _WoFormMultistepBody(multistepSettings: multistepSettings);

    return MultistepManager(
      child:
          (root.uiSettings.scaffoldBuilder ??
                  woFormTheme?.standardScaffoldBuilder ??
                  WoFormScaffold.new)
              .call(body),
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
              !root.uiSettings.bodyLayout.supportFlex ||
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
                    flex: root.uiSettings.bodyLayout.supportFlex
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

    return root.uiSettings.bodyLayout.isScrollable
        ? SingleChildScrollView(
            controller: scrollController,
            child: column,
          )
        : column;
  }
}

class _WoFormMultistepBody extends StatefulWidget {
  const _WoFormMultistepBody({required this.multistepSettings});

  final MultistepSettings multistepSettings;

  @override
  State<_WoFormMultistepBody> createState() => _WoFormMultistepBodyState();
}

class _WoFormMultistepBodyState extends State<_WoFormMultistepBody> {
  late MultistepController pageController;

  @override
  void initState() {
    super.initState();

    pageController = MultistepController.of(context, listen: false)!;
    addTemporarySubmitData();
  }

  bool get generatingSteps => widget.multistepSettings.generatingSteps;

  WoFormNodeMixin? _stepAtIndex(int index) {
    final rootChildren = context.read<RootNode>().children;

    if (generatingSteps) {
      final generatedSteps = context
          .read<WoFormValuesCubit>()
          .state
          .generatedSteps;

      // happens when nextStep() returned null, wich means the end of the form
      if (index > generatedSteps.length - 1) return null;
      final stepId = generatedSteps[index];
      final stepOrNull = rootChildren.firstWhereOrNull(
        (step) => step.id == stepId,
      );

      if (stepOrNull == null) {
        throw ArgumentError('No step found with id $stepId');
      } else {
        return stepOrNull;
      }
    } else {
      return rootChildren[index];
    }
  }

  /// Adds temporary submit data to the submit button of the current step,
  /// so that, instead of submitting the form, it submits only the step,
  /// and then navigates to the next step.
  ///
  /// Usually called at the start of a transition animation
  Future<void> addTemporarySubmitData() async {
    if (!mounted) return;

    final valuesCubit = context.read<WoFormValuesCubit>();
    final multistepIndex = valuesCubit.state.multistepIndex;

    // If node is the last page, we shouldn't add temporary submit data.
    if (!generatingSteps &&
        multistepIndex == context.read<RootNode>().children.length - 1) {
      return valuesCubit.clearTemporarySubmitData();
    }

    final step = _stepAtIndex(multistepIndex);
    if (step == null) {
      return valuesCubit.clearTemporarySubmitData();
    }

    valuesCubit.addTemporarySubmitData(
      onSubmitting: () async {
        FocusScope.of(context).unfocus();

        await widget.multistepSettings.onTemporarySubmitting?.call(context);

        final abortReason = pageController.nextStep();
        return abortReason == 'end-of-form';
      },
      path: '/${step.id}',
    );
  }

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();
    final woFormTheme = WoFormTheme.of(context);

    final pageView = Builder(
      builder: (context) {
        final generatedSteps = generatingSteps
            ? context.select((WoFormValuesCubit c) => c.state.generatedSteps)
            : null;

        return PageView.builder(
          controller: pageController._controller,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: generatedSteps == null ? root.children.length : null,
          itemBuilder: (context, index) {
            final WoFormNodeMixin step;

            if (generatedSteps != null) {
              if (index > generatedSteps.length - 1) return null;
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
                  widget.multistepSettings.fieldsPadding ??
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
                        root.uiSettings.bodyLayout.supportFlex &&
                            (step.flex(context) ?? 0) == 0
                        ? 0
                        : 1,
                    child: root.uiSettings.bodyLayout.isScrollable
                        ? SingleChildScrollView(child: stepWidget)
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

    return BlocListener<WoFormValuesCubit, WoFormValues>(
      listenWhen: (previous, current) =>
          previous.multistepIndex != current.multistepIndex,
      listener: (context, state) => addTemporarySubmitData(),
      child: Column(
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
          if (widget.multistepSettings.showProgressIndicator)
            (widget.multistepSettings.progressIndicatorBuilder ??
                woFormTheme?.multiStepProgressIndicatorBuilder ??
                MultiStepProgressIndicator.new)(),
          Expanded(child: pageView),
        ],
      ),
    );
  }
}

class MultistepController {
  MultistepController._(this.valuesCubit) : _controller = PageController();

  final PageController _controller;
  final WoFormValuesCubit valuesCubit;

  static MultistepController? of(BuildContext context, {bool listen = true}) =>
      listen
      ? context
            .dependOnInheritedWidgetOfExactType<_MultistepControllerProvider>()
            ?.controller
      : context
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

  /// Possible return values :
  /// - 'end-of-form' : there is no next step.
  /// - 'error' : an error occured
  /// - null : success
  String? nextStep() {
    final page = _controller.page;

    // Can't move if already moving
    if (page == null || page.toInt() != page) return 'error';

    final nextPage = (page.toInt()) + 1;
    final canAnimate = valuesCubit._onMultistepControllerUpdate(nextPage);

    if (canAnimate) {
      unawaited(
        _controller.animateToPage(
          nextPage,
          duration: WoFormTheme.STEP_TRANSITION_DURATION,
          curve: Curves.easeIn,
        ),
      );
    }

    return canAnimate ? null : 'end-of-form';
  }

  /// Possible return values :
  /// - 'start-of-form' : there is no previous step.
  /// - 'error' : an error occured
  /// - null : success
  String? previousStep() {
    final page = _controller.page;

    // Can't move if already moving
    if (page == null || page.toInt() != page) return 'error';

    final nextPage = (page.toInt()) - 1;
    final canAnimate = valuesCubit._onMultistepControllerUpdate(nextPage);

    if (canAnimate) {
      unawaited(
        _controller.animateToPage(
          nextPage,
          duration: WoFormTheme.STEP_TRANSITION_DURATION,
          curve: Curves.easeIn,
        ),
      );
    }

    return canAnimate ? null : 'start-of-form';
  }

  void backToStep(int step) {
    final page = _controller.page;

    // Can't move if already moving
    if (page == null || page.toInt() != page) return;

    // Can only go back
    if (page < step) return;
    final canAnimate = valuesCubit._onMultistepControllerUpdate(step);

    if (canAnimate) {
      unawaited(
        _controller.animateToPage(
          step,
          duration: WoFormTheme.STEP_TRANSITION_DURATION,
          curve: Curves.easeIn,
        ),
      );
    }
  }

  void dispose() => _controller.dispose();
}

class MultistepManager extends StatefulWidget {
  const MultistepManager({required this.child, super.key});

  final Widget child;

  @override
  State<MultistepManager> createState() => _MultistepManagerState();
}

class _MultistepManagerState extends State<MultistepManager> {
  late final MultistepController? controller;

  @override
  void initState() {
    super.initState();

    if (context.read<RootNode>().uiSettings.multistepSettings != null) {
      controller = MultistepController._(context.read<WoFormValuesCubit>());
    } else {
      controller = null;
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => controller == null
      ? widget.child
      : _MultistepControllerProvider(
          controller: controller!,
          child: widget.child,
        );
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

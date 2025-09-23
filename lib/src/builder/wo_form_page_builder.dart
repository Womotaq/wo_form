import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/utils/constrained_column.dart';

class WoFormPageBuilder extends StatelessWidget {
  const WoFormPageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();

    final submitMode = root.uiSettings.submitMode;
    return submitMode is MultiStepSubmitMode
        ? _WoFormMultiStepPage(submitMode: submitMode)
        : _WoFormStandardPage(root: root);
  }
}

class _WoFormStandardPage extends StatelessWidget {
  const _WoFormStandardPage({required this.root});

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
            WoFormStandardScaffold.new)
        .call(column);
  }
}

class _WoFormMultiStepPage extends StatefulWidget {
  const _WoFormMultiStepPage({required this.submitMode});

  final MultiStepSubmitMode submitMode;

  @override
  State<_WoFormMultiStepPage> createState() => _WoFormMultiStepPageState();
}

class _WoFormMultiStepPageState extends State<_WoFormMultiStepPage> {
  late MultistepController controller;
  late bool generatingSteps;
  // Convenient
  late WoFormValuesCubit valuesCubit;

  @override
  void initState() {
    super.initState();

    valuesCubit = context.read<WoFormValuesCubit>();
    generatingSteps = widget.submitMode.generatingSteps;
    controller = MultistepController(valuesCubit);
    addTemporarySubmitData();
  }

  WoFormNodeMixin? _stepAtIndex(int index) {
    final rootChildren = context.read<RootNode>().children;

    if (generatingSteps) {
      final generatedSteps =
          valuesCubit.state[WoFormValuesCubit.GENERATED_STEPS_KEY]
              as List<String>;

      // happens when nextStep() returned null, wich means the end of the form
      if (index > generatedSteps.length - 1) return null;
      final stepId = generatedSteps[index];
      final stepOrNull = rootChildren.firstWhereOrNull(
        (step) => step.id == stepId,
      );

      if (stepOrNull == null) {
        throw ArgumentError('No step found with id {stepId}');
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

    final multistepIndex = valuesCubit.readMultistepIndex() ?? 0;

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

        await widget.submitMode.onTemporarySubmitting?.call(context);

        final abortReason = controller.nextStep();
        return abortReason == AbortReason.endOfForm;
      },
      path: '/${step.id}',
    );
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
          child: Builder(
            builder: (context) {
              final generatedSteps = generatingSteps
                  ? context.select(
                          (WoFormValuesCubit c) =>
                              c.state[WoFormValuesCubit.GENERATED_STEPS_KEY],
                        )
                        as List<String>
                  : null;

              return PageView.builder(
                controller: controller.controller,
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
                      throw ArgumentError('No step found with id {stepId}');
                    } else {
                      step = stepOrNull;
                    }
                  } else {
                    step = root.children[index];
                  }

                  final body = Padding(
                    padding:
                        // TODO : rework fieldsPadding
                        widget.submitMode.fieldsPadding ??
                        const EdgeInsets.only(top: 16, bottom: 32),
                    child: step.toWidget(parentPath: ''),
                  );
                  return ConstrainedColumn(
                    maxWidth:
                        woFormTheme?.maxWidth ??
                        WoFormThemeData.DEFAULT_MAX_WIDTH,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Builder(
                        builder: (context) => Flexible(
                          flex:
                              root.uiSettings.scrollable ||
                                  (step.flex(context) ?? 0) == 0
                              ? 0
                              : 1,
                          child: root.uiSettings.scrollable
                              ? SingleChildScrollView(child: body)
                              : body,
                        ),
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
                                    path: '/${step.id}',
                                  ),
                          );
                        },
                      ),
                    ],
                  );
                },
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
      listener: (context, state) => addTemporarySubmitData(),
      child: MultistepControllerProvider(
        controller: controller,
        child:
            (root.uiSettings.scaffoldBuilder ??
                    // TODO : woFormTheme?.multistepScaffoldBuilder ??
                    WoFormMultistepScaffold.new)
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

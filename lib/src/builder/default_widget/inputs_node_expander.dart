import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeExpander extends StatefulWidget {
  const InputsNodeExpander(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  State<InputsNodeExpander> createState() => _InputsNodeExpanderState();
}

class _InputsNodeExpanderState extends State<InputsNodeExpander> {
  @override
  void initState() {
    if (widget.data.uiSettings.showChildrenInitially ?? false) {
      final valuesCubit = context.read<WoFormValuesCubit>();
      if (!valuesCubit.state.inputsNodeShownChildrenInitially(
        widget.data.path,
      )) {
        /// Registering prevents nwanted reopenings, like when the context
        /// containing the InputsNode is popped and then rebuilt.
        valuesCubit.inputsNodeShowingChildrenInitially(widget.data.path);
        SchedulerBinding.instance.addPostFrameCallback(
          (_) => mounted ? openChildren(context) : null,
        );
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final headerData = WoFormInputHeaderData(
      labelText:
          widget.data.uiSettings.labelTextWhenChildrenHidden ??
          widget.data.uiSettings.labelText,
      labelMaxLines: widget.data.uiSettings.labelMaxLines,
      helperText: widget.data.uiSettings.helperText,
      errorText: widget.data.errorText,
      trailing: const Icon(Icons.chevron_right),
      onTap: () => openChildren(context),
      shrinkWrap: false,
    );

    return (widget.data.uiSettings.inputHeaderBuilder ??
            WoFormTheme.of(context)?.inputHeaderBuilder ??
            InputHeader.new)
        .call(headerData);
  }

  Future<void> openChildren(BuildContext context) {
    final root = context.read<RootNode>();

    return (widget.data.uiSettings.openChildren ?? Push.page)(
      context: context,
      child: RepositoryProvider.value(
        value: root.copyWith(
          uiSettings: root.uiSettings.copyWith(
            layout: LayoutMethod.fromFlex(widget.data.uiSettings.flex),
          ),
        ),
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(value: context.read<WoFormValuesCubit>()),
            BlocProvider.value(value: context.read<WoFormStatusCubit>()),
            BlocProvider.value(value: context.read<WoFormLockCubit>()),
          ],
          child: _InputsNodePage(widget.data),
        ),
      ),
    );
  }
}

class _InputsNodePage extends StatelessWidget {
  const _InputsNodePage(this.data);

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    context.read<WoFormValuesCubit>().addTemporarySubmitData(
      onSubmitting: () async {
        Navigator.pop(context);
        return null;
      },
      path: data.path,
    );

    final fieldData = WoFieldData(
      path: data.path,
      input: data.input,
      value: null,
      uiSettings: data.uiSettings,
      onValueChanged:
          (
            _, {
            UpdateStatus updateStatus = UpdateStatus.yes,
          }) {},
    );

    final inputsNodeWidget =
        (data.uiSettings.widgetBuilder ??
                WoFormTheme.of(context)?.inputsNodeWidgetBuilder ??
                InputsNodeWidget.new)
            .call(fieldData);

    final wrapped = data.uiSettings.flex == null
        ? SingleChildScrollView(
            controller: ScrollControllerProvider.of(context),
            child: inputsNodeWidget,
          )
        : inputsNodeWidget;

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          context.read<WoFormValuesCubit>().removeTemporarySubmitData(
            path: data.path,
          );
        }
      },
      child: true
          ? wrapped
          : Scaffold(
              appBar: AppBar(
                actions: const [
                  SubmitButtonBuilder(),
                  SizedBox(width: 8),
                ],
              ),
              body: inputsNodeWidget,
            ),
    );
  }
}

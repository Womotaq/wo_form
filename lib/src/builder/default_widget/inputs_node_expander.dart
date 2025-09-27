import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/show_modal.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeExpander extends StatefulWidget {
  const InputsNodeExpander.page(this.data, {super.key}) : isModal = false;

  const InputsNodeExpander.modal(this.data, {super.key}) : isModal = true;

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;
  final bool isModal;

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
      trailing: widget.isModal
          ? const Icon(Icons.keyboard_arrow_down)
          : const Icon(Icons.chevron_right),
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
    final tweakedRoot = root.copyWith(
      uiSettings: root.uiSettings.copyWith(
        bodyLayout: switch (widget.data.uiSettings.flex) {
          null => WoFormBodyLayout.scrollable,
          0 => WoFormBodyLayout.shrinkWrap,
          _ => WoFormBodyLayout.flexible,
        },
      ),
    );

    final childrenWidget = RepositoryProvider.value(
      value: tweakedRoot,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: context.read<WoFormValuesCubit>()),
          BlocProvider.value(value: context.read<WoFormStatusCubit>()),
          BlocProvider.value(value: context.read<WoFormLockCubit>()),
        ],
        child: _InputsNodePage(
          data: widget.data,
          isModal: widget.isModal,
        ),
      ),
    );

    if (widget.isModal) {
      return showModal(
        context: context,
        child: childrenWidget,
        layout: tweakedRoot.uiSettings.bodyLayout,
        // (widget.data.uiSettings.flex ?? 0) == 0,
      );
    } else {
      return Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => childrenWidget),
      );
    }
  }
}

class _InputsNodePage extends StatelessWidget {
  const _InputsNodePage({
    required this.data,
    required this.isModal,
  });

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;
  final bool isModal;

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
      child: isModal
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

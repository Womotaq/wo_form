import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeExpander extends StatefulWidget {
  const InputsNodeExpander(this.data, {super.key});

  final WoFieldData<InputsNode, void> data;

  @override
  State<InputsNodeExpander> createState() => _InputsNodeExpanderState();
}

class _InputsNodeExpanderState extends State<InputsNodeExpander> {
  @override
  void initState() {
    if (widget.data.input.uiSettings?.showChildrenInitially ?? false) {
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
    final labelTextWhenChildrenHidden =
        widget.data.input.uiSettings?.labelTextWhenChildrenHidden ?? '';
    final helperTextWhenChildrenHidden =
        widget.data.input.uiSettings?.helperTextWhenChildrenHidden ?? '';

    final headerData = WoFormInputHeaderData(
      labelText: labelTextWhenChildrenHidden.isNotEmpty
          ? labelTextWhenChildrenHidden
          : widget.data.input.uiSettings?.labelText,
      labelMaxLines: widget.data.input.uiSettings?.labelMaxLines,
      helperText: helperTextWhenChildrenHidden.isNotEmpty
          ? helperTextWhenChildrenHidden
          : widget.data.input.uiSettings?.helperText,
      errorText: widget.data.errorText,
      trailing: const Icon(Icons.chevron_right),
      onTap: () => openChildren(context),
      shrinkWrap: false,
    );

    return (widget.data.input.uiSettings?.inputHeaderBuilder ??
            WoFormTheme.of(context)?.inputHeaderBuilder ??
            InputHeader.new)
        .call(headerData);
  }

  Future<void> openChildren(BuildContext context) =>
      (widget.data.input.uiSettings?.openChildren ?? Push.modalBottomSheet)(
        context: context,
        layout: LayoutMethod.fromFlex(
          widget.data.input.uiSettings.flexOrDefault,
        ),
        child: RepositoryProvider.value(
          value: context.read<RootNode>(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: context.read<WoFormValuesCubit>()),
              BlocProvider.value(value: context.read<WoFormStatusCubit>()),
              BlocProvider.value(value: context.read<WoFormLockCubit>()),
            ],
            child: _InputsNodePage(widget.data.path),
          ),
        ),
      );
}

class _InputsNodePage extends StatefulWidget {
  const _InputsNodePage(this.path);

  final String path;

  @override
  State<_InputsNodePage> createState() => _InputsNodePageState();
}

class _InputsNodePageState extends State<_InputsNodePage> {
  @override
  void initState() {
    super.initState();

    context.read<WoFormValuesCubit>().addTemporarySubmitData(
      onSubmitting: () async {
        // Context cannot be poped anymore if valuesCubit.submit was called
        // from the following PopScope.onPopInvokedWithResult
        if (context.mounted && Navigator.of(context).canPop()) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            Navigator.pop(context);
          });
        }
        return null;
      },
      path: widget.path,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          final valuesCubit = context.read<WoFormValuesCubit>();
          if (valuesCubit.state.submitPath == widget.path) {
            // The context has been poped without submitting the temporary
            // submit data. In order to mark the children as visited, we need
            // to enforce a submission.
            await valuesCubit.submit(context);
          }
        }
      },
      child: InputsNodeWidgetBuilder(
        path: widget.path,
        uiSettings: const InputsNodeUiSettings(
          childrenVisibility: ChildrenVisibility.always,
        ),
      ),
    );
  }
}

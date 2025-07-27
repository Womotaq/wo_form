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
    if (widget.data.uiSettings.showChildrenInitially) {
      SchedulerBinding.instance.addPostFrameCallback(
        (_) => mounted ? pushPage(context) : null,
      );
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final headerData = WoFormInputHeaderData(
      path: widget.data.path,
      labelText:
          widget.data.uiSettings.labelTextWhenChildrenHidden ??
          widget.data.uiSettings.labelText,
      helperText: widget.data.uiSettings.helperText,
      errorText: widget.data.errorText,
      trailing: const Icon(Icons.chevron_right),
      onTap: () => pushPage(context),
      shrinkWrap: false,
    );

    return (WoFormTheme.of(context)?.inputHeaderBuilder ?? InputHeader.new)
        .call(headerData);
  }

  void pushPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => RepositoryProvider.value(
          value: context.read<RootNode>(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: context.read<WoFormValuesCubit>(),
              ),
              BlocProvider.value(
                value: context.read<WoFormStatusCubit>(),
              ),
              BlocProvider.value(
                value: context.read<WoFormLockCubit>(),
              ),
            ],
            child: _InputsNodePage(data: widget.data),
          ),
        ),
      ),
    );
  }
}

class _InputsNodePage extends StatelessWidget {
  const _InputsNodePage({required this.data});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    context.read<WoFormValuesCubit>().addTemporarySubmitData(
      onSubmitting: () async => Navigator.pop(context),
      path: data.path,
    );

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          context.read<WoFormValuesCubit>().removeTemporarySubmitData(
            path: data.path,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            SubmitButtonBuilder(),
            SizedBox(width: 8),
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Builder(
              builder: (context) {
                final fieldData = WoFieldData(
                  path: data.path,
                  input: data.input,
                  value: null,
                  errorText: null,
                  uiSettings: data.uiSettings,
                  onValueChanged:
                      (
                        _, {
                        UpdateStatus updateStatus = UpdateStatus.yes,
                      }) {},
                );

                return (data.uiSettings.widgetBuilder ??
                        WoFormTheme.of(context)?.inputsNodeWidgetBuilder ??
                        InputsNodeWidget.new)
                    .call(fieldData);
              },
            ),
          ),
        ),
      ),
    );
  }
}

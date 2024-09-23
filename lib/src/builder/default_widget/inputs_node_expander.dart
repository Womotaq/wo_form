import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/app.dart';
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
      Future.delayed(
        Duration.zero,
        () => mounted ? pushPage(context) : null,
      );
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final headerData = WoFormInputHeaderData(
      path: widget.data.path,
      labelText: widget.data.uiSettings.labelTextWhenChildrenHidden ??
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
    final valuesCubit = context.read<WoFormValuesCubit>();
    valuesCubit.setTemporarySubmitData(
      onSubmitting: () async {
        valuesCubit.removeLastTemporarySubmitData();
        Navigator.pop(context);
      },
      path: widget.data.path,
    );

    context.pushPage(
      RepositoryProvider.value(
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
                      path: widget.data.path,
                      input: widget.data.input,
                      value: null,
                      errorText: null,
                      uiSettings: widget.data.uiSettings,
                      onValueChanged: (_) {},
                    );

                    return (widget.data.uiSettings.widgetBuilder ??
                            WoFormTheme.of(context)?.inputsNodeWidgetBuilder ??
                            InputsNodeWidget.new)
                        .call(fieldData);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

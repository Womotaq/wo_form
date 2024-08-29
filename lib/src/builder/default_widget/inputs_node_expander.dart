import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/app.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeExpander extends StatelessWidget {
  const InputsNodeExpander(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final headerData = WoFormInputHeaderData(
      path: data.path,
      labelText: data.uiSettings.labelTextWhenChildrenHidden ??
          data.uiSettings.labelText,
      helperText: data.uiSettings.helperText,
      errorText: data.errorText,
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
      path: data.path,
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
                      path: data.path,
                      input: data.input,
                      value: null,
                      errorText: null,
                      uiSettings: data.uiSettings,
                      onValueChanged: (_) {},
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
        ),
      ),
    );
  }
}

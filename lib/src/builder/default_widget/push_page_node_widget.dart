import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/app.dart';
import 'package:wo_form/wo_form.dart';

class PushPageNodeWidget extends StatelessWidget {
  const PushPageNodeWidget({required this.data, super.key});

  final WoFieldData<PushPageNode, void, PushPageNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final headerData = WoFormInputHeaderData(
      labelText: data.uiSettings.labelText,
      helperText: data.uiSettings.helperText,
      errorText: data.errorText,
      trailing: const Icon(Icons.chevron_right),
      onTap: () => data.onValueChanged?.call(null),
      shrinkWrap: false,
    );

    return (WoFormTheme.of(context)?.inputHeaderBuilder ?? InputHeader.new)
        .call(headerData);
  }
}

class InputsNodeExpander extends StatelessWidget {
  const InputsNodeExpander(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final headerData = WoFormInputHeaderData(
      labelText: data.uiSettings.labelText,
      helperText: data.uiSettings.helperText,
      errorText: data.errorText,
      trailing: const Icon(Icons.chevron_right),
      onTap: () => context.pushPage(
        RepositoryProvider.value(
          value: context.read<WoForm>(),
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
              appBar: AppBar(),
              body: SingleChildScrollView(
                child: Builder(
                  builder: (context) {
                    final fieldData = WoFieldData(
                      inputPath: data.inputPath,
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
      shrinkWrap: false,
    );

    return (WoFormTheme.of(context)?.inputHeaderBuilder ?? InputHeader.new)
        .call(headerData);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final node = data.input;

    final oFormTheme = WoFormTheme.of(context);
    final formUiSettings = context.read<RootNode>().uiSettings;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        (data.uiSettings.headerBuilder ??
                oFormTheme?.headerBuilder ??
                FormHeader.new)
            .call(
              WoFormHeaderData(
                labelText: data.uiSettings.labelText,
                helperText: data.uiSettings.helperText,
              ),
            ),
        Flexible(
          flex: !formUiSettings.scrollable && node.flex != 0 ? 1 : 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: oFormTheme?.verticalSpacing ?? 0),
            child: Column(
              children: node.children
                  .map(
                    (i) => Flexible(
                      flex: !formUiSettings.scrollable && i.flex != 0
                          ? i.flex
                          : 0,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: oFormTheme?.verticalSpacing ?? 0,
                        ),
                        child: i.toWidget(parentPath: data.path),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

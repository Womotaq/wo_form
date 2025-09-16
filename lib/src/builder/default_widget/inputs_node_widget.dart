import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final node = data.input;

    final woFormTheme = WoFormTheme.of(context);
    final formUiSettings = context.read<RootNode>().uiSettings;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        (data.uiSettings.headerBuilder ??
                woFormTheme?.headerBuilder ??
                FormHeader.new)
            .call(
              WoFormHeaderData(
                labelText: data.uiSettings.labelText,
                helperText: data.uiSettings.helperText,
              ),
            ),
        Flexible(
          flex: !formUiSettings.scrollable && node.flex != 0 ? 1 : 0,
          child: Flex(
            direction: data.uiSettings.direction ?? Axis.vertical,
            spacing: data.uiSettings.spacing ?? woFormTheme?.spacing ?? 0,
            crossAxisAlignment:
                data.uiSettings.crossAxisAlignment ?? CrossAxisAlignment.start,
            children: node.children
                .map(
                  (i) => Flexible(
                    flex: !formUiSettings.scrollable && i.flex != null
                        ? i.flex!
                        : data.uiSettings.direction == Axis.horizontal
                        ? i.flex ?? 1
                        : 0,
                    child: i.toWidget(parentPath: data.path),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

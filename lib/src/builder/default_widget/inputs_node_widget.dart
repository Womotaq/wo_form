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
          flex: !formUiSettings.scrollable && node.flex(context) != 0 ? 1 : 0,
          child: Flex(
            direction: data.uiSettings.direction ?? Axis.vertical,
            spacing: data.uiSettings.spacing ?? woFormTheme?.spacing ?? 0,
            crossAxisAlignment:
                data.uiSettings.crossAxisAlignment ?? CrossAxisAlignment.start,
            children: node.children.map(
              (i) {
                // This is just a way to prevent useless call to i.flex
                if (formUiSettings.scrollable &&
                    data.uiSettings.direction == Axis.vertical) {
                  return i.toWidget(parentPath: data.path);
                }

                final flex = i.flex(context);
                return Flexible(
                  flex: !formUiSettings.scrollable && flex != null
                      ? flex
                      : data.uiSettings.direction == Axis.horizontal
                      ? flex ?? 1
                      : 0,
                  child: i.toWidget(parentPath: data.path),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}

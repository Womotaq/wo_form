import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final woFormTheme = WoFormTheme.of(context);

    final header =
        (data.uiSettings.headerBuilder ??
                woFormTheme?.headerBuilder ??
                FormHeader.new)
            .call(
              WoFormHeaderData(
                labelText: data.uiSettings.labelText,
                helperText: data.uiSettings.helperText,
              ),
            );

    final childBuilder = data.uiSettings.direction == Axis.vertical
        ? standardChildBuilder
        : flexibleChildBuilder;

    final direction = data.uiSettings.direction ?? Axis.vertical;
    final spacing = data.uiSettings.spacing ?? woFormTheme?.spacing ?? 0;
    final reverse = data.uiSettings.reverse ?? false;

    return LayoutMethod.fromFlex(data.uiSettings.flexOrDefault).isScrollable
        ? ListView.builder(
            controller: ScrollControllerProvider.of(context),
            reverse: reverse,
            scrollDirection: direction,
            padding: EdgeInsets.zero,
            itemCount: data.input.children.length + 1,
            itemBuilder: (_, index) => index == 0
                ? header
                : Padding(
                    padding: EdgeInsets.only(
                      bottom: index == data.input.children.length ? 0 : spacing,
                    ),
                    child: standardChildBuilder(data.input.children[index - 1]),
                  ),
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              header,
              Builder(
                builder: (context) => Flexible(
                  flex: data.uiSettings.flexOrDefault != 0 ? 1 : 0,
                  child: Flex(
                    direction: direction,
                    spacing: spacing,
                    crossAxisAlignment:
                        data.uiSettings.crossAxisAlignment ??
                        CrossAxisAlignment.stretch,
                    children: data.input.children.map(childBuilder).toList(),
                  ),
                ),
              ),
            ],
          );
  }

  Widget standardChildBuilder(WoFormNode child) =>
      child.toWidget(parentPath: data.path);

  Widget flexibleChildBuilder(WoFormNode child) => Builder(
    builder: (context) {
      final flex = child.flex(context, parentPath: data.path);
      return Flexible(
        flex:
            flex ??
            (data.uiSettings.direction == Axis.horizontal ? flex ?? 1 : 0),
        child: standardChildBuilder(child),
      );
    },
  );
}

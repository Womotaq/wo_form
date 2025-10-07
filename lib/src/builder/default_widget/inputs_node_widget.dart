import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget(this.data, {super.key});

  final WoFieldData<InputsNode, void> data;

  @override
  Widget build(BuildContext context) {
    final woFormTheme = WoFormTheme.of(context);
    final uiSettings = data.input.uiSettings;

    final header =
        (uiSettings?.headerBuilder ??
                woFormTheme?.headerBuilder ??
                FormHeader.new)
            .call(
              WoFormHeaderData(
                labelText: uiSettings?.labelText,
                helperText: uiSettings?.helperText,
              ),
            );

    final direction = uiSettings?.direction ?? Axis.vertical;
    final spacing = uiSettings?.spacing ?? woFormTheme?.spacing ?? 0;
    final reverse = uiSettings?.reverse ?? false;

    return LayoutMethod.fromFlex(uiSettings.flexOrDefault).isScrollable
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
                  flex: uiSettings.flexOrDefault != 0 ? 1 : 0,
                  child: Flex(
                    direction: direction,
                    spacing: spacing,
                    crossAxisAlignment:
                        uiSettings?.crossAxisAlignment ??
                        CrossAxisAlignment.stretch,
                    children: data.input.children
                        .map(
                          uiSettings.flexOrDefault != 0
                              ? flexibleChildBuilder
                              : standardChildBuilder,
                        )
                        .toList(),
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
            (data.input.uiSettings?.direction == Axis.horizontal ? 1 : 0),
        child: standardChildBuilder(child),
      );
    },
  );
}

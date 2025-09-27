import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final woFormTheme = WoFormTheme.of(context);
    final formUiSettings = context.read<RootNode>().uiSettings;

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

    final childBuilder =
        formUiSettings.layout.isScrollable &&
            data.uiSettings.direction == Axis.vertical
        ? standardChildBuilder
        : flexibleChildBuilder;

    final direction = data.uiSettings.direction ?? Axis.vertical;
    final spacing = data.uiSettings.spacing ?? woFormTheme?.spacing ?? 0;
    final reverse = data.uiSettings.reverse ?? false;

    return (data.uiSettings.flex ?? 0) > 0 &&
            (data.uiSettings.scrollable ?? false)
        ? ListView.builder(
            reverse: reverse,
            // TODO : uiSettings.physics
            // physics: const ClampingScrollPhysics(),
            scrollDirection: direction,
            padding: EdgeInsets.zero,
            itemCount: data.input.children.length + 1,
            itemBuilder: (_, index) => index == 0
                ? header
                : Padding(
                    padding: EdgeInsets.only(
                      bottom: index == data.input.children.length ? 0 : spacing,
                    ),
                    child: standardChildBuilder(
                      data.input.children[index - 1],
                      formUiSettings,
                    ),
                  ),
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              header,
              Builder(
                builder: (context) => Flexible(
                  flex:
                      formUiSettings.layout.supportFlex &&
                          data.input.flex(context) != 0
                      ? 1
                      : 0,
                  child: Flex(
                    direction: direction,
                    spacing: spacing,
                    crossAxisAlignment:
                        data.uiSettings.crossAxisAlignment ??
                        CrossAxisAlignment.stretch,
                    children: data.input.children
                        .map((child) => childBuilder(child, formUiSettings))
                        .toList(),
                  ),
                ),
              ),
            ],
          );
  }

  Widget standardChildBuilder(WoFormNodeMixin child, _) =>
      child.toWidget(parentPath: data.path);

  Widget flexibleChildBuilder(
    WoFormNodeMixin child,
    WoFormUiSettings formUiSettings,
  ) => Builder(
    builder: (context) {
      final flex = child.flex(context);
      return Flexible(
        flex: formUiSettings.layout.supportFlex && flex != null
            ? flex
            : data.uiSettings.direction == Axis.horizontal
            ? flex ?? 1
            : 0,
        child: standardChildBuilder(child, formUiSettings),
      );
    },
  );
}

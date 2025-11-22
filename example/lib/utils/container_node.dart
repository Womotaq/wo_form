import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class ContainerNode extends WidgetNode {
  ContainerNode({
    Color? color,
    double? height,
    String? text,
    int? flex,
  }) : super(
          uiSettings: InputUiSettings(flex: flex),
          builder: (context) => ColoredBox(
            color: color ?? Colors.redAccent,
            child: SizedBox(
              height: height,
              child: Center(
                child: Text(text ?? 'ContainerNode'),
              ),
            ),
          ),
        );
}

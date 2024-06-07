import 'package:flutter/material.dart';

String readableJson(Map<String, dynamic> json, {int indentStep = 4}) {
  final buffer = StringBuffer();
  var indent = 0;

  for (final char in json.toString().characters) {
    if (char == '}' || char == ']') {
      indent -= indentStep;
      buffer.write('\n${' ' * indent}');
    }
    buffer.write(char);
    if (char == '{' || char == '[') {
      indent += indentStep;
      buffer.write('\n${' ' * indent}');
    } else if (char == ',') {
      buffer.write('\n${' ' * indent}');
    }
  }

  return buffer.toString();
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

void showJsonDialog(BuildContext context) {
  final form = context.read<RootNode>();
  final values = context.read<WoFormValuesCubit>().state;

  final json = <String, dynamic>{};
  form.export(
    into: json,
    parentPath: '',
    values: values,
  );

  showDialog<void>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: const Text('JSON'),
        content: Text(readableJson(json)),
        actions: [
          FilledButton.tonalIcon(
            onPressed: () => Navigator.of(dialogContext).pop(),
            label: const Text('Ok'),
          ),
        ],
      );
    },
  );
}

String readableJson(dynamic json, {int indentStep = 4}) {
  final buffer = StringBuffer();
  var indent = 0;
  var insideString = false;
  var lastChar = '';

  for (final char in jsonEncode(json).characters) {
    if (!insideString && (char == '}' || char == ']')) {
      indent -= indentStep;
      buffer.write('\n${' ' * indent}');
    }
    buffer.write(char);
    if (char == '"' && lastChar != r'\') insideString = !insideString;
    if (!insideString) {
      if (char == '{' || char == '[') {
        indent += indentStep;
        buffer.write('\n${' ' * indent}');
      } else if (char == ',') {
        buffer.write('\n${' ' * indent}');
      }
    }
    lastChar = char;
  }

  return buffer.toString();
}

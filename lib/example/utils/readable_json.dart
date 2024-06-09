import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

void showJsonDialog(BuildContext context) {
  final form = context.read<WoForm>();
  final values = context.read<WoFormValuesCubit>().state;
  showActionDialog(
    pageContext: context,
    title: 'JSON',
    actionText: 'Ok',
    onAction: context.read<WoFormStatusCubit>().setIdle,
    content: Text(readableJson(form.getSubmittedJson(values))),
  );
}

String readableJson(Map<String, dynamic> json, {int indentStep = 4}) {
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

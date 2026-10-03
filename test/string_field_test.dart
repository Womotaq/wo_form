import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  testWidgets('a value changed elsewhere keeps a cursor, at its end', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: WoForm(children: const [StringInput(id: 'title')]),
        ),
      ),
    );
    await tester.enterText(find.byType(EditableText), 'hello');
    await tester.pump();

    tester
        .element(find.byType(EditableText))
        .read<WoFormValuesCubit>()
        .onValueChanged(path: '/title', value: 'bye');
    await tester.pump();

    final editable = tester.widget<EditableText>(find.byType(EditableText));
    expect(editable.controller.text, 'bye');
    expect(
      editable.controller.selection,
      const TextSelection.collapsed(offset: 3),
    );
    expect(editable.focusNode.hasFocus, isTrue);
  });
}

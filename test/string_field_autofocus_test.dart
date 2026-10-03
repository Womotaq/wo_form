import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wo_form/wo_form.dart';

WoFormValuesCubit _cubit(WidgetTester tester) =>
    tester.element(find.byType(EditableText)).read<WoFormValuesCubit>();

Future<void> _pumpForm(
  WidgetTester tester,
  WoFormAutofocus? autofocus,
) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: WoForm(
          children: [
            StringInput(
              id: 'name',
              uiSettings: StringInputUiSettings(autofocus: autofocus),
            ),
          ],
        ),
      ),
    ),
  );
  await tester.pump();
}

void main() {
  testWidgets('untouched autofocused empty field keeps the form pure', (
    tester,
  ) async {
    await _pumpForm(tester, WoFormAutofocus.yes);

    expect(_cubit(tester).isPure, isTrue);
  });

  testWidgets('untouched non-autofocused empty field keeps the form pure', (
    tester,
  ) async {
    await _pumpForm(tester, WoFormAutofocus.no);

    expect(_cubit(tester).isPure, isTrue);
  });

  testWidgets('typing makes the form impure', (tester) async {
    await _pumpForm(tester, WoFormAutofocus.yes);

    await tester.enterText(find.byType(EditableText), 'abc');
    await tester.pump();

    expect(_cubit(tester).isPure, isFalse);
    expect(_cubit(tester).state.get<String>('#name'), 'abc');
  });
}

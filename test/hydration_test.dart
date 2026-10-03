import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wo_form/wo_form.dart';

enum _Category { a, b }

class _MemoryStorage implements Storage {
  final Map<String, dynamic> data = {};

  @override
  dynamic read(String key) {
    final raw = data[key];
    return raw == null ? null : jsonDecode(raw as String);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    data[key] = jsonEncode(value);
  }

  @override
  Future<void> delete(String key) async => data.remove(key);

  @override
  Future<void> clear() async => data.clear();

  @override
  Future<void> close() async {}
}

WoForm _form({bool withCategory = false}) => WoForm(
  hydratationId: 'draft',
  children: [
    const StringInput(id: 'title'),
    if (withCategory)
      const SelectInput<_Category>(
        id: 'category',
        maxCount: 1,
        availibleValues: _Category.values,
      ),
  ],
);

Future<void> _pump(WidgetTester tester, Widget child) =>
    tester.pumpWidget(MaterialApp(home: Scaffold(body: child)));

WoFormValuesCubit _cubit(WidgetTester tester) => tester
    .element(find.byType(BlocListener<WoFormStatusCubit, WoFormStatus>).first)
    .read<WoFormValuesCubit>();

Future<void> _reopen(WidgetTester tester, {bool withCategory = false}) async {
  await _pump(tester, const SizedBox());
  await tester.pump();
  await _pump(tester, _form(withCategory: withCategory));
  await tester.pump();
}

String _titleText(WidgetTester tester) =>
    tester.widget<EditableText>(find.byType(EditableText)).controller.text;

void main() {
  late _MemoryStorage storage;

  setUp(() {
    storage = _MemoryStorage();
    HydratedBloc.storage = storage;
  });

  testWidgets('a field still focused at close is restored', (tester) async {
    await _pump(tester, _form());
    await tester.pump();
    await tester.enterText(find.byType(EditableText), 'hello');
    await tester.pump();

    await _reopen(tester);

    expect(_titleText(tester), 'hello');
  });

  testWidgets('a field left before close is restored', (tester) async {
    await _pump(tester, _form());
    await tester.pump();
    await tester.enterText(find.byType(EditableText), 'hello');
    await tester.pump();
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pump();

    await _reopen(tester);

    expect(_titleText(tester), 'hello');
  });

  testWidgets('a value that cannot be encoded does not stop the others', (
    tester,
  ) async {
    await _pump(tester, _form(withCategory: true));
    await tester.pump();
    await tester.enterText(find.byType(EditableText), 'hello');
    await tester.pump();

    final emitted = <WoFormValues>[];
    final subscription = _cubit(tester).stream.listen(emitted.add);
    addTearDown(subscription.cancel);
    _cubit(tester).onValueChanged(path: '/category', value: [_Category.a]);
    await tester.pump();

    expect(emitted, isNotEmpty, reason: 'the UI must still be notified');
    expect(_cubit(tester).state.get<List<_Category>>('#category'), [
      _Category.a,
    ]);

    final saved = jsonDecode(storage.data['draft-WoFormValuesCubit'] as String)
        as Map<String, dynamic>;
    expect(saved['/title'], 'hello');
    expect(saved.containsKey('/category'), isFalse);

    await _reopen(tester, withCategory: true);

    expect(_titleText(tester), 'hello');
  });
}

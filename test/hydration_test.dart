import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wo_form/wo_form.dart';

enum _Category { a, b }

/// Neither an enum nor JSON-encodable, so it can't be saved without a toJsonT.
class _Opaque {
  const _Opaque();
}

/// The media field reads it while building, so only rendering is faked.
class _FakeMediaService implements MediaService {
  @override
  Widget mediaWidgetBuilder({
    required Media media,
    BoxFit? fit,
    Alignment alignment = Alignment.center,
    String? package,
    bool circle = false,
    Key? key,
  }) => SizedBox.square(key: key, dimension: 10);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Widget _withMediaService(Widget child) =>
    RepositoryProvider<MediaService>.value(
      value: _FakeMediaService(),
      child: child,
    );

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

  /// Every key deleted, in order.
  final List<String> deletedKeys = [];

  @override
  Future<void> delete(String key) async {
    deletedKeys.add(key);
    data.remove(key);
  }

  @override
  Future<void> clear() async => data.clear();

  @override
  Future<void> close() async {}
}

WoForm _form({
  bool withCategory = false,
  PersistenceSettings persistence = const PersistenceSettings(key: 'draft'),
}) => WoForm(
  persistenceSettings: persistence,
  children: [
    const StringInput(id: 'title'),
    if (withCategory)
      const SelectInput<_Opaque>(
        id: 'category',
        maxCount: 1,
        availibleValues: [_Opaque()],
      ),
  ],
);

Future<void> _pump(WidgetTester tester, Widget child) =>
    tester.pumpWidget(MaterialApp(home: Scaffold(body: child)));

BuildContext _formContext(WidgetTester tester) => tester.element(
  find.byType(BlocListener<WoFormStatusCubit, WoFormStatus>).first,
);

WoFormValuesCubit _cubit(WidgetTester tester) =>
    _formContext(tester).read<WoFormValuesCubit>();

Future<void> _reopen(
  WidgetTester tester, {
  bool withCategory = false,
  PersistenceSettings persistence = const PersistenceSettings(key: 'draft'),
}) async {
  await _pump(tester, const SizedBox());
  await tester.pump();
  await _pump(
    tester,
    _form(withCategory: withCategory, persistence: persistence),
  );
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
    _cubit(tester).onValueChanged(path: '/category', value: [const _Opaque()]);
    await tester.pump();

    expect(emitted, isNotEmpty, reason: 'the UI must still be notified');
    expect(_cubit(tester).state.get<List<_Opaque>>('#category'), [
      const _Opaque(),
    ]);

    final saved =
        jsonDecode(storage.data['draft-WoFormValuesCubit'] as String)
            as Map<String, dynamic>;
    expect(saved['/title'], 'hello');
    expect(saved.containsKey('/category'), isFalse);

    await _reopen(tester, withCategory: true);

    expect(_titleText(tester), 'hello');
  });

  testWidgets('a successful submit clears the saved values by default', (
    tester,
  ) async {
    await _pump(tester, _form());
    await tester.pump();
    await tester.enterText(find.byType(EditableText), 'hello');
    await tester.pump();

    await _cubit(tester).submit(_formContext(tester));
    await tester.pump();

    expect(storage.data.containsKey('draft-WoFormValuesCubit'), isFalse);
    expect(storage.data.containsKey('draft-WoFormStatusCubit'), isFalse);
    expect(storage.data.containsKey('draft-WoFormLockCubit'), isFalse);

    // Closing the submitted form must not save the values again.
    await _pump(tester, const SizedBox());
    await tester.pump();
    expect(storage.data.containsKey('draft-WoFormValuesCubit'), isFalse);

    await _reopen(tester);

    expect(_titleText(tester), isEmpty);
  });

  testWidgets('clearOnSubmit: false keeps the saved values after a submit', (
    tester,
  ) async {
    const persistence = PersistenceSettings(key: 'draft', clearOnSubmit: false);
    await _pump(tester, _form(persistence: persistence));
    await tester.pump();
    await tester.enterText(find.byType(EditableText), 'hello');
    await tester.pump();

    await _cubit(tester).submit(_formContext(tester));
    await tester.pump();

    expect(storage.data.containsKey('draft-WoFormValuesCubit'), isTrue);

    await _reopen(tester, persistence: persistence);

    expect(_titleText(tester), 'hello');
  });

  testWidgets('a select with toJsonT and fromJsonT is saved and restored', (
    tester,
  ) async {
    WoForm categoryForm() => WoForm(
      persistenceSettings: const PersistenceSettings(key: 'draft'),
      children: [
        SelectInput<_Category>(
          id: 'category',
          maxCount: 1,
          availibleValues: _Category.values,
          toJsonT: (_Category value) => value.name,
          fromJsonT: (Object? json) => _Category.values.byName(json! as String),
        ),
      ],
    );

    await _pump(tester, categoryForm());
    await tester.pump();
    _cubit(tester).onValueChanged(path: '/category', value: [_Category.b]);
    await tester.pump();

    final saved =
        jsonDecode(storage.data['draft-WoFormValuesCubit'] as String)
            as Map<String, dynamic>;
    expect(saved['/category'], ['b']);

    await _pump(tester, const SizedBox());
    await tester.pump();
    await _pump(tester, categoryForm());
    await tester.pump();

    expect(_cubit(tester).state.get<List<_Category>>('#category'), [
      _Category.b,
    ]);
  });

  testWidgets('media urls are saved and restored as Media', (tester) async {
    WoForm mediaForm() => WoForm(
      persistenceSettings: const PersistenceSettings(key: 'draft'),
      children: const [
        MediaInput(
          id: 'medias',
          maxCount: 3,
          importSettings: MediaImportSettings(
            type: MediaType.image,
            methods: [],
          ),
        ),
      ],
    );

    await _pump(tester, _withMediaService(mediaForm()));
    await tester.pump();
    _cubit(tester).onValueChanged(
      path: '/medias',
      value: [
        Media.url(url: 'https://example.com/a.jpg'),
        Media.file(file: XFile('/tmp/local.jpg')),
      ],
    );
    await tester.pump();

    final saved =
        jsonDecode(storage.data['draft-WoFormValuesCubit'] as String)
            as Map<String, dynamic>;
    expect(saved['/medias'], const [
      {'url': 'https://example.com/a.jpg'},
    ]);

    await _pump(tester, const SizedBox());
    await tester.pump();
    await _pump(tester, _withMediaService(mediaForm()));
    await tester.pump();

    final restored = _cubit(tester).state.get<List<Media>>('#medias');
    expect(restored, isNotNull);
    expect(restored!.single, isA<MediaUrl>());
    expect((restored.single as MediaUrl).url, 'https://example.com/a.jpg');
  });

  testWidgets('a draft left on a later step opens on the first one', (
    tester,
  ) async {
    storage.data['draft-WoFormValuesCubit'] = jsonEncode({
      '/first/title': 'hello',
      '/__wo_reserved_currrent_step_path': '/second',
      '/__wo_reserved_current_step_index': 1,
      '/__wo_reserved_submit_path': '/second',
    });

    await _pump(
      tester,
      WoForm(
        persistenceSettings: const PersistenceSettings(key: 'draft'),
        uiSettings: const WoFormUiSettings(
          multistepSettings: MultistepSettings(),
        ),
        children: const [
          InputsNode(
            id: 'first',
            children: [StringInput(id: 'title')],
          ),
          InputsNode(
            id: 'second',
            children: [StringInput(id: 'body')],
          ),
        ],
      ),
    );
    await tester.pump();

    final values = _cubit(tester).state;
    expect(values.currentStepIndex, 0);
    expect(values.currentStepId, 'first');
    expect(values.submitPath, '/first');
    expect(values['/first/title'], 'hello');
  });

  group('WoFormValues.isEmptyValue', () {
    test('counts null, blank strings and collections of them as empty', () {
      for (final value in [
        null,
        '',
        ' \n',
        <Object>[],
        ['', null],
        {'a': ' ', 'b': <Object>[]},
      ]) {
        expect(WoFormValues.isEmptyValue(value), isTrue, reason: '$value');
      }
    });

    test('counts any other value as content', () {
      for (final value in [
        'a',
        false,
        0,
        ['', 'a'],
        {'a': false},
      ]) {
        expect(WoFormValues.isEmptyValue(value), isFalse, reason: '$value');
      }
    });
  });

  group('empty drafts', () {
    testWidgets('blank text counts as unchanged, and saves nothing', (
      tester,
    ) async {
      await _pump(tester, _form());
      await tester.pump();

      await tester.enterText(find.byType(EditableText), '   ');
      await tester.pump();

      expect(_cubit(tester).isPure, isTrue);
      expect(WoForm.hasSavedDraft('draft'), isFalse);
    });

    testWidgets('a saved draft is deleted once, when it becomes empty', (
      tester,
    ) async {
      await _pump(tester, _form());
      await tester.pump();
      await tester.enterText(find.byType(EditableText), 'hello');
      await tester.pump();
      storage.deletedKeys.clear();

      await tester.enterText(find.byType(EditableText), '');
      await tester.pump();
      await tester.enterText(find.byType(EditableText), ' ');
      await tester.pump();

      expect(
        storage.deletedKeys.where((key) => key == 'draft-WoFormValuesCubit'),
        hasLength(1),
      );
    });

    testWidgets('the saved status and locks go with the values', (
      tester,
    ) async {
      await _pump(tester, _form());
      await tester.pump();
      await tester.enterText(find.byType(EditableText), 'hello');
      await tester.pump();
      storage.data['draft-WoFormStatusCubit'] = jsonEncode({'any': 'status'});
      storage.data['draft-WoFormLockCubit'] = jsonEncode({'locks': <String>[]});

      await tester.enterText(find.byType(EditableText), '');
      await tester.pump();

      expect(
        storage.data.keys.where((key) => key.startsWith('draft-')),
        isEmpty,
      );
    });

    testWidgets('values saved as the form opened, by an older version, are '
        'deleted when it opens again', (tester) async {
      storage.data['draft-WoFormValuesCubit'] = jsonEncode({'/title': null});

      await _pump(tester, _form());
      await tester.pump();

      expect(storage.data.containsKey('draft-WoFormValuesCubit'), isFalse);
    });

    testWidgets('a form left untouched saves no draft', (tester) async {
      await _pump(tester, _form());
      await tester.pump();

      expect(WoForm.hasSavedDraft('draft'), isFalse);
      expect(_cubit(tester).hasSavedDraft, isFalse);
    });

    testWidgets('typing saves a draft, erasing it all deletes it', (
      tester,
    ) async {
      await _pump(tester, _form());
      await tester.pump();

      await tester.enterText(find.byType(EditableText), 'hello');
      await tester.pump();
      expect(WoForm.hasSavedDraft('draft'), isTrue);
      expect(_cubit(tester).hasSavedDraft, isTrue);

      await tester.enterText(find.byType(EditableText), '');
      await tester.pump();
      expect(WoForm.hasSavedDraft('draft'), isFalse);
      expect(_cubit(tester).hasSavedDraft, isFalse);
    });

    testWidgets('an erased field counts as unchanged', (tester) async {
      await _pump(tester, _form());
      await tester.pump();

      await tester.enterText(find.byType(EditableText), 'hello');
      await tester.pump();
      expect(_cubit(tester).isPure, isFalse);

      await tester.enterText(find.byType(EditableText), '');
      await tester.pump();
      expect(_cubit(tester).isPure, isTrue);
    });
  });

  group('hasUnsavedChanges', () {
    WoForm mediaForm({PersistenceSettings? persistence}) => WoForm(
      persistenceSettings: persistence,
      children: const [
        StringInput(id: 'title'),
        MediaInput(
          id: 'medias',
          maxCount: 3,
          importSettings: MediaImportSettings(
            type: MediaType.image,
            methods: [],
          ),
        ),
      ],
    );

    testWidgets('without persistence, any change would be lost', (
      tester,
    ) async {
      await _pump(tester, _withMediaService(mediaForm()));
      await tester.pump();
      expect(_cubit(tester).hasUnsavedChanges, isFalse);

      await tester.enterText(find.byType(EditableText), 'hello');
      await tester.pump();
      expect(_cubit(tester).hasUnsavedChanges, isTrue);
    });

    testWidgets('with persistence, only what the draft cannot hold', (
      tester,
    ) async {
      await _pump(
        tester,
        _withMediaService(
          mediaForm(persistence: const PersistenceSettings(key: 'draft')),
        ),
      );
      await tester.pump();

      await tester.enterText(find.byType(EditableText), 'hello');
      _cubit(tester).onValueChanged(
        path: '/medias',
        value: [Media.url(url: 'https://example.com/a.jpg')],
      );
      await tester.pump();
      expect(_cubit(tester).hasUnsavedChanges, isFalse);

      _cubit(tester).onValueChanged(
        path: '/medias',
        value: [Media.file(file: XFile('/tmp/local.jpg'))],
      );
      await tester.pump();
      expect(_cubit(tester).hasUnsavedChanges, isTrue);
    });
  });

  group('WoForm.readSavedValues', () {
    testWidgets('reads what a form saved, by path', (tester) async {
      await _pump(tester, _form());
      await tester.pump();
      await tester.enterText(find.byType(EditableText), 'hello');
      await tester.pump();

      final values = WoForm.readSavedValues('draft');

      expect(values?['/title'], 'hello');
      expect(values!.keys.where((key) => key.startsWith('/__wo')), isEmpty);
    });

    test('is null when nothing was saved under that key', () {
      expect(WoForm.readSavedValues('draft'), isNull);
    });

    test('is null without any storage', () {
      HydratedBloc.storage = _BrokenStorage();
      expect(WoForm.readSavedValues('draft'), isNull);
    });
  });
}

class _BrokenStorage extends _MemoryStorage {
  @override
  dynamic read(String key) => throw StateError('broken');
}

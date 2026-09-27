import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

final _metCondition = Condition.value(path: '/flag', isEqualTo: true);
const _metValues = WoFormValues({'/flag': true});
const _unmetValues = WoFormValues({'/flag': false});

const StringInput _requiredString = StringInput(id: 'name', isRequired: true);

void main() {
  group('RootNode', () {
    const root = WoFormNode.root(
      children: [
        StringInput(id: 'name', isRequired: true),
        WoFormNode.inputs(
          id: 'group',
          children: [StringInput(id: 'nickname', isRequired: true)],
        ),
      ],
    );

    test('getErrors aggregates every descendant error', () {
      final errors = root.getErrors(
        values: const WoFormValues({}),
        parentPath: '',
      );

      expect(errors.map((e) => e.path), ['/name', '/group/nickname']);
    });

    test('getErrors returns nothing when recursive is false', () {
      final errors = root.getErrors(
        values: const WoFormValues({}),
        parentPath: '',
        recursive: false,
      );

      expect(errors, isEmpty);
    });

    test('getChild finds a direct child by id', () {
      final child = root.getChild(
        path: '/name',
        parentPath: '',
        values: const WoFormValues({}),
      );

      expect(child, isA<StringInput>());
    });

    test('getChild finds a nested descendant by id', () {
      final child = root.getChild(
        path: '/group/nickname',
        parentPath: '',
        values: const WoFormValues({}),
      );

      expect((child! as StringInput).id, 'nickname');
    });

    test('getChild returns null for an unknown id', () {
      expect(
        root.getChild(
          path: '/unknown',
          parentPath: '',
          values: const WoFormValues({}),
        ),
        isNull,
      );
    });

    test('getInitialValues merges every descendant, skipping root‘s id', () {
      const rootWithDefaults = WoFormNode.root(
        children: [
          StringInput(id: 'name', initialValue: 'John'),
          WoFormNode.inputs(
            id: 'group',
            children: [StringInput(id: 'nickname')],
          ),
        ],
      );

      expect(rootWithDefaults.getInitialValues(parentPath: ''), {
        '/name': 'John',
        '/group/nickname': null,
      });
    });
  });

  group('ConditionnalNode', () {
    final node = WoFormNode.conditionnal(
      id: 'conditionnal',
      condition: _metCondition,
      child: _requiredString,
    );

    test('getErrors is empty when the condition is not met', () {
      expect(
        node.getErrors(values: _unmetValues, parentPath: ''),
        isEmpty,
      );
    });

    test('getErrors delegates to the child when the condition is met', () {
      final errors = node.getErrors(values: _metValues, parentPath: '');

      expect(errors.single.path, '/conditionnal/name');
    });

    test('getChild is null when the condition is not met', () {
      expect(
        node.getChild(
          path: '/name',
          parentPath: '',
          values: _unmetValues,
        ),
        isNull,
      );
    });

    test('getChild delegates to the child when the condition is met', () {
      // path is relative to this node's own children, not prefixed with
      // this node's own id — that segment is consumed by the caller/parent.
      expect(
        node.getChild(
          path: '/name',
          parentPath: '',
          values: _metValues,
        ),
        isA<StringInput>(),
      );
    });

    test('getExportKey is null when the condition is not met', () {
      expect(
        node.getExportKey(values: _unmetValues, parentPath: ''),
        isNull,
      );
    });

    test('getInitialValues is empty unless conditionIsInitiallyMet', () {
      expect(node.getInitialValues(parentPath: ''), isEmpty);

      final initiallyMet = WoFormNode.conditionnal(
        id: 'conditionnal',
        condition: _metCondition,
        conditionIsInitiallyMet: true,
        child: const StringInput(id: 'name', initialValue: 'John'),
      );
      expect(initiallyMet.getInitialValues(parentPath: ''), {
        '/conditionnal/name': 'John',
      });
    });
  });

  group('LockerNode delegates every method straight to its child', () {
    const lockedNode = WoFormNode.locker(
      id: 'locker',
      isLocked: true,
      child: _requiredString,
    );
    const unlockedNode = WoFormNode.locker(
      id: 'locker',
      isLocked: false,
      child: _requiredString,
    );

    test('getErrors is unaffected by isLocked', () {
      const values = WoFormValues({});

      expect(
        lockedNode.getErrors(values: values, parentPath: '').single.path,
        '/locker/name',
      );
      expect(
        unlockedNode.getErrors(values: values, parentPath: '').single.path,
        '/locker/name',
      );
    });

    test('getChild is unaffected by isLocked', () {
      expect(
        lockedNode.getChild(
          path: '/name',
          parentPath: '',
          values: const WoFormValues({}),
        ),
        isA<StringInput>(),
      );
    });
  });

  group('DynamicInputsNode', () {
    const node = WoFormNode.dynamicInputs(id: 'items', minCount: 1);

    test('getErrors reports minBound under minCount children', () {
      final errors = node.getErrors(
        values: const WoFormValues({}),
        parentPath: '',
      );

      expect(errors.single, isA<MinBoundInputError>());
    });

    test('getErrors is empty once minCount is satisfied', () {
      const values = WoFormValues({
        '/items': [_requiredString],
      });

      final errors = node.getErrors(values: values, parentPath: '');

      // the child itself now also reports its own required-empty error
      expect(errors.single.path, '/items/name');
    });

    test('getExportKey is the node id by default', () {
      expect(
        node.getExportKey(values: const WoFormValues({}), parentPath: ''),
        'items',
      );
    });

    test('getExportKey is null for mergeWithParent', () {
      const mergingNode = WoFormNode.dynamicInputs(
        id: 'items',
        exportSettings: ExportSettings(type: ExportType.mergeWithParent),
      );

      expect(
        mergingNode.getExportKey(
          values: const WoFormValues({}),
          parentPath: '',
        ),
        isNull,
      );
    });
  });
}

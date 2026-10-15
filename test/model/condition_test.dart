import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

const _focusedPathKey = '/__wo_reserved_focused_path';

void main() {
  group('Condition.value — isEqualTo/isNotEqualTo', () {
    test('isEqualTo matches scalar values', () {
      const values = WoFormValues({'/name': 'John'});
      final condition = Condition.value(path: '/name', isEqualTo: 'John');

      expect(condition.isMet(values), isTrue);
      expect(
        Condition.value(path: '/name', isEqualTo: 'Jane').isMet(values),
        isFalse,
      );
    });

    test('isEqualTo compares lists by content, not identity', () {
      const values = WoFormValues({
        '/tags': ['a', 'b'],
      });
      final condition = Condition.value(
        path: '/tags',
        isEqualTo: ['a', 'b'],
      );

      expect(condition.isMet(values), isTrue);
    });

    test('isNotEqualTo is the inverse of isEqualTo', () {
      const values = WoFormValues({'/name': 'John'});

      expect(
        Condition.value(path: '/name', isNotEqualTo: 'Jane').isMet(values),
        isTrue,
      );
      expect(
        Condition.value(path: '/name', isNotEqualTo: 'John').isMet(values),
        isFalse,
      );
    });
  });

  group('Condition.value — isNull', () {
    test('isNull: true matches a missing path', () {
      const values = WoFormValues({});
      expect(
        Condition.value(path: '/name', isNull: true).isMet(values),
        isTrue,
      );
    });

    test('isNull: false matches a present path', () {
      const values = WoFormValues({'/name': 'John'});
      expect(
        Condition.value(path: '/name', isNull: false).isMet(values),
        isTrue,
      );
      expect(
        Condition.value(path: '/name', isNull: true).isMet(values),
        isFalse,
      );
    });
  });

  group('Condition.value — isFocused', () {
    test('is true only for the currently focused path', () {
      const values = WoFormValues({_focusedPathKey: '/name'});

      expect(
        Condition.value(path: '/name', isFocused: true).isMet(values),
        isTrue,
      );
      expect(
        Condition.value(path: '/other', isFocused: true).isMet(values),
        isFalse,
      );
    });
  });

  group('Condition.value — matchesRegex', () {
    test('matches a string value against the pattern', () {
      const values = WoFormValues({'/email': 'a@b.com'});
      expect(
        Condition.value(
          path: '/email',
          matchesRegex: r'^[^@]+@[^@]+$',
        ).isMet(values),
        isTrue,
      );
    });

    test('is false for a non-matching or non-string value', () {
      expect(
        Condition.value(
          path: '/email',
          matchesRegex: r'^[^@]+@[^@]+$',
        ).isMet(const WoFormValues({'/email': 'not-an-email'})),
        isFalse,
      );
      expect(
        Condition.value(
          path: '/email',
          matchesRegex: r'^[^@]+@[^@]+$',
        ).isMet(const WoFormValues({'/email': 42})),
        isFalse,
      );
    });
  });

  group('Condition.value — comparisons', () {
    const values = WoFormValues({'/age': 30});

    test('isLessThan / isLessThanOrEqualTo', () {
      expect(
        Condition.value(path: '/age', isLessThan: 31).isMet(values),
        isTrue,
      );
      expect(
        Condition.value(path: '/age', isLessThan: 30).isMet(values),
        isFalse,
      );
      expect(
        Condition.value(path: '/age', isLessThanOrEqualTo: 30).isMet(values),
        isTrue,
      );
    });

    test('isGreaterThan / isGreaterThanOrEqualTo', () {
      expect(
        Condition.value(path: '/age', isGreaterThan: 29).isMet(values),
        isTrue,
      );
      expect(
        Condition.value(path: '/age', isGreaterThan: 30).isMet(values),
        isFalse,
      );
      expect(
        Condition.value(
          path: '/age',
          isGreaterThanOrEqualTo: 30,
        ).isMet(values),
        isTrue,
      );
    });

    test('throws when comparing non-Comparable values', () {
      const nonComparable = WoFormValues({
        '/age': Object(),
      });
      expect(
        () => Condition.value(
          path: '/age',
          isGreaterThan: 30,
        ).isMet(nonComparable),
        throwsA(isA<TypeError>()),
      );
    });
  });

  group('Condition.and/or/not', () {
    const values = WoFormValues({'/age': 30, '/name': 'John'});

    Condition ageIs30() => Condition.value(path: '/age', isEqualTo: 30);
    Condition nameIsJane() => Condition.value(path: '/name', isEqualTo: 'Jane');

    test('and is met only when every condition is met', () {
      expect(Condition.and([ageIs30()]).isMet(values), isTrue);
      expect(Condition.and([ageIs30(), nameIsJane()]).isMet(values), isFalse);
    });

    test('or is met when any condition is met', () {
      expect(Condition.or([nameIsJane(), ageIs30()]).isMet(values), isTrue);
      expect(Condition.or([nameIsJane()]).isMet(values), isFalse);
    });

    test('not negates the wrapped condition', () {
      expect(Condition.not(ageIs30()).isMet(values), isFalse);
      expect(Condition.not(nameIsJane()).isMet(values), isTrue);
    });

    test('conditions can be nested', () {
      final condition = Condition.and([
        ageIs30(),
        Condition.or([nameIsJane(), Condition.not(nameIsJane())]),
      ]);

      expect(condition.isMet(values), isTrue);
    });
  });
}

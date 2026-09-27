import 'package:test/test.dart';
import 'package:wo_form/src/utils/extensions.dart';

void main() {
  group('StringX.parentPath', () {
    test('drops the last path segment', () {
      expect('/group/name'.parentPath, '/group');
      expect('/name'.parentPath, '');
    });
  });

  group('StringX.capitalized', () {
    test('uppercases only the first character', () {
      expect('hello'.capitalized(), 'Hello');
      expect('Hello'.capitalized(), 'Hello');
    });
  });

  group('generateUid', () {
    test('defaults to length 6 and is random', () {
      final first = generateUid();
      final second = generateUid();

      expect(first.length, 6);
      expect(first, isNot(second));
    });

    test('respects a custom length', () {
      expect(generateUid(length: 12).length, 12);
    });
  });
}

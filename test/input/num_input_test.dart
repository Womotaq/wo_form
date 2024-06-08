import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  test('NumInput : minBound <= maxBound', () {
    expect(
      () => NumInput(id: 'id', minBound: 5, maxBound: 3),
      throwsA(const TypeMatcher<AssertionError>()),
    );
  });
}

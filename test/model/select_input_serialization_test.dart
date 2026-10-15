import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  group('SelectInput.fromJson — type inference from availibleValues', () {
    test('a num example infers SelectInput<num>', () {
      final input = SelectInput.fromJson({
        'id': 'id',
        'maxCount': 1,
        'availibleValues': [1, 2, 3],
      });

      expect(input, isA<SelectInput<num>>());
      expect(input.availibleValues, [1, 2, 3]);
    });

    test('a bool example infers SelectInput<bool>', () {
      final input = SelectInput.fromJson({
        'id': 'id',
        'maxCount': 1,
        'availibleValues': [true, false],
      });

      expect(input, isA<SelectInput<bool>>());
    });

    test('throws when availibleValues is missing or empty', () {
      expect(
        () => SelectInput.fromJson({'id': 'id', 'maxCount': 1}),
        throwsArgumentError,
      );
      expect(
        () => SelectInput.fromJson({
          'id': 'id',
          'maxCount': 1,
          'availibleValues': <dynamic>[],
        }),
        throwsArgumentError,
      );
    });
  });

  group('SelectInput.toJson', () {
    test('round-trips id, counts, values and idsOfAvailibleValues', () {
      const input = SelectInput<String>(
        id: 'city',
        minCount: 1,
        maxCount: 2,
        initialValues: ['Paris'],
        availibleValues: ['Paris', 'Tokyo'],
        idsOfAvailibleValues: ['paris', 'tokyo'],
        submitFormOnSelect: true,
      );

      final restored = SelectInput.fromJson(input.toJson());

      expect(restored, input);
    });
  });
}

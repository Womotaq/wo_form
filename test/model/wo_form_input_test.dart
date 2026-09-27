import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  group('BooleanInput.getError', () {
    test('required and unchecked reports empty', () {
      const input = BooleanInput(id: 'accept', isRequired: true);

      expect(input.getError(null, parentPath: ''), isA<EmptyInputError>());
      expect(input.getError(false, parentPath: ''), isA<EmptyInputError>());
      expect(input.getError(true, parentPath: ''), isNull);
    });

    test('not required always passes', () {
      const input = BooleanInput(id: 'accept');
      expect(input.getError(null, parentPath: ''), isNull);
    });

    test('a custom error takes priority', () {
      final input = BooleanInput(
        id: 'accept',
        getCustomError: (value, path) =>
            WoFormInputError.custom(path: path, message: 'nope'),
      );

      expect(
        input.getError(true, parentPath: ''),
        isA<CustomInputError>(),
      );
    });
  });

  group('NumInput.getError', () {
    test('required and null reports empty', () {
      const input = NumInput(id: 'age', isRequired: true);
      expect(input.getError(null, parentPath: ''), isA<EmptyInputError>());
    });

    test('below minBound reports minBound', () {
      const input = NumInput(id: 'age', minBound: 18);
      expect(input.getError(10, parentPath: ''), isA<MinBoundInputError>());
      expect(input.getError(18, parentPath: ''), isNull);
    });

    test('above maxBound reports maxBound', () {
      const input = NumInput(id: 'age', maxBound: 99);
      expect(input.getError(100, parentPath: ''), isA<MaxBoundInputError>());
      expect(input.getError(99, parentPath: ''), isNull);
    });
  });

  group('StringInput.getError', () {
    test('required and empty reports empty', () {
      const input = StringInput(id: 'name', isRequired: true);
      expect(input.getError(null, parentPath: ''), isA<EmptyInputError>());
      expect(input.getError('', parentPath: ''), isA<EmptyInputError>());
    });

    test('regexPattern mismatch reports a custom error', () {
      const input = StringInput(
        id: 'email',
        regexPattern: r'^[^@]+@[^@]+$',
      );
      expect(
        input.getError('not-an-email', parentPath: ''),
        isA<CustomInputError>(),
      );
      expect(input.getError('a@b.com', parentPath: ''), isNull);
    });

    test('maxLength overflow reports maxBound', () {
      const input = StringInput(id: 'name', maxLength: 3);
      expect(input.getError('abcd', parentPath: ''), isA<MaxBoundInputError>());
      expect(input.getError('abc', parentPath: ''), isNull);
    });

    test('regexPattern is only checked once the value is non-empty', () {
      const input = StringInput(
        id: 'email',
        regexPattern: r'^[^@]+@[^@]+$',
      );
      expect(input.getError('', parentPath: ''), isNull);
    });
  });

  group('DateTimeInput.getError', () {
    test('required and null reports empty', () {
      const input = DateTimeInput(id: 'date', isRequired: true);
      expect(input.getError(null, parentPath: ''), isA<EmptyInputError>());
    });

    test('before minDate reports minBound', () {
      final input = DateTimeInput(
        id: 'date',
        minDate: FlexibleDateTime.fixed(date: DateTime(2024)),
      );
      expect(
        input.getError(DateTime(2023), parentPath: ''),
        isA<MinBoundInputError>(),
      );
      expect(input.getError(DateTime(2024), parentPath: ''), isNull);
    });

    test('after maxDate (by day, ignoring time) reports maxBound', () {
      final input = DateTimeInput(
        id: 'date',
        maxDate: FlexibleDateTime.fixed(date: DateTime(2024)),
      );
      // Same day but later in the day still passes, since maxDate compares
      // by day only.
      expect(
        input.getError(DateTime(2024, 1, 1, 23), parentPath: ''),
        isNull,
      );
      expect(
        input.getError(DateTime(2024, 1, 2), parentPath: ''),
        isA<MaxBoundInputError>(),
      );
    });
  });

  group('DurationInput.getError', () {
    test('required and null reports empty', () {
      const input = DurationInput(id: 'duration', isRequired: true);
      expect(input.getError(null, parentPath: ''), isA<EmptyInputError>());
    });

    test('below minDuration reports minBound', () {
      const input = DurationInput(
        id: 'duration',
        minDuration: Duration(minutes: 10),
      );
      expect(
        input.getError(const Duration(minutes: 5), parentPath: ''),
        isA<MinBoundInputError>(),
      );
    });

    test('above maxDuration reports maxBound', () {
      const input = DurationInput(
        id: 'duration',
        maxDuration: Duration(minutes: 10),
      );
      expect(
        input.getError(const Duration(minutes: 15), parentPath: ''),
        isA<MaxBoundInputError>(),
      );
    });
  });

  const importSettings = MediaImportSettings(
    type: MediaType.image,
    methods: [MediaImportMethod.url()],
  );

  group('MediaInput.getError (via the shared list validator)', () {
    test('minCount == maxCount == 1 and empty reports empty', () {
      const input = MediaInput(
        id: 'photo',
        importSettings: importSettings,
        maxCount: 1,
        minCount: 1,
      );
      expect(input.getError(null, parentPath: ''), isA<EmptyInputError>());
    });

    test('fewer than minCount reports minBound', () {
      const input = MediaInput(
        id: 'photos',
        importSettings: importSettings,
        maxCount: null,
        minCount: 2,
      );
      expect(
        input.getError([Media.url(url: 'a')], parentPath: ''),
        isA<MinBoundInputError>(),
      );
    });

    test('more than maxCount reports maxBound', () {
      const input = MediaInput(
        id: 'photos',
        importSettings: importSettings,
        maxCount: 1,
      );
      expect(
        input.getError(
          [Media.url(url: 'a'), Media.url(url: 'b')],
          parentPath: '',
        ),
        isA<MaxBoundInputError>(),
      );
    });
  });

  group('SelectInput.getError (via the shared list validator)', () {
    test('a value outside availibleValues reports invalid', () {
      const input = SelectInput<String>(
        id: 'city',
        maxCount: 1,
        availibleValues: ['Paris', 'Tokyo'],
      );
      expect(
        input.getError(['Unknown'], parentPath: ''),
        isA<InvalidInputError>(),
      );
      expect(input.getError(['Paris'], parentPath: ''), isNull);
    });

    test('an id outside idsOfAvailibleValues reports invalid', () {
      const input = SelectInput<String>(
        id: 'city',
        maxCount: 1,
        availibleValues: ['Paris', 'Tokyo'],
        idsOfAvailibleValues: ['paris', 'tokyo'],
      );
      // idsOfAvailibleValues takes priority over availibleValues when set.
      expect(
        input.getError(['Paris'], parentPath: ''),
        isA<InvalidInputError>(),
      );
      expect(input.getError(['paris'], parentPath: ''), isNull);
    });
  });

  group('SelectInputX', () {
    const input = SelectInput<String>(
      id: 'city',
      maxCount: 1,
      availibleValues: ['Paris', 'Tokyo'],
      idsOfAvailibleValues: ['paris', 'tokyo'],
    );

    test('getAvailibleValue looks up the value for an id', () {
      expect(input.getAvailibleValue(id: 'tokyo'), 'Tokyo');
      expect(input.getAvailibleValue(id: 'unknown'), isNull);
    });

    test('getIdOfValue looks up the id for a value', () {
      expect(input.getIdOfValue(value: 'Tokyo'), 'tokyo');
      expect(input.getIdOfValue(value: 'Unknown'), isNull);
    });
  });
}

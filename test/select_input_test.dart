import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() async {
  group('serialization', () {
    test('BooleanInput', () {
      expect(
        const BooleanInput(
          id: 'id',
          isRequired: true,
          uiSettings: BooleanInputUiSettings(
            labelText: 'Label',
            controlType: BooleanFieldControlType.checkbox,
          ),
        ),
        BooleanInput.fromJson({
          'id': 'id',
          'isRequired': true,
          'uiSettings': {
            'labelText': 'Label',
            'controlType': 'checkbox',
          },
        }),
      );
    });

    test('SelectInput', () {
      expect(
        SelectInput.fromJson({
          'id': 'id',
          'maxCount': 1,
          'availibleValues': ['Paris', 'Tokyo', 'New York'],
        }),
        const SelectInput<String>(
          id: 'id',
          maxCount: 1,
          availibleValues: ['Paris', 'Tokyo', 'New York'],
        ),
      );
    });
  });

  group('uiSettings', () {
    test('fromJson', () {
      expect(
        SelectInputUiSettings<String>.fromJson({
          'labelText': 'labelText',
          'openChildren': 'modalBottomSheet',
        }),
        const SelectInputUiSettings<String>(
          labelText: 'labelText',
          openChildren: Push.modalBottomSheet,
        ),
      );
    });
  });
}

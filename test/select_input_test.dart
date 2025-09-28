import 'package:test/test.dart';
import 'package:wo_form/src/_export.dart';

void main() async {
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

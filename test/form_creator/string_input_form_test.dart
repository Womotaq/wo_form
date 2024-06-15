import 'package:test/test.dart';
import 'package:wo_form/example/form_creator/string_input_node.dart';
import 'package:wo_form/example/utils/regex_pattern.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  final stringInputNode = createStringInputNode(id: 'stringInput');
  final expectedInput = StringInput(
    id: 'name',
    isRequired: true,
    regexPattern: RegexPattern.username.value,
    uiSettings: StringInputUiSettings(
      invalidRegexMessage: FormLocalizationsFr()
          .regexPatternUnmatched(RegexPattern.username.name),
    ),
  );
  final expectedInputToJson = expectedInput.toJson();
  final values = stringInputNode.defaultValues(parentPath: '');
  values['id'] = expectedInput.id;
  values['defaultValue'] = expectedInput.defaultValue;
  values['isRequired'] = expectedInput.isRequired;
  values['regexPattern'] = [RegexPattern.username];
  values['invalidRegexMessage'] = expectedInput.uiSettings.invalidRegexMessage;

  test('StringInput Form : Step 0', () {
    expect(stringInputNode.getErrors(values, parentPath: '').isEmpty, true);
  });

  test('StringInput Form : Step 1', () {
    expect(
      stringInputNode.getSubmittedJson(values: values, parentPath: ''),
      expectedInputToJson,
    );
  });

  test('StringInput Form : Step 2', () {
    expect(
      WoForm.fromJson({
        'inputs': [expectedInputToJson],
      }),
      WoForm(
        inputs: [expectedInput],
      ),
    );
  });
}

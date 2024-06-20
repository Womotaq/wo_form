import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

enum ReportType {
  verbalAbuse,
  cheating,
  fairPlay,
  other;
}

class ReportForm {
  static const typeId = 'type';
  static const typePath = '/type';

  static const messageId = 'message';
  static const messagePath = '/message';

  static const blockId = 'block';
  static const blockPath = '/block';
}

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      exportSettings: const ExportSettings(
        exportedMetadata: {
          'reporterId': 'me',
          'reportedId': 'him',
        },
      ),
      uiSettings: const WoFormUiSettings(
        titleText: 'Signaler un utilisateur',
        submitMode: StandardSubmitMode(
          submitText: 'Envoyer',
          disableSubmitMode: DisableSubmitButton.whenInvalid,
        ),
      ),
      inputs: [
        SelectInput<ReportType>(
          id: ReportForm.typeId,
          availibleValues: ReportType.values,
          minCount: 1,
          maxCount: 1,
          uiSettings: SelectInputUiSettings(
            labelText: 'Motif',
            valueBuilder: (type) => Text(
              switch (type) {
                null => 'Sélectionnez un motif',
                ReportType.cheating => 'Triche',
                ReportType.fairPlay => 'Fair play',
                ReportType.verbalAbuse => 'Violence verbale',
                ReportType.other => 'Autre',
              },
            ),
          ),
        ),
        const StringInput(
          id: ReportForm.messageId,
          uiSettings: StringInputUiSettings(
            hintText: 'Dites-en plus !',
            textCapitalization: TextCapitalization.sentences,
            maxLines: 5,
          ),
        ),
        const BooleanInput(
          id: ReportForm.blockId,
          uiSettings: BooleanInputUiSettings(
            labelText: 'Bloquer cette raclure ?',
            controlType: BooleanFieldControlType.checkbox,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
      ],
      onSubmitting: (_, __) async {
        await Future<void>.delayed(const Duration(seconds: 3));
      },
      onSubmitSuccess: (context) {
        final form = context.read<WoForm>();
        final values = context.read<WoFormValuesCubit>().state;
        showDialog<void>(
          context: context,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: const Text("Ce json vient d'être envoyé."),
              content: Text(readableJson(form.export(values))),
              actions: [
                FilledButton.tonalIcon(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  label: const Text('Ok'),
                ),
              ],
            );
          },
        );
      },
    ).toPage();
  }
}

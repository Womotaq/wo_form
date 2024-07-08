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

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      uiSettings: const WoFormUiSettings(
        titleText: 'Signaler un utilisateur',
        submitMode: StandardSubmitMode(
          submitText: 'Envoyer',
          disableSubmitMode: DisableSubmitButton.whenInvalid,
        ),
      ),
      input: InputsNode(
        id: '#',
        exportSettings: const ExportSettings(
          metadata: {
            'reporterId': 'me',
            'reportedId': 'him',
          },
        ),
        inputs: [
          SelectInput<ReportType>(
            id: 'type',
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
            id: 'message',
            uiSettings: StringInputUiSettings(
              hintText: 'Dites-en plus !',
              textCapitalization: TextCapitalization.sentences,
              maxLines: 5,
            ),
          ),
          const BooleanInput(
            id: 'block',
            uiSettings: BooleanInputUiSettings(
              labelText: 'Bloquer cette raclure ?',
              controlType: BooleanFieldControlType.checkbox,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ],
      ),
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

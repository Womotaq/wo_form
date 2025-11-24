import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/readable_json.dart';

enum ReportType {
  verbalAbuse,
  cheating,
  fairPlay,
  other;
}

class ReportForm extends WoForm {
  ReportForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            titleText: 'Report a player',
            submitText: 'Send',
            submitButtonPosition: SubmitButtonPosition.bottomBar,
            disableSubmitMode: DisableSubmitButton.whenInvalid,
            presentation: context.read<PresentationCubit>().state,
          ),
          exportSettings: const ExportSettings(
            metadata: {
              'reporterId': 'me',
              'reportedId': 'him',
            },
          ),
          children: [
            SelectInput<ReportType>(
              id: 'type',
              availibleValues: ReportType.values,
              minCount: 1,
              maxCount: 1,
              uiSettings: SelectInputUiSettings(
                labelText: 'Motif',
                valueBuilder: (type) => Text(
                  switch (type) {
                    null => 'Select a reason',
                    ReportType.cheating => 'Cheating',
                    ReportType.fairPlay => 'Fair play',
                    ReportType.verbalAbuse => 'Verbal abuse',
                    ReportType.other => 'Other',
                  },
                ),
              ),
            ),
            const StringInput(
              id: 'message',
              uiSettings: StringInputUiSettings(
                hintText: 'Tell us more !',
                textCapitalization: TextCapitalization.sentences,
                maxLines: 5,
              ),
            ),
            const BooleanInput(
              id: 'block',
              uiSettings: BooleanInputUiSettings(
                labelText: 'Do you want to block this player ?',
                controlType: BooleanFieldControlType.checkbox,
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            WidgetNode(builder: (_) => const SizedBox(height: 64)),
          ],
          onSubmitting: (root, values) async {
            final json =
                await root.exportToMap(values: values, context: context);

            if (!context.mounted) {
              throw Exception("Context isn't mounted anymore");
            }

            await showDialog<void>(
              context: context,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: const Text('This JSON will be sent.'),
                  content: Text(readableJson(json)),
                  actions: [
                    FilledButton.tonalIcon(
                      onPressed: () => Navigator.of(dialogContext).pop(),
                      label: const Text('Ok'),
                    ),
                  ],
                );
              },
            );

            return;
          },
        );
}

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      uiSettings: WoFormUiSettings(
        titleText: 'Report a player',
        disableSubmitMode: DisableSubmitButton.whenInvalid,
        presentation: context.read<PresentationCubit>().state,
      ),
      exportSettings: const ExportSettings(
        metadata: {
          'reporterId': 'me',
          'reportedId': 'him',
        },
      ),
      children: [
        SelectInput<ReportType>(
          id: 'type',
          availibleValues: ReportType.values,
          minCount: 1,
          maxCount: 1,
          uiSettings: SelectInputUiSettings(
            labelText: 'Motif',
            valueBuilder: (type) => Text(
              switch (type) {
                null => 'Select a reason',
                ReportType.cheating => 'Cheating',
                ReportType.fairPlay => 'Fair play',
                ReportType.verbalAbuse => 'Verbal abuse',
                ReportType.other => 'Other',
              },
            ),
          ),
        ),
        const StringInput(
          id: 'message',
          uiSettings: StringInputUiSettings(
            hintText: 'Tell us more !',
            textCapitalization: TextCapitalization.sentences,
            maxLines: 5,
          ),
        ),
        const BooleanInput(
          id: 'block',
          uiSettings: BooleanInputUiSettings(
            labelText: 'Do you want to block this player ?',
            controlType: BooleanFieldControlType.checkbox,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        WidgetNode(builder: (_) => const SizedBox(height: 64)),
      ],
      onSubmitting: (root, values) async {
        final json = await root.exportToMap(values: values, context: context);

        if (!context.mounted) throw Exception("Context isn't mounted anymore");

        await showDialog<void>(
          context: context,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: const Text('This JSON will be sent.'),
              content: Text(readableJson(json)),
              actions: [
                FilledButton.tonalIcon(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  label: const Text('Ok'),
                ),
              ],
            );
          },
        );

        return;
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

enum ReportType {
  verbalAbuse,
  cheating,
  fairPlay,
  other;
}

class ReportInputId {
  static const type = 'type';
  static const message = 'message';
  static const block = 'block';
}

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoFormInitializer(
      form: const WoForm(
        unmodifiableValuesJson: {
          'reporterId': 'me',
          'reportedId': 'him',
        },
        inputs: [
          SelectInput<ReportType>(
            id: ReportInputId.type,
            availibleValues: ReportType.values,
            minCount: 1,
            maxCount: 1,
            fieldSettings: SelectFieldSettings(
              displayMode: SelectFieldDisplayMode.tiles,
            ),
          ),
          StringInput(
            id: ReportInputId.message,
            fieldSettings: StringFieldSettings(
              hintText: 'Dites-en plus !',
              textCapitalization: TextCapitalization.sentences,
              maxLines: 5,
            ),
          ),
          BooleanInput(
            id: ReportInputId.block,
            fieldSettings: BooleanFieldSettings(
              labelText: 'Bloquer cette raclure ?',
              onOffType: BooleanFieldOnOffType.checkbox,
            ),
          ),
        ],
      ),
      onSubmitting: () {},
      child: const _ReportPage(),
    );
  }
}

class _ReportPage extends StatelessWidget {
  const _ReportPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulaire de signalement')),
      body: BlocListener<WoFormStatusCubit, WoFormStatus>(
        listener: (context, status) {
          if (status is SubmittedStatus) {
            context.read<WoFormStatusCubit>().setIdle();
            final form = context.read<WoFormNodesCubit>().state;
            final values = context.read<WoFormValuesCubit>().state;
            showDialog<AlertDialog>(
              context: context,
              builder: (dialogContext) {
                return AlertDialog(
                  icon: const Icon(Icons.data_array),
                  title: const Text('JSON'),
                  content: Text(readableJson(form.valueToJson(values))),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                        context.read<WoFormStatusCubit>().setIdle();
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                );
              },
            );
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: SelectField<ReportType>(
                  inputId: ReportInputId.type,
                  valueBuilder: (type) => Text(
                    switch (type) {
                      null => 'Vide',
                      ReportType.cheating => 'Triche',
                      ReportType.fairPlay => 'Fair play',
                      ReportType.verbalAbuse => 'Violence verbale',
                      ReportType.other => 'Autre',
                    },
                  ),
                ),
              ),
            ),
            WoGap.medium,
            // message field
            const Flexible(
              child: StringField(inputId: ReportInputId.message),
            ),
            WoGap.medium,
            const BooleanField(inputId: ReportInputId.block),
            WoGap.medium,
            WoFormBuilder(
              builder: (context, form, status, values) {
                return FilledButton(
                  onPressed: form.getErrors(values).isEmpty
                      ? context.read<WoFormValuesCubit>().submit
                      : null,
                  child: const Text('Envoyer'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

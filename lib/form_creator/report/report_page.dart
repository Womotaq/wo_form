import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/form_creator/report/report_form.dart';
import 'package:wo_form/form_creator/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportFormCubit(
        reporterId: 'me',
        reportedId: 'him',
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Formulaire de signalement')),
        body: BlocListener<ReportFormCubit, WoForm>(
          listener: (context, form) {
            if (form.status == WoFormStatus.submitted) {
              context.read<ReportFormCubit>().setIdle();
              showDialog<AlertDialog>(
                context: context,
                builder: (context) => AlertDialog(
                  icon: const Icon(Icons.data_array),
                  title: const Text('JSON'),
                  content: Text(readableJson(form.valuesToJson())),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        context.read<ReportFormCubit>().setIdle();
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              );
            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: SingleChildScrollView(
                  child: SelectField<ReportFormCubit, ReportType>(
                    getInput: (form) => form.typeInput,
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
              Flexible(
                child: StringField<ReportFormCubit>(
                  getInput: (form) => form.messageInput,
                  settings: const StringFieldSettings(
                    hintText: 'Dites-en plus !',
                  ),
                ),
              ),
              WoGap.medium,
              BooleanField<ReportFormCubit>(
                getInput: (form) => form.blockInput,
                settings: const BooleanFieldSettings(
                  labelText: 'Bloquer cette raclure ?',
                ),
              ),
              WoGap.medium,
              BlocBuilder<ReportFormCubit, WoForm>(
                builder: (context, form) {
                  return FilledButton(
                    onPressed: form.isValid
                        ? context.read<ReportFormCubit>().submit
                        : null,
                    child: const Text('Envoyer'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

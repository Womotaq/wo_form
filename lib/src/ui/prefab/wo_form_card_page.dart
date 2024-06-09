// TODO : finish
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class WoFormCardPage extends StatelessWidget {
  const WoFormCardPage({
    required this.form,
    this.submitMode = WoFormSubmitMode.submit,
    super.key,
  });

  final WoForm form;
  final WoFormSubmitMode submitMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WoPadding.horizontalMedium(
        child: form
            .copyWith(
              uiSettings: form.uiSettings.copyWith(
                displayMode: WoFormDisplayMode.card,
                submitMode: submitMode,
              ),
            )
            .toWidget(
              onSubmitted: (context) {
                final values = context.read<WoFormValuesCubit>().state;
                showActionDialog(
                  pageContext: context,
                  title: 'JSON',
                  actionText: 'Ok',
                  onAction: context.read<WoFormStatusCubit>().setIdle,
                  content: Text(readableJson(form.exportValues(values))),
                );
              },
            ),
      ),
    );
  }
}

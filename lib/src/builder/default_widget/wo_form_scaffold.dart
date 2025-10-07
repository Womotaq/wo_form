import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/utils/shrinkable_scaffold.dart';
import 'package:wo_form/wo_form.dart';

class WoFormScaffold extends StatelessWidget {
  const WoFormScaffold(this.body, {super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final woFormTheme = WoFormTheme.of(context);
    final uiSettings =
        context.read<RootNode>().uiSettings ?? const WoFormUiSettings();

    final quitButton =
        (uiSettings.quitButtonBuilder ??
        woFormTheme?.quitButtonBuilder ??
        QuitWoFormButton.new)();

    return ShrinkableScaffold(
      shrinkWrap: uiSettings.layout.shrinks,
      appBarLeading: uiSettings.presentation == WoFormPresentation.page
          ? quitButton
          : null,
      appBarTitle:
          uiSettings.titlePosition == WoFormTitlePosition.appBar &&
              uiSettings.titleText.isNotEmpty
          ? Text(uiSettings.titleText)
          : null,
      appBarActions: [
        if (uiSettings.submitButtonPosition == SubmitButtonPosition.appBar) ...[
          const SubmitButtonBuilder(),
          const SizedBox(width: 8),
        ],
        if (quitButton != null &&
            uiSettings.presentation == WoFormPresentation.dialog) ...[
          quitButton,
          const SizedBox(width: 8),
        ],
      ],
      body: body,
      bottomNavigationBar:
          uiSettings.submitButtonPosition == SubmitButtonPosition.bottomBar
          ? const SubmitButtonBuilder()
          : null,
      floatingActionButton:
          uiSettings.submitButtonPosition == SubmitButtonPosition.floating
          ? const SubmitButtonBuilder()
          : null,
    );
  }
}

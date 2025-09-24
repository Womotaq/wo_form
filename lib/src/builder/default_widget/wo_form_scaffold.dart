import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormStandardScaffold extends StatelessWidget {
  const WoFormStandardScaffold(this.body, {super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final uiSettings = context.read<RootNode>().uiSettings;

    switch (uiSettings.presentation) {
      case WoFormPresentation.bottomSheet:
      case WoFormPresentation.dialog:
        final titleInAppBar =
            uiSettings.titlePosition == WoFormTitlePosition.appBar;
        final submitButtonInAppBar =
            uiSettings.submitButtonPosition == SubmitButtonPosition.appBar;
        final showCloseButton =
            uiSettings.presentation == WoFormPresentation.dialog;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: uiSettings.bodyLayout.supportFlex ? 1 : 0,
              child: Stack(
                children: [
                  Column(
                    children: [
                      if (titleInAppBar ||
                          submitButtonInAppBar ||
                          showCloseButton)
                        AppBar(
                          automaticallyImplyLeading: false,
                          title: titleInAppBar
                              ? Text(uiSettings.titleText)
                              : null,
                          actions: [
                            if (submitButtonInAppBar) ...[
                              const SubmitButtonBuilder(),
                              const SizedBox(width: 8),
                            ],
                            if (showCloseButton) ...[
                              const QuitWoFormButton(),
                              const SizedBox(width: 8),
                            ],
                          ],
                        ),
                      Flexible(
                        flex: uiSettings.bodyLayout.supportFlex ? 1 : 0,
                        child: body,
                      ),
                    ],
                  ),
                  if (uiSettings.submitButtonPosition ==
                      SubmitButtonPosition.floating)
                    const Positioned(
                      right: 16,
                      bottom: 16,
                      child: SubmitButtonBuilder(),
                    ),
                ],
              ),
            ),
            if (uiSettings.submitButtonPosition ==
                SubmitButtonPosition.bottomBar) ...[
              const SubmitButtonBuilder(),
              // const SizedBox(width: 8),
            ],
          ],
        );

      case WoFormPresentation.page:
        final constrainedBody = Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth:
                  WoFormTheme.of(context)?.maxWidth ??
                  WoFormThemeData.DEFAULT_MAX_WIDTH,
            ),
            child: body,
          ),
        );

        return Scaffold(
          appBar: AppBar(
            leading: const QuitWoFormButton(),
            title: uiSettings.titlePosition == WoFormTitlePosition.appBar
                ? Text(uiSettings.titleText)
                : null,
            actions: [
              if (uiSettings.submitButtonPosition ==
                  SubmitButtonPosition.appBar) ...[
                const SubmitButtonBuilder(),
                const SizedBox(width: 8),
              ],
            ],
          ),
          body: uiSettings.bodyLayout.isScrollable
              ? SingleChildScrollView(child: constrainedBody)
              : constrainedBody,
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
}

// TODO : remove
class WoFormMultistepScaffold extends StatelessWidget {
  const WoFormMultistepScaffold(this.body, {super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const QuitWoFormButton(),
        title: Text(context.read<RootNode>().uiSettings.titleText),
      ),
      body: body,
    );
  }
}

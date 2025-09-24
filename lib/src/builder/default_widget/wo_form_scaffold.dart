import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormScaffold extends StatelessWidget {
  const WoFormScaffold(this.body, {super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    // final body = Column(
    //   children: [
    //     Expanded(
    //       // flex: 0,
    //       child: Container(
    //         color: Colors.red,
    //         width: 100,
    //         height: 100,
    //       ),
    //     ),
    //   ],
    // );
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
        final supportFlex =
            uiSettings.bodyLayout.supportFlex ||
            (uiSettings.multistepSettings != null);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: supportFlex ? 1 : 0,
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
                        flex: supportFlex ? 1 : 0,
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
                SubmitButtonPosition.bottomBar)
              const SubmitButtonBuilder(),
          ],
        );

      case WoFormPresentation.page:
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
          body: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth:
                    WoFormTheme.of(context)?.maxWidth ??
                    WoFormThemeData.DEFAULT_MAX_WIDTH,
              ),
              child: body,
            ),
          ),
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

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
        leading: QuitPageButton(canQuit: uiSettings.canQuit),
        title: uiSettings.titlePosition == WoFormTitlePosition.appBar
            ? Text(uiSettings.titleText)
            : null,
        actions: [
          if (uiSettings.submitMode.buttonPosition ==
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
          uiSettings.submitMode.buttonPosition == SubmitButtonPosition.bottomBar
          ? const SubmitButtonBuilder()
          : null,
      floatingActionButton:
          uiSettings.submitMode.buttonPosition == SubmitButtonPosition.floating
          ? const SubmitButtonBuilder()
          : null,
    );
  }
}

class WoFormMultistepScaffold extends StatelessWidget {
  const WoFormMultistepScaffold(this.body, {super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const MultistepBackButton(),
        title: Text(context.read<RootNode>().uiSettings.titleText),
      ),
      body: body,
    );
  }
}

class MultistepBackButton extends StatelessWidget {
  const MultistepBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MultistepController.of(context);

    return QuitPageButton(
      canQuit: (context) async {
        if (controller != null &&
            controller.page != null &&
            controller.page! > 0) {
          FocusScope.of(context).unfocus();
          controller.previousStep();
          return false;
        } else {
          return context.read<RootNode>().uiSettings.canQuit?.call(context) ??
              true;
        }
      },
    );
  }
}

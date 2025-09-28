import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class QuitWoFormButton extends StatelessWidget {
  const QuitWoFormButton({super.key});

  Future<bool?> canQuitMultistep(BuildContext context) async {
    FocusScope.of(context).unfocus();

    final controller = MultistepController.of(context);
    if (controller == null) {
      return true;
    } else if (controller.previousStep() == MultistepFailure.startOfForm) {
      return context.read<RootNode>().uiSettings.canQuit?.call(context) ?? true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionIconTheme = ActionIconTheme.of(context);
    final formUiSettings = context.read<RootNode>().uiSettings;
    final close = formUiSettings.presentation.isModal;

    final canQuit = formUiSettings.multistepSettings != null
        ? canQuitMultistep
        : formUiSettings.canQuit;

    return PopScope(
      canPop: canQuit == null,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        if (canQuit == null) return;
        final confirmPop = await canQuit(context);
        if (confirmPop ?? false) {
          if (!context.mounted) return;
          Navigator.of(context).pop();
        }
      },
      child: IconButton(
        icon:
            actionIconTheme?.backButtonIconBuilder?.call(context) ??
            (close ? const Icon(Icons.close) : const Icon(Icons.arrow_back)),
        tooltip: close
            ? MaterialLocalizations.of(context).closeButtonTooltip
            : MaterialLocalizations.of(context).backButtonTooltip,
        onPressed: () async {
          if (canQuit == null) {
            return Navigator.of(context).pop();
          } else {
            final confirmPop = await canQuit(context);
            if (confirmPop ?? false) {
              if (!context.mounted) return;
              Navigator.of(context).pop();
            }
          }
        },
      ),
    );
  }
}

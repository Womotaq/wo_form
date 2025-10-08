import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class QuitWoFormButton extends StatelessWidget {
  const QuitWoFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    final actionIconTheme = ActionIconTheme.of(context);
    final formUiSettings = context.read<RootNode>().uiSettings;
    final close = formUiSettings?.presentation.isModal ?? false;

    return WoFormPopScope(
      builder: (context, tryPop) => IconButton(
        icon:
            actionIconTheme?.backButtonIconBuilder?.call(context) ??
            (close ? const Icon(Icons.close) : const Icon(Icons.arrow_back)),
        tooltip: close
            ? MaterialLocalizations.of(context).closeButtonTooltip
            : MaterialLocalizations.of(context).backButtonTooltip,
        onPressed: tryPop,
      ),
    );
  }
}

class WoFormPopScope extends StatelessWidget {
  const WoFormPopScope({required this.builder, super.key});

  final Widget Function(BuildContext context, VoidCallback? tryPop) builder;

  @override
  Widget build(BuildContext context) {
    final navigatorCanPop = Navigator.of(context).canPop();

    return WoFormValueSelector(
      selector: (values) => values.currentStepIndex ?? 0,
      builder: (context, currentStepIndex) {
        final canQuit = currentStepIndex <= 0
            ? context.read<RootNode>().uiSettings?.canQuit
            : goPreviousStep;

        return PopScope(
          canPop: navigatorCanPop && canQuit == null,
          onPopInvokedWithResult: (didPop, result) async {
            if (didPop) return;
            if (canQuit == null) return;

            final confirmPop = await canQuit(context) ?? false;
            if (confirmPop && context.mounted && navigatorCanPop) {
              Navigator.of(context).pop();
            }
          },
          child: builder(
            context,
            canQuit == null
                ? navigatorCanPop
                      ? Navigator.of(context).pop
                      : null
                : () async {
                    final confirmPop = await canQuit(context) ?? false;
                    if (confirmPop && context.mounted && navigatorCanPop) {
                      Navigator.of(context).pop();
                    }
                  },
          ),
        );
      },
    );
  }

  Future<bool?> goPreviousStep(BuildContext context) async {
    await MultistepController.of(context)?.previousStep();
    return false;
  }
}

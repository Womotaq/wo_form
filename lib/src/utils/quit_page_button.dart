import 'package:flutter/material.dart';

class QuitPageButton extends StatelessWidget {
  const QuitPageButton({required this.canQuit, super.key});

  final Future<bool?> Function(BuildContext)? canQuit;

  @override
  Widget build(BuildContext context) {
    final actionIconTheme = ActionIconTheme.of(context);

    return PopScope(
      canPop: canQuit == null,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        if (canQuit == null) return;
        final confirmPop = await canQuit!(context);
        if (confirmPop ?? false) {
          if (!context.mounted) return;
          Navigator.of(context).pop();
        }
      },
      child: IconButton(
        icon: actionIconTheme?.backButtonIconBuilder?.call(context) ??
            const Icon(Icons.arrow_back),
        onPressed: () async {
          if (canQuit == null) {
            return Navigator.of(context).pop();
          } else {
            final confirmPop = await canQuit!(context);
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

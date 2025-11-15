import 'package:flutter/material.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

extension OpenForm on BuildContext {
  Future<T?> openForm<T extends Object?>(
    WoForm form, {
    double initialBottomSheetSize = .7,
    bool dismissible = true,
  }) => switch (form.root.uiSettings?.presentation) {
    null || WoFormPresentation.page => pushPage(
      form,
      dismissible: dismissible,
    ),
    WoFormPresentation.dialog ||
    WoFormPresentation.bottomSheet => _showWoFormModal(
      context: this,
      form: form,
      dismissible: dismissible,
      initialBottomSheetSize: initialBottomSheetSize,
    ),
  };
}

Future<T?> _showWoFormModal<T extends Object?>({
  required BuildContext context,
  required WoForm form,
  required double initialBottomSheetSize,
  required bool dismissible,
}) {
  if (form.root.uiSettings?.presentation == WoFormPresentation.dialog) {
    return Push.dialog(
      context: context,
      layout: form.root.uiSettings?.multistepSettings != null
          ? LayoutMethod.flexible
          : form.root.uiSettings?.layout ?? LayoutMethod.scrollable,
      dismissible: dismissible,
      child: SizedBox(
        width: WoFormTheme.of(context)?.maxWidth ?? WoFormTheme.MAX_WIDTH,
        child: form,
      ),
    );
  } else {
    return Push.modalBottomSheet(
      context: context,
      layout: form.root.uiSettings?.multistepSettings != null
          ? LayoutMethod.flexible
          : form.root.uiSettings?.layout ?? LayoutMethod.scrollable,
      dismissible: dismissible,
      initialBottomSheetSize: initialBottomSheetSize,
      child: form,
    );
  }
}

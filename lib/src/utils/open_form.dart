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

/// TODO : implement dialog support
Future<T?> _showWoFormModal<T extends Object?>({
  required BuildContext context,
  required WoForm form,
  required double initialBottomSheetSize,
  required bool dismissible,
}) {
  // final size =
  //     acceptScrollController ? ModalSize.flexible : ModalSize.fitContent;
  final isDialog =
      form.root.uiSettings?.presentation == WoFormPresentation.dialog;

  if (isDialog) {
    // TODO : Push.dialog
    return showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (dialogContext) => SimpleDialog(
        children: [
          SizedBox(
            width: 512, // TODO : WoForm.MAX_WIDTH ?
            child: form,
          ),
        ],
      ),
    );
  } else {
    return Push.modalBottomSheet(
      context: context,
      child: form,
      layout: form.root.uiSettings?.multistepSettings != null
          ? LayoutMethod.flexible
          : form.root.uiSettings?.layout ?? LayoutMethod.scrollable,
      dismissible: dismissible,
      initialBottomSheetSize: initialBottomSheetSize,
    );
  }
}

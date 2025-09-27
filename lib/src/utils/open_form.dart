import 'package:flutter/material.dart';
import 'package:wo_form/src/utils/show_modal.dart';
import 'package:wo_form/wo_form.dart';

extension OpenForm on BuildContext {
  Future<T?> openForm<T extends Object?>(
    WoForm form, {
    double initialBottomSheetSize = .7,
    bool showDragHandle = false,
  }) => switch (form.root.uiSettings.presentation) {
    WoFormPresentation.page => _pushPage(form),
    WoFormPresentation.dialog ||
    WoFormPresentation.bottomSheet => _showWoFormModal(
      context: this,
      form: form,
      initialBottomSheetSize: initialBottomSheetSize,
      showDragHandle: showDragHandle,
    ),
  };

  Future<T?> _pushPage<T extends Object?>(Widget page) => Navigator.push(
    this,
    MaterialPageRoute<T>(builder: (_) => page),
  );
}

/// TODO : implement dialog support
Future<T?> _showWoFormModal<T extends Object?>({
  required BuildContext context,
  required WoForm form,
  required double initialBottomSheetSize,
  required bool showDragHandle,
}) {
  // final size =
  //     acceptScrollController ? ModalSize.flexible : ModalSize.fitContent;
  final isDialog =
      form.root.uiSettings.presentation == WoFormPresentation.dialog;

  if (isDialog) {
    return showDialog(
      context: context,
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
    return showModal(
      context: context,
      child: form,
      layout: form.root.uiSettings.multistepSettings != null
          ? WoFormBodyLayout.flexible
          : form.root.uiSettings.bodyLayout,
      initialBottomSheetSize: initialBottomSheetSize,
      showDragHandle: showDragHandle,
    );
  }
}

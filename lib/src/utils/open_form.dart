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
  /// If true, the child is wrapped inside a DraggableScrollableSheet.
  /// The modal starts at .7% of the screen height.
  ///
  // If false, the modal does the same size as its child.
  final acceptScrollController = form.root.uiSettings.acceptScrollController;
  // final size =
  //     acceptScrollController ? ModalSize.flexible : ModalSize.fitContent;
  final isDialog =
      form.root.uiSettings.presentation == WoFormPresentation.dialog;

  Widget buildForm(BuildContext context, [ScrollController? _]) {
    final double? height;
    if (acceptScrollController ||
        form.root.uiSettings.bodyLayout == WoFormBodyLayout.shrinkWrap) {
      height = null;
    } else {
      final mediaQuery = MediaQuery.of(context);
      height =
          (mediaQuery.size.height - mediaQuery.viewInsets.bottom) *
          initialBottomSheetSize;
    }

    return SizedBox(
      height: height,
      child: form,
    );
  }

  if (isDialog) {
    return showDialog(
      context: context,
      builder: (dialogContext) => SimpleDialog(
        children: [
          SizedBox(
            width: 512, // TODO : WoForm.MAX_WIDTH ?
            child: buildForm(context),
          ),
        ],
      ),
    );
  } else {
    return showModal(
      context: context,
      builder: buildForm,
      acceptScrollController: acceptScrollController,
      initialBottomSheetSize: initialBottomSheetSize,
      showDragHandle: showDragHandle,
    );
  }
}

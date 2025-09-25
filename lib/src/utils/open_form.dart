import 'package:flutter/material.dart';
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

  Widget buildForm(BuildContext context) {
    final double? height;
    if (acceptScrollController) {
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

  Widget buildContent(BuildContext context) => isDialog || !showDragHandle
      ? buildForm(context)
      : _BottomSheetDragHandle(
          flex: acceptScrollController ? 1 : 0,
          child: buildForm(context),
        );

  if (isDialog) {
    return showDialog(
      context: context,
      builder: (dialogContext) => SimpleDialog(
        children: [
          SizedBox(
            width: 512, // TODO : WoForm.MAX_WIDTH ?
            child: buildContent(dialogContext),
          ),
        ],
      ),
    );
  } else {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      clipBehavior: Clip.hardEdge,
      builder: (context) => Padding(
        // This padding allows the modal to adjust to the keyboard
        // See : https://stackoverflow.com/questions/53869078/how-to-move-bottomsheet-along-with-keyboard-which-has-textfieldautofocused-is-t
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: acceptScrollController
            ? DraggableScrollableSheet(
                expand: false,
                initialChildSize: initialBottomSheetSize,
                minChildSize: initialBottomSheetSize * 2 / 3,
                builder: (context, scrollController) =>
                    ScrollControllerProvider(
                      controller: scrollController,
                      child: buildContent(context),
                    ),
              )
            : buildContent(context),
      ),
    );
  }
}

class _BottomSheetDragHandle extends StatelessWidget {
  const _BottomSheetDragHandle({
    required this.child,
    required this.flex,
  });

  final Widget child;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: flex,
          child: Stack(
            children: [
              child,
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    width: 48,
                    height: 6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

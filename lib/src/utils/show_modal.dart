import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

Future<T?> showModal<T extends Object?>({
  required BuildContext context,
  required Widget child,

  /// If scrollable, the child is wrapped inside a DraggableScrollableSheet.
  /// The modal starts at .7% of the screen height.
  ///
  // If shrinkWrap, the modal does the same size as its child.

  // If flexible, the modal does the same size as initialBottomSheetSize.
  WoFormBodyLayout layout = WoFormBodyLayout.scrollable,
  double initialBottomSheetSize = .7,
  bool showDragHandle = false,
}) {
  final wrapped = _BottomSheetDragHandle(
    flex: layout.isScrollable ? 1 : 0,
    showDragHandle: showDragHandle,
    child: Builder(
      builder: (context) => SizedBox(
        height: layout == WoFormBodyLayout.flexible
            ? MediaQuery.of(context).heightWithoutKeyboard *
                  initialBottomSheetSize
            : null,
        child: child,
      ),
    ),
  );

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
      child: layout.isScrollable
          ? DraggableScrollableSheet(
              expand: false,
              initialChildSize: initialBottomSheetSize,
              minChildSize: initialBottomSheetSize * 2 / 3,
              builder: (context, scrollController) => ScrollControllerProvider(
                controller: scrollController,
                child: wrapped,
              ),
            )
          : wrapped,
    ),
  );
}

extension on MediaQueryData {
  double get heightWithoutKeyboard => size.height - viewInsets.bottom;
}

class _BottomSheetDragHandle extends StatelessWidget {
  const _BottomSheetDragHandle({
    required this.child,
    required this.flex,
    this.showDragHandle = true,
  });

  final Widget child;
  final int flex;
  final bool showDragHandle;

  @override
  Widget build(BuildContext context) {
    if (!showDragHandle) return child;

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

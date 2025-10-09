import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:popover/popover.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

/// All the methods in this class follow the PushContextDef signature.
class Push {
  static Future<T?> page<T extends Object?>({
    required BuildContext context,
    required Widget child,
    LayoutMethod layout = LayoutMethod.scrollable,
    bool dismissible = false,
  }) => context.pushPage(child, dismissible: dismissible);

  /// Use this method when you want to push a widget in a new page,
  /// but this widget isn't a page, i.e. it doesn't have navigation controls.
  static Future<T?> screen<T extends Object?>({
    required BuildContext context,
    required Widget child,
    LayoutMethod layout = LayoutMethod.scrollable,
    bool dismissible = false,
  }) => page(
    context: context,
    child: Scaffold(
      appBar: AppBar(),
      body: child,
    ),
    layout: layout,
    dismissible: dismissible,
  );

  static Future<V?> dialog<V extends Object?>({
    required Widget child,
    required BuildContext context,
    bool dismissible = true,
    LayoutMethod layout = LayoutMethod.scrollable,
  }) => showDialog(
    context: context,
    barrierDismissible: dismissible,
    builder: (context) => Dialog(
      clipBehavior: Clip.hardEdge,
      child: child,
    ),
  );

  static Future<T?> modalBottomSheet<T extends Object?>({
    required BuildContext context,
    required Widget child,

    /// If scrollable, the child is wrapped inside a DraggableScrollableSheet.
    /// The modal starts at .7% of the screen height.
    ///
    /// If shrinkWrap, the modal does the same size as its child.
    ///
    /// If flexible, the modal does the same size as initialBottomSheetSize.
    LayoutMethod layout = LayoutMethod.scrollable,
    bool dismissible = true,
    double initialBottomSheetSize = .7,
    bool showDragHandle = false,
  }) {
    final wrapped = _BottomSheetDragHandle(
      flex: layout.isScrollable ? 1 : 0,
      showDragHandle: showDragHandle,
      child: Builder(
        builder: (context) => SizedBox(
          height: layout == LayoutMethod.flexible
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
      isDismissible: dismissible,
      // When the drag is enabled, the modal can be closed by swapping down,
      // even when isDismissible is set to true.
      enableDrag: dismissible,
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
                builder: (context, scrollController) =>
                    ScrollControllerProvider(
                      controller: scrollController,
                      child: wrapped,
                    ),
              )
            : wrapped,
      ),
    );
  }

  static Future<T?> menu<T extends Object?>({
    required BuildContext context,
    required Widget child,
    LayoutMethod layout = LayoutMethod.scrollable,
    bool dismissible = true,
    double overlayMaxWidth = 256,
    double overlayMaxHeight = 384,
  }) => showPopover(
    context: context,
    barrierDismissible: dismissible,
    backgroundColor: Theme.of(context).colorScheme.surfaceBright,
    constraints: BoxConstraints(
      maxWidth: overlayMaxWidth,
      minWidth: layout.shrinks ? 0 : overlayMaxWidth,
      maxHeight: overlayMaxHeight,
      minHeight: layout.shrinks ? 0 : overlayMaxHeight,
    ),
    bodyBuilder: (_) => child,
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

typedef PushDef =
    Future<T?> Function<T extends Object?>({
      required BuildContext context,
      required Widget child,
      LayoutMethod layout,
      bool dismissible,
    });

class PushDefNullableConverter extends JsonConverter<PushDef?, String?> {
  const PushDefNullableConverter();

  @override
  PushDef? fromJson(String? json) => switch (json) {
    null => null,
    'page' => Push.page,
    'screen' => Push.screen,
    'dialog' => Push.dialog,
    'modalBottomSheet' => Push.modalBottomSheet,
    'menu' => Push.menu,
    _ => null,
  };

  @override
  String? toJson(PushDef? object) => switch (object) {
    null => null,
    Push.page => 'page',
    Push.screen => 'screen',
    Push.dialog => 'dialog',
    Push.modalBottomSheet => 'modalBottomSheet',
    Push.menu => 'menu',
    _ => null,
  };
}

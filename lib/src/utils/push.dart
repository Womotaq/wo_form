import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
  }) => showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    isDismissible: dismissible,
    // When the drag is enabled, the modal can be closed by swapping down,
    // even when isDismissible is set to true.
    enableDrag: dismissible,
    clipBehavior: Clip.hardEdge,
    builder: (context) => switch (layout) {
      LayoutMethod.scrollable => DraggableScrollableControllerProvider(
        builder: (context, draggableController) => DraggableScrollableSheet(
          controller: draggableController,
          expand: false,
          initialChildSize: initialBottomSheetSize,
          minChildSize: initialBottomSheetSize * 2 / 3,
          builder: (context, scrollController) => ScrollControllerProvider(
            controller: scrollController,
            child: child,
          ),
        ),
      ),
      LayoutMethod.flexible => SizedBox(
        height:
            // Move all the modal up when the keyboard appears
            MediaQuery.of(context).viewInsets.bottom +
            MediaQuery.of(context).size.height * initialBottomSheetSize,
        child: child,
      ),
      LayoutMethod.shrinkWrap => Padding(
        padding: EdgeInsets.only(
          // When WoForm uses LayoutMethod.shrinkWrap, it isn't wrapped
          // by a Scaffold, so it doesn't deal with the keyboard.
          // See : https://stackoverflow.com/questions/53869078/how-to-move-bottomsheet-along-with-keyboard-which-has-textfieldautofocused-is-t
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: child,
      ),
    },
  );

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

/// This widget provides a DraggableScrollableController with the ability
/// to adjust its size based on the keyboard.
class DraggableScrollableControllerProvider extends StatefulWidget {
  const DraggableScrollableControllerProvider({
    required this.builder,
    super.key,
  });

  final Widget Function(
    BuildContext context,
    DraggableScrollableController controller,
  )
  builder;

  @override
  State<DraggableScrollableControllerProvider> createState() =>
      _DraggableScrollableControllerProviderState();
}

class _DraggableScrollableControllerProviderState
    extends State<DraggableScrollableControllerProvider> {
  final DraggableScrollableController _controller =
      DraggableScrollableController();
  // Between 0 and 1, pourcent of sreen height
  double _keyboardSize = 0;
  double _totalDelta = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final keyboardSize = mediaQuery.viewInsets.bottom / mediaQuery.size.height;
    if (keyboardSize != _keyboardSize) {
      final delta = keyboardSize - _keyboardSize;
      final newControllerSizeRaw = clampDouble(_controller.size + delta, 0, 1);
      final double newTotalDelta = max(
        0,
        _totalDelta + newControllerSizeRaw - _controller.size,
      );
      final effectiveDelta = newTotalDelta - _totalDelta;
      final newControllerSize = _controller.size + effectiveDelta;
      _totalDelta = newTotalDelta;
      _keyboardSize = keyboardSize;

      SchedulerBinding.instance.addPostFrameCallback(
        (_) => _controller.jumpTo(newControllerSize),
      );
    }

    return widget.builder(context, _controller);
  }
}

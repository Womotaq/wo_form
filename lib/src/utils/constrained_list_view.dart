import 'package:flutter/material.dart';

/// A ListView who centers its children in order for them to not be wider
/// than maxWidth. The scroll bar is still at the very right of the screen.
class ConstrainedListView extends StatelessWidget {
  const ConstrainedListView({
    required this.maxWidth,
    required this.children,
    this.padding = EdgeInsets.zero,
    this.shrinkWrap = false,
    this.physics,
    this.clipBehavior = Clip.hardEdge,
    super.key,
  });

  final List<Widget> children;
  final EdgeInsets padding;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final Clip clipBehavior;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    if (maxWidth == double.infinity) {
      return ListView(
        padding: padding,
        shrinkWrap: shrinkWrap,
        physics: physics,
        clipBehavior: clipBehavior,
        children: children,
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final sideOverflow = constraints.maxWidth - maxWidth;
        final sidePadding = sideOverflow > 0 ? sideOverflow / 2 : .0;

        return ListView(
          padding: padding.copyWith(
            right: padding.right + sidePadding,
            left: padding.left + sidePadding,
          ),
          shrinkWrap: shrinkWrap,
          physics: physics,
          clipBehavior: clipBehavior,
          children: children,
        );
      },
    );
  }
}

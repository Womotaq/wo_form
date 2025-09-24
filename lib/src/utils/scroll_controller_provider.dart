import 'package:flutter/material.dart';

class ScrollControllerProvider extends InheritedWidget {
  const ScrollControllerProvider({
    required this.controller,
    required super.child,
    super.key,
  });

  final ScrollController controller;

  static ScrollController? of(BuildContext context) => context
      .getInheritedWidgetOfExactType<ScrollControllerProvider>()
      ?.controller;

  @override
  bool updateShouldNotify(ScrollControllerProvider oldWidget) =>
      oldWidget.controller != controller;
}

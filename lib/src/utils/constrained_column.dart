import 'package:flutter/material.dart';

class ConstrainedColumn extends StatelessWidget {
  const ConstrainedColumn({
    required this.children,
    required this.maxWidth,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    super.key,
  });

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}

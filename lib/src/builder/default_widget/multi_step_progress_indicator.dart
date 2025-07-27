import 'dart:math';
import 'package:flutter/material.dart';

class MultiStepProgressIndicator extends StatelessWidget {
  const MultiStepProgressIndicator({
    required this.index,
    required this.maxIndex,
    super.key,
  });

  final int index;
  final int maxIndex;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      tween: Tween<double>(begin: 1, end: index + 1),
      builder: (context, value, _) => LinearProgressIndicator(
        value: value / max(1, maxIndex + 1),
      ),
    );
  }
}

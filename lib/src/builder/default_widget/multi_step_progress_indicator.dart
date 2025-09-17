import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';

class MultiStepProgressIndicator extends StatelessWidget {
  const MultiStepProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final multistepIndex = context.select(
      (WoFormValuesCubit c) => c.readMultistepIndex() ?? 0,
    );
    final maxIndex = context.read<RootNode>().children.length - 1;

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      tween: Tween<double>(begin: 1, end: multistepIndex + 1),
      builder: (context, value, _) => LinearProgressIndicator(
        value: value / max(1, maxIndex + 1),
      ),
    );
  }
}

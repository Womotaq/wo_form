import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({required this.score, super.key});

  final num score;

  @override
  Widget build(BuildContext context) {
    return Text('/ $score');
  }
}

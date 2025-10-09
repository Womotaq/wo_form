import 'dart:math';

import 'package:flutter/material.dart';

extension StringX on String {
  String get parentPath => (split('/')..removeLast()).join('/');

  String capitalized() => '${this[0].toUpperCase()}${substring(1)}';
}

extension PushPage on BuildContext {
  Future<T?> pushPage<T extends Object?>(
    Widget page, {
    bool dismissible = false,
  }) => Navigator.push(
    this,
    MaterialPageRoute<T>(
      builder: (_) => page,
      barrierDismissible: dismissible,
    ),
  );
}

typedef Json = Map<String, dynamic>;

String generateUid({int length = 6}) {
  const chars =
      '0123456789'
      'abcdefghijklmnopqrstuvwxyz'
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final random = Random();
  return List<String>.generate(
    length,
    (_) => chars[random.nextInt(chars.length)],
  ).join();
}

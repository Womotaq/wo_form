import 'package:flutter/material.dart';

extension StringX on String {
  String get parentPath => (split('/')..removeLast()).join('/');

  String capitalized() => '${this[0].toUpperCase()}${substring(1)}';
}

extension PushPage on BuildContext {
  Future<T?> pushPage<T extends Object?>(Widget page) => Navigator.push(
    this,
    MaterialPageRoute<T>(builder: (_) => page),
  );
}

typedef Json = Map<String, dynamic>;

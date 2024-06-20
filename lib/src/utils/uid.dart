import 'dart:math';

extension RandomX on Random {
  String generateUid({int length = 6}) {
    const chars = '0123456789'
        'abcdefghijklmnopqrstuvwxyz'
        'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return List<String>.generate(length, (_) => chars[nextInt(chars.length)])
        .join();
  }
}

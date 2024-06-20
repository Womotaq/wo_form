import 'dart:math';

final uidGenerator = Random();

extension RandomX on Random {
  String generateUid() {
    const chars = '0123456789'
        'abcdefghijklmnopqrstuvwxyz'
        'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return List<String>.generate(6, (_) => chars[nextInt(chars.length)]).join();
  }
}

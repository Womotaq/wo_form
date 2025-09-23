extension StringX on String {
  String get parentPath => (split('/')..removeLast()).join('/');

  String capitalized() =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
}

typedef Json = Map<String, dynamic>;

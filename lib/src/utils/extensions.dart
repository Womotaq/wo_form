extension StringX on String {
  String get parentPath => (split('/')..removeLast()).join('/');
}

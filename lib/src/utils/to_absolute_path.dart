String toAbsolutePath({
  required String parentPath,
  required String inputPath,
}) {
  if (inputPath.startsWith('/')) return inputPath;
  if (!inputPath.startsWith('.')) {
    throw ArgumentError(
      'An input path must start with character "/" or ".".',
    );
  }

  final relativePath = inputPath.substring(1);

  if (relativePath.startsWith('/')) return '$parentPath$relativePath';
  if (!relativePath.startsWith('./')) {
    throw ArgumentError(
      'An input relative path must start with "./" or "../".',
    );
  }

  // Here, we go looking for the absolute path, by going backward in the tree.

  if (!parentPath.contains('/')) {
    throw ArgumentError('The relative path is backwarding too far.');
  }

  final newParentPath = (parentPath.split('/')..removeLast()).join('/');

  return toAbsolutePath(parentPath: newParentPath, inputPath: relativePath);
}

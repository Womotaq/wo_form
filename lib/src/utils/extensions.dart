import 'package:collection/collection.dart';
import 'package:wo_form/wo_form.dart';

extension StringX on String {
  String get parentPath => (split('/')..removeLast()).join('/');
}

typedef WoFormValues = Map<String, dynamic>;

extension WoFormValuesX on WoFormValues {
  static String getAbsolutePath({
    required String parentPath,
    required String path,
  }) {
    if (path.startsWith('/')) return path;
    if (!path.startsWith('.')) {
      if (path.startsWith('#')) return path;

      throw ArgumentError(
        'An input path must start with character "/", "#" or ".".',
      );
    }

    final relativePath = path.substring(1);

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

    final newParentPath = parentPath.parentPath;

    return getAbsolutePath(parentPath: newParentPath, path: relativePath);
  }

  /// path can be a key, or a string starting with #, like #endsAt.
  /// Then, the result is the first key that ends with path.
  ///
  /// Throws if no key matches the path.
  String getKey(String path) {
    if (!path.startsWith('#')) return path;

    final lastSection = '/${path.substring(1)}';
    for (final key in keys) {
      if (key.endsWith(lastSection)) return key;
    }

    throw ArgumentError('No key matches the path : $path');
  }

  /// path can be a key, or a string starting with #, like #endsAt.
  /// Then, the result is the value corresponding to the first key
  /// that ends with path.
  dynamic getValue(
    String path, {
    String? parentPath,
  }) {
    if (parentPath != null) {
      // ignore: parameter_assignments
      path = WoFormValuesX.getAbsolutePath(parentPath: parentPath, path: path);
    }

    if (!path.startsWith('#')) return this[path];

    final lastSection = '/${path.substring(1)}';
    for (final key in keys) {
      if (key.endsWith(lastSection)) return this[key];
    }

    return null;
  }

  bool meet(Condition condition) {
    switch (condition) {
      case ConditionValue(
          path: final path,
          isEqualTo: final isEqualTo,
          isNotEqualTo: final isNotEqualTo,
        ):
        final value = getValue(path);
        if (isEqualTo != null) {
          if (isEqualTo is List && value is List) {
            return const ListEquality<dynamic>().equals(isEqualTo, value);
          } else {
            return isEqualTo == value;
          }
        }
        if (isNotEqualTo != null) {
          if (isNotEqualTo is List && value is List) {
            return !const ListEquality<dynamic>().equals(isNotEqualTo, value);
          } else {
            return isNotEqualTo != value;
          }
        }

        throw AssertionError('Exactly one operator must be specified');
      case ConditionAnd(conditions: final conditions):
        for (final condition in conditions) {
          if (!meet(condition)) return false;
        }
        return true;
      case ConditionOr(conditions: final conditions):
        for (final condition in conditions) {
          if (meet(condition)) return true;
        }
        return false;
    }
  }
}

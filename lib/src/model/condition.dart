import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
sealed class Condition with _$Condition {
  @Assert(
    '    () {'
        '  final operators = ['
        '    isEqualTo,'
        '    isNotEqualTo,'
        '    isNull,'
        '    isFocused,'
        '    matchesRegex,'
        '  ];'
        '  final operatorsUsed = operators.where((e) => e != null).length;'
        '  return operatorsUsed == 1; '
        '}()',
    'Exactly one operator must be specified',
  )
  factory Condition.value({
    required String path,
    Object? isEqualTo,
    Object? isNotEqualTo,

    /// The value is null even if the path is not present in the list of paths.
    bool? isNull,
    bool? isFocused,

    /// If the value at path is not a string, the condition cannot be met.
    String? matchesRegex,
  }) = ConditionValue;

  const factory Condition.and(
    List<Condition> conditions,
  ) = ConditionAnd;

  const factory Condition.or(
    List<Condition> conditions,
  ) = ConditionOr;

  const factory Condition.not(
    Condition condition,
  ) = ConditionNot;

  const Condition._();

  factory Condition.fromJson(Json json) => _$ConditionFromJson(json);

  // --

  bool isMet(WoFormValues values) => values.meet(this);
}

extension ConditionMeeter on WoFormValues {
  bool meet(Condition condition) {
    switch (condition) {
      case ConditionValue(
        path: final path,
        isEqualTo: final isEqualTo,
        isNotEqualTo: final isNotEqualTo,
        isNull: final isNull,
        isFocused: final isFocused,
        matchesRegex: final matchesRegex,
      ):
        final value = this[path];
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
        if (isNull != null) {
          return (value == null) == isNull;
        }
        if (isFocused != null) {
          print(this.isFocused(path));
          return this.isFocused(path);
        }
        if (matchesRegex != null) {
          if (value is! String) return false;
          return RegExp(matchesRegex).hasMatch(value);
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
      case ConditionNot(condition: final condition):
        return !meet(condition);
    }
  }
}

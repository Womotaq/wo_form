import 'package:freezed_annotation/freezed_annotation.dart';
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
  }) = ConditionValue;

  const factory Condition.and(
    @ConditionsListConverter() List<Condition> conditions,
  ) = ConditionAnd;

  const factory Condition.or(
    @ConditionsListConverter() List<Condition> conditions,
  ) = ConditionOr;

  const Condition._();

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  static Map<String, dynamic> staticToJson(Condition object) => object.toJson();
}

extension WoFormValuesX on WoFormValues {
  bool meet(Condition condition) {
    switch (condition) {
      case ConditionValue(
          path: final path,
          isEqualTo: final isEqualTo,
          isNotEqualTo: final isNotEqualTo,
        ):
        if (isEqualTo != null) return this[path] == isEqualTo;
        if (isNotEqualTo != null) return this[path] != isNotEqualTo;

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

class ConditionsListConverter
    extends JsonConverter<List<Condition>, List<dynamic>> {
  const ConditionsListConverter();

  @override
  List<Condition> fromJson(List<dynamic> json) => json
      .map((map) => Condition.fromJson(map as Map<String, dynamic>))
      .toList();

  @override
  List<dynamic> toJson(List<Condition> object) =>
      object.map((condition) => condition.toJson()).toList();
}

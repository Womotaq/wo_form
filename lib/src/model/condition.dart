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
        '    isNull,'
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

    /// The value is null even if the path is not present in the list of paths
    bool? isNull,
  }) = ConditionValue;

  const factory Condition.and(
    @ConditionsListConverter() List<Condition> conditions,
  ) = ConditionAnd;

  const factory Condition.or(
    @ConditionsListConverter() List<Condition> conditions,
  ) = ConditionOr;

  const Condition._();

  factory Condition.fromJson(Json json) => _$ConditionFromJson(json);
}

class ConditionsListConverter
    extends JsonConverter<List<Condition>, List<dynamic>> {
  const ConditionsListConverter();

  @override
  List<Condition> fromJson(List<dynamic> json) =>
      json.map((map) => Condition.fromJson(map as Json)).toList();

  @override
  List<dynamic> toJson(List<Condition> object) =>
      object.map((condition) => condition.toJson()).toList();
}

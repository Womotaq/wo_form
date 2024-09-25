import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
class Condition with _$Condition {
  const factory Condition({
    required String path,
    Object? isEqualTo,
  }) = _Condition;

  const Condition._();

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  bool isMet(WoFormValues values) => values[path] == isEqualTo;
}

extension WoFormValuesX on WoFormValues {
  bool meet(List<Condition> conditions) {
    for (final condition in conditions) {
      if (!condition.isMet(this)) return false;
    }
    return true;
  }
}

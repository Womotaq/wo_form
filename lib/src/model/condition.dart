import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
class Condition with _$Condition {
  const factory Condition({
    required String path,
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) = _Condition;

  const Condition._();

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  bool isMet(WoFormValues values) {
    if (isEqualTo != null) return values[path] == isEqualTo;
    if (isNotEqualTo != null) return values[path] != isNotEqualTo;

    throw AssertionError(
      'Condition must have one non-null field other than path.',
    );
  }
}

extension WoFormValuesX on WoFormValues {
  bool meet(List<Condition> conditions) {
    for (final condition in conditions) {
      if (!condition.isMet(this)) return false;
    }
    return true;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wo_form_status.freezed.dart';
part 'wo_form_status.g.dart';

@freezed
sealed class WoFormStatus with _$WoFormStatus {
  const factory WoFormStatus.initial() = InitialStatus;
  const factory WoFormStatus.inProgress() = InProgressStatus;
  const factory WoFormStatus.invalidValues() = InvalidValuesStatus;
  const factory WoFormStatus.submitting() = SubmittingStatus;
  const factory WoFormStatus.submitError({
    @JsonKey(includeToJson: false, includeFromJson: false) Object? error,
    @JsonKey(includeToJson: false, includeFromJson: false)
    StackTrace? stackTrace,
  }) = SubmitErrorStatus;
  const factory WoFormStatus.submitSuccess() = SubmitSuccessStatus;

  factory WoFormStatus.fromJson(Map<String, dynamic> json) =>
      _$WoFormStatusFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_status.freezed.dart';

@freezed
sealed class WoFormStatus with _$WoFormStatus {
  const factory WoFormStatus.initial() = InitialStatus;
  const factory WoFormStatus.inProgress() = InProgressStatus;
  const factory WoFormStatus.invalidValues({
    // TODO: remove ? are they used ? usefull ?
    Iterable<WoFormInputError>? inputErrors,
  }) = InvalidValuesStatus;
  const factory WoFormStatus.submitting() = SubmittingStatus;
  const factory WoFormStatus.submitError({
    Object? error,
    StackTrace? stackTrace,
  }) = SubmitErrorStatus;
  const factory WoFormStatus.submitSuccess() = SubmitSuccessStatus;
}

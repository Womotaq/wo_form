import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

enum ReportType {
  verbalAbuse,
  cheating,
  fairPlay,
  other,
}

enum ReportInputId {
  type,
  message,
  block;

  @override
  String toString() => name;
}

extension ReportForm on WoForm {
  static WoForm initial({
    required String reporterId,
    required String reportedId,
  }) =>
      WoForm(
        status: WoFormStatus.idle,
        unmodifiableValuesJson: {
          'reporterId': reporterId,
          'reportedId': reportedId,
        },
        inputs: [
          const SelectInput<ReportType>(
            id: 'type',
            availibleValues: ReportType.values,
            minCount: 1,
            maxCount: 1,
            fieldSettings: SelectFieldSettings(
              displayMode: SelectFieldDisplayMode.tiles,
            ),
          ),
          StringInput(
            id: ReportInputId.message.name,
            fieldSettings: const StringFieldSettings(
              hintText: 'Dites-en plus !',
              textCapitalization: TextCapitalization.sentences,
              maxLines: 5,
            ),
          ),
          const BooleanInput(
            id: 'block',
            fieldSettings: BooleanFieldSettings(
              labelText: 'Bloquer cette raclure ?',
              onOffType: BooleanFieldOnOffType.checkbox,
            ),
          ),
        ],
      );

  SelectInput<ReportType> get typeInput =>
      inputsMap['type']! as SelectInput<ReportType>;
  // StringInput get messageInput => inputsMap['message']! as StringInput;
  BooleanInput get blockInput => inputsMap['block']! as BooleanInput;
}

class ReportFormCubit extends WoFormCubit {
  ReportFormCubit({
    required String reporterId,
    required String reportedId,
  }) : super(
          ReportForm.initial(
            reporterId: reporterId,
            reportedId: reportedId,
          ),
        );

  @override
  Future<void> submit() async {
    if (state.isNotValid) return setInvalid();

    setSubmitted();
  }
}

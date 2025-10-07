import 'package:flutter/material.dart';
import 'package:wo_form/src/builder/default_widget/date_time_selector.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class DateTimeField extends StatelessWidget {
  const DateTimeField(this.data, {super.key});

  final WoFieldData<DateTimeInput, DateTime?> data;

  @override
  Widget build(BuildContext context) {
    return FlexField(
      headerFlex: data.input.uiSettings?.headerFlex,
      labelText: data.input.uiSettings?.labelText,
      helperText: data.input.uiSettings?.helperText,
      errorText: data.errorText,
      disableMode: data.onValueChanged == null
          ? FlexFieldDisableMode.all
          : FlexFieldDisableMode.none,
      child: DateTimeSelector(
        dateTime: data.value,
        minDateTime: data.input.minDate?.resolve(),
        maxDateTime: data.input.maxDate?.resolve(),
        onChanged: data.onValueChanged,
        settings: data.input.uiSettings ?? const DateTimeInputUiSettings(),
        showCloseButton: !data.input.isRequired,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wo_form/src/builder/default_widget/date_time_selector.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class DateTimeField extends StatelessWidget {
  const DateTimeField(this.data, {super.key});

  final WoFieldData<DateTimeInput, DateTime?> data;

  @override
  Widget build(BuildContext context) {
    final woFormTheme = WoFormTheme.of(context);
    final uiSettings = data.input.uiSettings;
    final labelLocation =
        uiSettings?.labelLocation ??
        woFormTheme?.stringFieldLabelLocation ??
        FieldElementLocation.inside;
    final helperLocation =
        uiSettings?.helperLocation ??
        woFormTheme?.stringFieldHelperLocation ??
        FieldElementLocation.inside;
    final errorLocation =
        uiSettings?.errorLocation ??
        woFormTheme?.stringFieldErrorLocation ??
        FieldElementLocation.inside;
    final prefixIconLocation =
        uiSettings?.prefixIconLocation ??
        woFormTheme?.stringFieldPrefixIconLocation ??
        FieldElementLocation.outside;

    return FlexField(
      headerFlex: uiSettings?.headerFlex,
      labelText: labelLocation.isOutside ? uiSettings?.labelText : null,
      helperText: helperLocation.isOutside ? uiSettings?.helperText : null,
      errorText: errorLocation.isOutside ? data.errorText : null,
      disableMode: data.onValueChanged == null
          ? FlexFieldDisableMode.all
          : FlexFieldDisableMode.none,
      prefixIcon: prefixIconLocation.isOutside && uiSettings?.prefixIcon != null
          ? Padding(
              padding: EdgeInsets.only(
                top:
                    (Theme.of(
                          context,
                        ).inputDecorationTheme.contentPadding?.vertical ??
                        32) /
                    2,
              ),
              child: uiSettings?.prefixIcon,
            )
          : null,
      child: DateTimeSelector(
        dateTime: data.value,
        minDateTime: data.input.minDate?.resolve(),
        maxDateTime: data.input.maxDate?.resolve(),
        onChanged: data.onValueChanged,
        settings:
            uiSettings?.copyWith(
              labelText: labelLocation.isOutside ? null : uiSettings.labelText,
              helperText: helperLocation.isOutside
                  ? null
                  : uiSettings.helperText,
              prefixIcon: prefixIconLocation.isOutside
                  ? null
                  : uiSettings.prefixIcon,
            ) ??
            const DateTimeInputUiSettings(),
        errorText: errorLocation.isOutside ? null : data.errorText,
        showCloseButton: !data.input.isRequired,
      ),
    );
  }
}

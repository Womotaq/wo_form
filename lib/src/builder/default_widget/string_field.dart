import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/src/builder/default_widget/place_autocomplete/_export.dart';
import 'package:wo_form/wo_form.dart';

class StringField extends StatefulWidget {
  const StringField({
    required this.text,
    required this.onValueChanged,
    this.uiSettings,
    this.placeAutocompleteSettings,
    this.errorText,
    this.errorWidget,
    super.key,
  });

  factory StringField.fromData(WoFieldData<StringInput, String> data) =>
      StringField(
        text: data.value,
        onValueChanged: data.onValueChanged,
        uiSettings: data.input.uiSettings,
        placeAutocompleteSettings: data.input.placeAutocompleteSettings,
        errorText: data.errorText,
        errorWidget: data.errorWidget,
      );

  final String? text;
  final void Function(String? text)? onValueChanged;
  final StringInputUiSettings? uiSettings;
  final PlaceAutocompleteSettings? placeAutocompleteSettings;
  final String? errorText;
  final Widget? errorWidget;
  // final WoFieldData<StringInput, String> data;

  @override
  State<StringField> createState() => _StringFieldState();
}

class _StringFieldState extends State<StringField> {
  TextEditingController? textEditingController;
  PhoneController? phoneController;
  late final bool autofocus;
  bool obscureText = false;
  Offset? tapPosition;

  @override
  void initState() {
    super.initState();

    autofocus = switch (widget.uiSettings?.autofocus) {
      WoFormAutofocus.yes => true,
      WoFormAutofocus.ifEmpty => widget.text == null || widget.text == '',
      null || WoFormAutofocus.no => false,
    };
    obscureText = widget.uiSettings?.obscureText ?? false;
    if (widget.uiSettings?.keyboardType == TextInputType.phone) {
      var isoCode = WoFormTheme.of(context, listen: false)?.defaultPhoneCoutry;
      if (isoCode == null) {
        final countryCode =
            PlatformDispatcher.instance.locale.countryCode ??
            Platform.localeName.split('_').last;
        isoCode = IsoCode.fromJson(countryCode);
      }

      phoneController = PhoneController(
        initialValue: PhoneNumber.parse(
          widget.text ?? '',
          callerCountry: isoCode,
        ),
      );
    } else {
      textEditingController = TextEditingController(
        text: widget.text ?? '',
      );
    }
  }

  @override
  void dispose() {
    textEditingController?.dispose();
    phoneController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (textEditingController != null) {
      if ((widget.text ?? '') != textEditingController?.text) {
        textEditingController?.text = widget.text ?? '';
      }
    }
    if (phoneController != null) {
      if ((widget.text ?? '') != textEditingController?.text) {
        textEditingController?.text = widget.text ?? '';
      }
    }

    final woFormTheme = WoFormTheme.of(context);
    final uiSettings = widget.uiSettings;
    final collapsed = uiSettings?.collapsed ?? false;
    final labelLocation =
        uiSettings?.labelLocation ??
        woFormTheme?.stringFieldLabelLocation ??
        StringFieldLocation.inside;
    final helperLocation =
        uiSettings?.helperLocation ??
        woFormTheme?.stringFieldHelperLocation ??
        StringFieldLocation.inside;
    final errorLocation =
        uiSettings?.errorLocation ??
        woFormTheme?.stringFieldErrorLocation ??
        StringFieldLocation.inside;
    final prefixIconLocation =
        uiSettings?.prefixIconLocation ??
        woFormTheme?.stringFieldPrefixIconLocation ??
        StringFieldLocation.outside;

    final inputDecoration = collapsed
        ? InputDecoration.collapsed(
            hintText: uiSettings?.hintText,
          )
        : InputDecoration(
            labelText: labelLocation.isInside ? uiSettings?.labelText : null,
            helperText: helperLocation.isInside && uiSettings?.helper == null
                ? uiSettings?.helperText
                : null,
            helperMaxLines: uiSettings?.helperMaxLines == 0
                ? null
                : uiSettings?.helperMaxLines ?? 1,
            helper: helperLocation.isInside ? uiSettings?.helper : null,
            hintText: uiSettings?.hintText,
            errorText: errorLocation.isInside
                ? widget.errorText
                : widget.errorText?.isNotEmpty ?? false
                ? ''
                : null,
            error: widget.errorWidget,
            prefixIcon: prefixIconLocation.isInside
                ? uiSettings?.prefixIcon
                : null,
            suffixIcon: switch (uiSettings?.action) {
              null => null,
              StringFieldAction.clear =>
                (widget.text ?? '').isEmpty
                    ? null
                    : IconButton(
                        onPressed: widget.onValueChanged == null
                            ? null
                            : () => widget.onValueChanged!(null),
                        icon: const Icon(Icons.clear),
                      ),
              StringFieldAction.obscure => IconButton(
                onPressed: () => setState(() => obscureText = !obscureText),
                icon: obscureText
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined),
              ),
            },
          );

    final placeAutocompleteSettings = widget.placeAutocompleteSettings;

    final textField = placeAutocompleteSettings != null
        ? PlaceAutocompleteTextField(
            textEditingController: textEditingController!,
            inputDecoration: inputDecoration,
            textInputAction: uiSettings?.textInputAction,
            countries: placeAutocompleteSettings.countries
                ?.map((isoCode) => isoCode.name)
                .toList(),
            debounceDuration: placeAutocompleteSettings.debounceDuration,
            onChanged: widget.onValueChanged,
            onFieldSubmitted:
                (uiSettings?.submitFormOnFieldSubmitted ??
                    defaultSubmitFormOnFieldSubmitted())
                ? (_) => context.read<WoFormValuesCubit>().submit(context)
                : null,
            autofocus: autofocus,
            textCapitalization:
                uiSettings?.textCapitalization ?? TextCapitalization.none,
            // Flutter's default behaviour :
            // - web : tapping outside instantly unfocuses the field.
            // - mobile : tapping outside does nothing.
            // For better consistency across all plateforms, wo_form decided to
            // unfocus text fields on tap up.
            onTapOutside: (event) => tapPosition = event.position,
            onTapUpOutside: (event) {
              if (event.position == tapPosition) {
                FocusScope.of(context).unfocus();
              }
              tapPosition = null;
            },
            itemBuilder: (context, index, PlacePrediction prediction) =>
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(width: 7),
                      Expanded(
                        child: Text(
                          prediction.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
            placeType: placeAutocompleteSettings.type,
          )
        : uiSettings?.keyboardType == TextInputType.phone
        ? PhoneFormField(
            enabled: widget.onValueChanged != null,
            controller: phoneController,
            onChanged: widget.onValueChanged == null
                ? null
                : (number) => widget.onValueChanged!(
                    '+${number.countryCode} ${number.formatNsn()}',
                  ),
            onSubmitted:
                (uiSettings?.submitFormOnFieldSubmitted ??
                    defaultSubmitFormOnFieldSubmitted())
                ? (_) => context.read<WoFormValuesCubit>().submit(context)
                : null,
            // TODO : onTapUpOutside
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            style: uiSettings?.style,
            obscureText: obscureText,
            autocorrect: uiSettings?.autocorrect ?? true,
            autofillHints: uiSettings?.autofillHints,
            autofocus: autofocus,
            textInputAction: uiSettings?.textInputAction,
            decoration: inputDecoration,
            countrySelectorNavigator:
                const CountrySelectorNavigator.draggableBottomSheet(),
          )
        : TextFormField(
            enabled: widget.onValueChanged != null,
            controller: textEditingController,
            onChanged: widget.onValueChanged,
            onFieldSubmitted:
                (uiSettings?.submitFormOnFieldSubmitted ??
                    defaultSubmitFormOnFieldSubmitted())
                ? (_) => context.read<WoFormValuesCubit>().submit(context)
                : null,
            // Flutter's default behaviour :
            // - web : tapping outside instantly unfocuses the field.
            // - mobile : tapping outside does nothing.
            // For better consistency across all plateforms, wo_form decided to
            // unfocus text fields on tap up.
            onTapOutside: (event) => tapPosition = event.position,
            onTapUpOutside: (event) {
              if (event.position == tapPosition) {
                FocusScope.of(context).unfocus();
              }
              tapPosition = null;
            },
            style: uiSettings?.style,
            keyboardType: uiSettings?.keyboardType,
            obscureText: obscureText,
            autocorrect: uiSettings?.autocorrect ?? true,
            autofillHints: uiSettings?.autofillHints,
            autofocus: autofocus,
            textInputAction: uiSettings?.textInputAction,
            textCapitalization:
                uiSettings?.textCapitalization ?? TextCapitalization.none,
            maxLines: uiSettings?.maxLines == 0
                ? null
                : uiSettings?.maxLines ?? 1,
            inputFormatters: const [
              // LATER : LengthLimitingTextInputFormatter
            ],
            decoration: inputDecoration,
          );

    if (collapsed) return textField;

    return FlexField(
      headerFlex: uiSettings?.headerFlex,
      labelText: labelLocation.isOutside ? uiSettings?.labelText : null,
      helperText: helperLocation.isOutside ? uiSettings?.helperText : null,
      errorText: errorLocation.isOutside ? widget.errorText : null,
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
      padding: uiSettings?.padding,
      child: textField,
    );
  }

  bool defaultSubmitFormOnFieldSubmitted() =>
      switch (widget.uiSettings?.textInputAction) {
        TextInputAction.next ||
        TextInputAction.previous ||
        TextInputAction.continueAction ||
        TextInputAction.newline => false,
        _ => true,
      };
}

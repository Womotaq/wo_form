import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:wo_form/src/builder/default_widget/place_autocomplete/_export.dart';
import 'package:wo_form/wo_form.dart';

class StringField extends StatefulWidget {
  const StringField(this.data, {this.subtitle, super.key});

  final WoFieldData<StringInput, String, StringInputUiSettings> data;
  final Widget? subtitle;

  @override
  State<StringField> createState() => _StringFieldState();
}

class _StringFieldState extends State<StringField> {
  TextEditingController? textEditingController;
  PhoneController? phoneController;
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    obscureText = widget.data.uiSettings.obscureText ?? false;
    if (widget.data.uiSettings.keyboardType == TextInputType.phone) {
      phoneController = PhoneController(
        initialValue: PhoneNumber.parse(
          widget.data.value ?? '',
          callerCountry:
              WoFormTheme.of(context, listen: false)?.defaultPhoneCoutry ??
                  IsoCode.US,
        ),
      );
    } else {
      textEditingController =
          TextEditingController(text: widget.data.value ?? '');
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
      if ((widget.data.value ?? '') != textEditingController?.text) {
        textEditingController?.text = widget.data.value ?? '';
      }
    }
    if (phoneController != null) {
      if ((widget.data.value ?? '') != textEditingController?.text) {
        textEditingController?.text = widget.data.value ?? '';
      }
    }

    final inputDecoration = InputDecoration(
      labelText: widget.data.uiSettings.labelText,
      helperText: widget.data.uiSettings.helperText,
      hintText: widget.data.uiSettings.hintText,
      hintStyle: widget.data.uiSettings.style,
      errorText: widget.data.errorText,
      suffixIcon: switch (widget.data.uiSettings.action) {
        null => null,
        StringFieldAction.clear => IconButton(
            onPressed: widget.data.onValueChanged == null
                ? null
                : () => widget.data.onValueChanged!(null),
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

    if (widget.data.uiSettings.placeAutocompleteType != null) {
      final googleAPIKey = WoFormTheme.of(context, listen: false)?.googleAPIKey;
      if (googleAPIKey != null) {
        return PlaceAutoCompleteTextField(
          textEditingController: textEditingController!,
          inputDecoration: inputDecoration,
          textInputAction: widget.data.uiSettings.textInputAction,
          googleAPIKey: googleAPIKey,
          debounceTime: 300, // TODO : customizable
          countries: widget.data.uiSettings.placeAutocompleteCountries,
          onChanged: widget.data.onValueChanged,
          onFieldSubmitted:
              (widget.data.uiSettings.submitFormOnFieldSubmitted ?? true)
                  ? (_) => context.read<WoFormValuesCubit>().submit(context)
                  : null,
          itemBuilder: (context, index, Prediction prediction) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                const Icon(Icons.location_on),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    prediction.description ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          placeType: widget.data.uiSettings.placeAutocompleteType,
        );
      }
    }

    if (widget.data.uiSettings.keyboardType == TextInputType.phone) {
      return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: widget.data.uiSettings.prefixIcon,
        title: PhoneFormField(
          enabled: widget.data.onValueChanged != null,
          controller: phoneController,
          onChanged: widget.data.onValueChanged == null
              ? null
              : (number) => widget.data.onValueChanged!(
                    '+${number.countryCode} ${number.formatNsn()}',
                  ),
          onSubmitted:
              (widget.data.uiSettings.submitFormOnFieldSubmitted ?? true)
                  ? (_) => context.read<WoFormValuesCubit>().submit(context)
                  : null,
          style: widget.data.uiSettings.style,
          obscureText: obscureText,
          autocorrect: widget.data.uiSettings.autocorrect ?? true,
          autofillHints: widget.data.uiSettings.autofillHints,
          autofocus: widget.data.uiSettings.autofocus ?? false,
          textInputAction: widget.data.uiSettings.textInputAction,
          decoration: inputDecoration,
        ),
        subtitle: widget.subtitle,
      );
    }

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: widget.data.uiSettings.prefixIcon,
      title: TextFormField(
        enabled: widget.data.onValueChanged != null,
        controller: textEditingController,
        onChanged: widget.data.onValueChanged,
        onFieldSubmitted:
            (widget.data.uiSettings.submitFormOnFieldSubmitted ?? true)
                ? (_) => context.read<WoFormValuesCubit>().submit(context)
                : null,
        style: widget.data.uiSettings.style,
        keyboardType: widget.data.uiSettings.keyboardType,
        obscureText: obscureText,
        autocorrect: widget.data.uiSettings.autocorrect ?? true,
        autofillHints: widget.data.uiSettings.autofillHints,
        autofocus: widget.data.uiSettings.autofocus ?? false,
        textInputAction: widget.data.uiSettings.textInputAction,
        textCapitalization: widget.data.uiSettings.textCapitalization ??
            TextCapitalization.none,
        maxLines: widget.data.uiSettings.maxLines == 0
            ? null
            : widget.data.uiSettings.maxLines ?? 1,
        inputFormatters: const [
          // LATER : LengthLimitingTextInputFormatter
        ],
        decoration: inputDecoration,
      ),
      subtitle: widget.subtitle,
    );
  }
}

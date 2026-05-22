import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class StringField<T extends Object?> extends StatefulWidget {
  const StringField({
    required this.text,
    required this.onValueChanged,
    this.uiSettings,
    this.suggestionsSettings,
    this.errorText,
    this.errorWidget,
    this.maxLength,
    this.createController,
    super.key,
  });

  factory StringField.fromData(WoFieldData<StringInput<T>, String> data) =>
      StringField<T>(
        text: data.value,
        onValueChanged: data.onValueChanged,
        uiSettings: data.input.uiSettings,
        suggestionsSettings: data.input.suggestionsSettings,
        errorText: data.errorText,
        errorWidget: data.errorWidget,
        maxLength: data.input.maxLength,
        createController: data.input.createController,
      );

  final String? text;
  final void Function(String? text)? onValueChanged;
  final StringInputUiSettings<T>? uiSettings;
  final SuggestionsSettings<T>? suggestionsSettings;
  final String? errorText;
  final Widget? errorWidget;
  final int? maxLength;
  final CreateTextEditingControllerDef? createController;

  @override
  State<StringField> createState() => _StringFieldState<T>();
}

class _StringFieldState<T> extends State<StringField<T>> {
  TextEditingController? textEditingController;
  bool _ownController = true;
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
      if (widget.suggestionsSettings != null) {
        throw UnimplementedError(
          'Cannot use StringInput.suggestionsSettings with '
          'StringUiSettings.keyboardType at TextInputType.phone',
        );
      }

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
      textEditingController = widget.createController?.call(context);
      if (textEditingController != null) {
        _ownController = false;
      } else {
        textEditingController = TextEditingController();
      }
      textEditingController?.text = widget.text ?? '';
      textEditingController?.addListener(_onTextChanged);
    }
  }

  void _onTextChanged() {
    final newText = textEditingController?.text;
    if (newText == null) return;

    widget.onValueChanged?.call(newText);
  }

  @override
  void dispose() {
    if (_ownController) textEditingController?.dispose();
    textEditingController?.removeListener(_onTextChanged);

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

    final inputDecoration = collapsed
        ? InputDecoration.collapsed(
            hintText: uiSettings?.hintText,
          )
        : InputDecoration(
            floatingLabelBehavior: (uiSettings?.maxLines ?? 0) > 1
                ? FloatingLabelBehavior.always
                : null,
            labelText: labelLocation.isInside ? uiSettings?.labelText : null,
            helperText: helperLocation.isInside && uiSettings?.helper == null
                ? uiSettings?.helperText
                : null,
            helperMaxLines: uiSettings?.helperMaxLines == 0
                ? null
                : uiSettings?.helperMaxLines ?? 1,
            helper: helperLocation.isInside ? uiSettings?.helper : null,
            hintText: uiSettings?.hintText,
            hintStyle: const TextStyle(fontStyle: FontStyle.italic),
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
            counter: widget.maxLength == null
                ? null
                : (uiSettings?.counterBuilder ??
                          woFormTheme?.stringFieldCounterBuilder)
                      ?.call(
                        (widget.text ?? '').length,
                        widget.maxLength!,
                      ),
            counterText: widget.maxLength == null
                ? null
                : '${(widget.text ?? '').length}/${widget.maxLength}',
          );

    final suggestionsSettings = widget.suggestionsSettings;
    final unfocusMethod =
        uiSettings?.unfocusMethod ?? FieldUnfocusMethod.onTapUpOutside;
    final onTapOutside = switch (unfocusMethod) {
      FieldUnfocusMethod.onTapOutside => (_) => FocusScope.of(
        context,
      ).unfocus(),
      FieldUnfocusMethod.onTapUpOutside =>
        (PointerDownEvent event) => tapPosition = event.position,
      FieldUnfocusMethod.systemDefault => null,
    };
    final onTapUpOutside = switch (unfocusMethod) {
      FieldUnfocusMethod.systemDefault ||
      FieldUnfocusMethod.onTapOutside => null,
      FieldUnfocusMethod.onTapUpOutside => (PointerUpEvent event) {
        if (event.position == tapPosition) {
          FocusScope.of(context).unfocus();
        }
        tapPosition = null;
      },
    };

    final formatters = [
      if (widget.maxLength != null)
        LengthLimitingTextInputFormatter(widget.maxLength),
    ];

    final textField = suggestionsSettings != null
        ? TypeAheadField<T>(
            autoFlipDirection: true,
            controller: textEditingController,

            debounceDuration:
                suggestionsSettings.debounceDuration ??
                WoFormTheme.DEBOUNCE_DURATION,
            suggestionsCallback: suggestionsSettings.loadSuggestions,
            onSelected: (suggestion) {
              final newText =
                  suggestionsSettings.suggestionToText?.call(suggestion) ??
                  suggestion.toString();

              textEditingController?.text = newText;
              widget.onValueChanged?.call(newText);
            },

            builder: (context, controller, focusNode) => TextFormField(
              controller: controller,
              focusNode: focusNode,

              enabled: widget.onValueChanged != null,
              onFieldSubmitted:
                  (uiSettings?.submitFormOnFieldSubmitted ??
                      defaultSubmitFormOnFieldSubmitted())
                  ? (_) => context.read<WoFormValuesCubit>().submit(context)
                  : null,
              onTapOutside: onTapOutside,
              onTapUpOutside: onTapUpOutside,
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
              inputFormatters: formatters,
              decoration: inputDecoration,
            ),
            itemBuilder: (context, suggestion) =>
                suggestionsSettings.suggestionTileBuilder != null
                ? suggestionsSettings.suggestionTileBuilder!(suggestion)
                : Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      suggestionsSettings.suggestionToText?.call(suggestion) ??
                          suggestion.toString(),
                    ),
                  ),

            hideOnEmpty: true,
            hideOnLoading: true,
            hideOnError: true,
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
            onTapOutside: onTapOutside,
            onTapUpOutside: onTapUpOutside,
            style: uiSettings?.style,
            obscureText: obscureText,
            autocorrect: uiSettings?.autocorrect ?? true,
            autofillHints: uiSettings?.autofillHints,
            autofocus: autofocus,
            textInputAction: uiSettings?.textInputAction,
            inputFormatters: formatters,
            decoration: inputDecoration,
            countrySelectorNavigator:
                const CountrySelectorNavigator.draggableBottomSheet(),
          )
        : TextFormField(
            enabled: widget.onValueChanged != null,
            controller: textEditingController,
            onFieldSubmitted:
                (uiSettings?.submitFormOnFieldSubmitted ??
                    defaultSubmitFormOnFieldSubmitted())
                ? (_) => context.read<WoFormValuesCubit>().submit(context)
                : null,
            onTapOutside: onTapOutside,
            onTapUpOutside: onTapUpOutside,
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
            inputFormatters: formatters,
            decoration: inputDecoration,
          );

    if (collapsed) {
      return Padding(
        padding: uiSettings?.padding ?? EdgeInsets.zero,
        child: textField,
      );
    }

    return FlexField(
      headerFlex: uiSettings?.headerFlex,
      labelText: labelLocation.isOutside ? uiSettings?.labelText : null,
      labelMaxLines: uiSettings?.labelMaxLines,
      helperText: helperLocation.isOutside ? uiSettings?.helperText : null,
      helperMaxLines: uiSettings?.helperMaxLines,
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

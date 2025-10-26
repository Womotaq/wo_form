import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:rxdart/rxdart.dart';
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
      );

  final String? text;
  final void Function(String? text)? onValueChanged;
  final StringInputUiSettings<T>? uiSettings;
  final SuggestionsSettings<T>? suggestionsSettings;
  final String? errorText;
  final Widget? errorWidget;
  // final WoFieldData<StringInput, String> data;

  @override
  State<StringField> createState() => _StringFieldState<T>();
}

class _StringFieldState<T> extends State<StringField<T>> {
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
          );

    final suggestionsSettings = widget.suggestionsSettings;

    final textField = suggestionsSettings != null
        ? SuggestionsTextField<T>(
            suggestionsSettings: suggestionsSettings,
            textEditingController: textEditingController!,
            inputDecoration: inputDecoration,
            textInputAction: uiSettings?.textInputAction,
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
      labelMaxLines: uiSettings?.labelMaxLines,
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

// TODO : keyboard navigation in suggestions

class SuggestionsTextField<T> extends StatefulWidget {
  const SuggestionsTextField({
    required this.suggestionsSettings,
    required this.textEditingController,
    required this.onChanged,

    // Ui
    this.seperatedBuilder,

    // TextField parameters
    this.inputDecoration,
    this.textStyle,
    this.focusNode,
    this.textInputAction,
    this.autofocus = false,
    this.textCapitalization,
    this.onFieldSubmitted,
    this.onTapOutside,
    this.onTapUpOutside,
    super.key,
  });

  final SuggestionsSettings<T> suggestionsSettings;
  final void Function(String? text)? onChanged;

  /// --- UI ---
  final Widget? seperatedBuilder;

  /// --- TEXT FIELD ---
  final InputDecoration? inputDecoration;
  final TextStyle? textStyle;
  final TextEditingController textEditingController;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<PointerEvent>? onTapOutside;
  final ValueChanged<PointerUpEvent>? onTapUpOutside;

  @override
  State<SuggestionsTextField<T>> createState() => _SuggestionsTextFieldState();
}

class _SuggestionsTextFieldState<T> extends State<SuggestionsTextField<T>> {
  final subject = PublishSubject<String>();
  late final FocusNode _focusNode;
  late final bool _ownFocusNode;
  bool _overlayIsFocused = false;
  OverlayEntry? _overlayEntry;
  final List<T> _suggestions = [];
  int _requestId = 0;

  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    subject.stream
        .distinct()
        .debounceTime(
          widget.suggestionsSettings.debounceDuration ??
              WoFormTheme.DEBOUNCE_DURATION,
        )
        .listen(textChanged);

    // Add focus listener

    _ownFocusNode = widget.focusNode == null;
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(focusListener);
  }

  @override
  void dispose() {
    unawaited(subject.close());
    removeOverlay();
    _focusNode.removeListener(focusListener);
    if (_ownFocusNode) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: widget.inputDecoration,
                style: widget.textStyle,
                controller: widget.textEditingController,
                focusNode: _focusNode,
                autofocus: widget.autofocus,
                textInputAction: widget.textInputAction ?? TextInputAction.done,
                textCapitalization:
                    widget.textCapitalization ?? TextCapitalization.none,
                onFieldSubmitted: widget.onFieldSubmitted,
                onChanged: subject.add,
                onTapOutside: widget.onTapOutside,
                onTapUpOutside: widget.onTapUpOutside,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void textChanged(String text) {
    if (text.isNotEmpty) {
      unawaited(updatePredictions(text));
    } else {
      removeOverlay();
    }
    widget.onChanged?.call(text);
  }

  Future<void> updatePredictions(String text) async {
    if (text.isEmpty) return removeOverlay();
    // requestId: ensure we ignore out-of-order responses
    final currentRequest = ++_requestId;

    try {
      final suggestions = await widget.suggestionsSettings.loadSuggestions(
        text,
      );

      // If a newer request was started while we awaited, ignore this response
      if (currentRequest != _requestId || !mounted) return;

      _suggestions
        ..clear()
        ..addAll(suggestions);

      _overlayEntry?.remove();
      _overlayEntry = _createOverlayEntry();
      if (mounted) {
        Overlay.of(context).insert(_overlayEntry!);
      }
    } catch (e) {
      // If a newer request was started, ignore the error from this stale
      // request
      if (currentRequest != _requestId) return;

      // TODO : use a context provided error handler
      if (kDebugMode) _showSnackBar('An error occured : $e');
    }
  }

  OverlayEntry? _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return null;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) {
        final theme = Theme.of(context);

        return Positioned(
          left: offset.dx,
          top: size.height + offset.dy,
          width: size.width,
          child: CompositedTransformFollower(
            showWhenUnlinked: false,
            link: _layerLink,
            offset: Offset(0, size.height + 5.0),
            child: GestureDetector(
              onTapDown: (_) => _overlayIsFocused = true,
              onTapCancel: () => _overlayIsFocused = false,
              onTapUp: (_) => _overlayIsFocused = false,
              child: Material(
                elevation: 4,
                // Same color as text input
                color: theme.inputDecorationTheme.filled
                    ? theme.inputDecorationTheme.fillColor
                    : null,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _suggestions.length,
                  separatorBuilder: (context, pos) =>
                      widget.seperatedBuilder ?? const SizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    final suggestion = _suggestions[index];
                    return InkWell(
                      onTap: () {
                        final newText =
                            widget.suggestionsSettings.suggestionToText?.call(
                              suggestion,
                            ) ??
                            suggestion.toString();

                        widget.textEditingController.text = newText;
                        widget.onChanged?.call(newText);
                        removeOverlay();
                      },
                      child:
                          widget.suggestionsSettings.suggestionTileBuilder !=
                              null
                          ? widget.suggestionsSettings.suggestionTileBuilder!(
                              suggestion,
                            )
                          : Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                widget.suggestionsSettings.suggestionToText
                                        ?.call(suggestion) ??
                                    suggestion.toString(),
                              ),
                            ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void focusListener() {
    if (!_focusNode.hasFocus && !_overlayIsFocused) {
      removeOverlay();
    }
  }

  void removeOverlay() {
    _suggestions.clear();
    _overlayEntry?.remove();
    _overlayEntry = null;
    _overlayIsFocused = false;
  }

  void _showSnackBar(String errorData) {
    if (kDebugMode) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorData)),
      );
    }
  }
}

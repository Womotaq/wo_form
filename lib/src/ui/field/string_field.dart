import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

enum StringFieldAction { clear, obscure }

@immutable
class StringFieldTheme {
  const StringFieldTheme({
    this.submitFormOnFieldSubmitted,
    this.action,
    this.keyboardType,
    this.obscureText = false,
    this.autocorrect = true,
    this.autofillHints,
    this.autofocus = false,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.maxLines = 1,
    this.labelText,
    this.hintText,
  });

  const StringFieldTheme.email({
    this.submitFormOnFieldSubmitted,
    this.autofocus = false,
    this.textInputAction,
    this.labelText,
    this.hintText,
  })  : action = null,
        keyboardType = TextInputType.emailAddress,
        obscureText = false,
        autocorrect = false,
        autofillHints = const [AutofillHints.email],
        textCapitalization = TextCapitalization.none,
        style = null,
        maxLines = 1;

  const StringFieldTheme.password({
    this.submitFormOnFieldSubmitted,
    this.textInputAction,
    this.labelText,
    this.hintText,
  })  : action = StringFieldAction.obscure,
        keyboardType = TextInputType.visiblePassword,
        obscureText = true,
        autocorrect = false,
        autofocus = false,
        autofillHints = const [
          AutofillHints.password,
          AutofillHints.newPassword,
        ],
        textCapitalization = TextCapitalization.none,
        style = null,
        maxLines = 1;

  final StringFieldAction? action;
  final bool? submitFormOnFieldSubmitted;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool? autocorrect;
  final Iterable<String>? autofillHints;
  final bool? autofocus;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final TextStyle? style;
  final int? maxLines;
  final String? labelText;
  final String? hintText;

  StringFieldTheme merge(StringFieldTheme? other) => other == null
      ? this
      : StringFieldTheme(
          action: action ?? other.action,
          submitFormOnFieldSubmitted:
              submitFormOnFieldSubmitted ?? other.submitFormOnFieldSubmitted,
          keyboardType: keyboardType ?? other.keyboardType,
          obscureText: obscureText ?? other.obscureText,
          autocorrect: autocorrect ?? other.autocorrect,
          autofillHints: autofillHints ?? other.autofillHints,
          autofocus: autofocus ?? other.autofocus,
          textInputAction: textInputAction ?? other.textInputAction,
          textCapitalization: textCapitalization ?? other.textCapitalization,
          style: style ?? other.style,
          maxLines: maxLines ?? other.maxLines,
          labelText: labelText ?? other.labelText,
          hintText: hintText ?? other.hintText,
        );
}

class StringField<T extends WoFormCubit> extends StatefulWidget {
  const StringField({
    required this.input,
    this.theme,
    super.key,
  });

  final StringInput Function(WoForm form) input;
  final StringFieldTheme? theme;

  @override
  State createState() => _StringFieldState<T>();
}

class _StringFieldState<T extends WoFormCubit> extends State<StringField<T>> {
  late final StringFieldTheme mergedTheme;
  final textEditingController = TextEditingController();
  bool obscureText = false;

  @override
  void initState() {
    super.initState();

    final themeFromInput = widget.input(context.read<T>().state).fieldTheme;
    mergedTheme = (widget.theme?.merge(themeFromInput) ?? themeFromInput) ??
        const StringFieldTheme();

    obscureText = mergedTheme.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    return BlocSelector<T, WoForm, StringInput>(
      selector: (form) => widget.input(form),
      builder: (context, input) {
        final text = input.value;

        return BlocSelector<T, WoForm, String?>(
          selector: (form) =>
              form.getInvalidExplanation(input, context.formL10n),
          builder: (context, errorText) {
            if (text != textEditingController.text) {
              textEditingController.text = text;
            }

            return TextFormField(
              controller: textEditingController,
              onChanged: (value) => cubit.onInputChanged(
                input: input.copyWith(value: value),
              ),
              onFieldSubmitted:
                  (mergedTheme.submitFormOnFieldSubmitted ?? false)
                      ? (value) => cubit.submit()
                      : null,
              keyboardType: mergedTheme.keyboardType,
              obscureText: obscureText,
              autocorrect: mergedTheme.autocorrect ?? true,
              autofillHints: mergedTheme.autofillHints,
              autofocus: mergedTheme.autofocus ?? false,
              textInputAction: mergedTheme.textInputAction,
              textCapitalization:
                  mergedTheme.textCapitalization ?? TextCapitalization.none,
              style: mergedTheme.style,
              maxLines: mergedTheme.maxLines,
              decoration: InputDecoration(
                labelText: mergedTheme.labelText,
                hintText: mergedTheme.hintText,
                errorText: errorText,
                errorMaxLines: 10,
                suffixIcon: switch (mergedTheme.action) {
                  null => null,
                  StringFieldAction.clear => IconButton(
                      onPressed: () => cubit.onInputChanged(
                        input: input.copyWith(value: ''),
                      ),
                      icon: const Icon(Icons.clear),
                    ),
                  StringFieldAction.obscure => IconButton(
                      onPressed: () => setState(() {
                        obscureText = !obscureText;
                      }),
                      icon: obscureText
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                },
              ),
            );
          },
        );
      },
    );
  }
}

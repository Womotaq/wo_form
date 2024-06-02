import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class StringField<T extends WoFormCubit> extends StatefulWidget {
  const StringField({
    required this.getInput,
    this.theme,
    super.key,
  });

  final StringInput Function(WoForm form) getInput;
  final StringFieldSettings? theme;

  @override
  State createState() => _StringFieldState<T>();
}

class _StringFieldState<T extends WoFormCubit> extends State<StringField<T>> {
  late final StringFieldSettings mergedSettings;
  final textEditingController = TextEditingController();
  bool obscureText = false;

  @override
  void initState() {
    super.initState();

    final themeFromInput =
        widget.getInput(context.read<T>().state).fieldSettings;
    mergedSettings = widget.theme?.merge(themeFromInput) ?? themeFromInput;

    obscureText = mergedSettings.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    return BlocSelector<T, WoForm, StringInput>(
      selector: widget.getInput,
      builder: (context, input) {
        final text = input.value;

        return BlocSelector<T, WoForm, String?>(
          selector: (form) =>
              form.getInvalidExplanation(input, context.formL10n),
          builder: (context, errorText) {
            if (text != textEditingController.text) {
              textEditingController.text = text ?? '';
            }

            return TextFormField(
              controller: textEditingController,
              onChanged: (value) => cubit.onInputChanged(
                input: input.copyWith(value: value),
              ),
              onFieldSubmitted:
                  (mergedSettings.submitFormOnFieldSubmitted ?? false)
                      ? (value) => cubit.submit()
                      : null,
              keyboardType: mergedSettings.keyboardType,
              obscureText: obscureText,
              autocorrect: mergedSettings.autocorrect ?? true,
              autofillHints: mergedSettings.autofillHints,
              autofocus: mergedSettings.autofocus ?? false,
              textInputAction: mergedSettings.textInputAction,
              textCapitalization:
                  mergedSettings.textCapitalization ?? TextCapitalization.none,
              maxLines: mergedSettings.maxLines,
              decoration: InputDecoration(
                labelText: mergedSettings.labelText,
                hintText: mergedSettings.hintText,
                errorText: errorText,
                errorMaxLines: 10,
                suffixIcon: switch (mergedSettings.action) {
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

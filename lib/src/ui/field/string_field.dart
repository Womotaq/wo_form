import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class StringField extends StatefulWidget {
  const StringField({
    required this.inputId,
    this.settings,
    super.key,
  });

  final String inputId;
  final StringFieldSettings? settings;

  StringInput getInput(WoForm form) =>
      form.getInput(inputId: inputId)! as StringInput;

  @override
  State createState() => _StringFieldState();
}

class _StringFieldState extends State<StringField> {
  late final StringFieldSettings mergedSettings;
  final textEditingController = TextEditingController();
  bool obscureText = false;

  @override
  void initState() {
    super.initState();

    final input = context.read<WoForm>().getInput(inputId: widget.inputId)!
        as StringInput;
    final inputSettings = input.fieldSettings;
    final mergedSettings =
        widget.settings?.merge(inputSettings) ?? inputSettings;

    obscureText = mergedSettings.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, String>(
          selector: (values) => (values[widget.inputId] as String?) ?? '',
          builder: (context, text) {
            if (text != textEditingController.text) {
              textEditingController.text = text;
            }

            final errorText = status is! InvalidValuesStatus
                ? null
                : widget
                    .getInput(form)
                    .getInvalidExplanation(text, context.formL10n);

            return TextFormField(
              controller: textEditingController,
              onChanged: (value) => valuesCubit.onValueChanged(
                inputId: widget.inputId,
                value: value,
              ),
              onFieldSubmitted:
                  (mergedSettings.submitFormOnFieldSubmitted ?? false)
                      ? (value) => valuesCubit.submit()
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
                      onPressed: () => valuesCubit.onValueChanged(
                        inputId: widget.inputId,
                        value: null,
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

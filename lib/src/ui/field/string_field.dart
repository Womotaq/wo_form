import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class StringField extends StatefulWidget {
  const StringField({
    required this.inputPath,
    this.settings,
    super.key,
  });

  final String inputPath;
  final StringFieldSettings? settings;

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

    final input = context.read<WoForm>().getInput(path: widget.inputPath);
    if (input is! StringInput) {
      throw ArgumentError(
        'Expected <StringInput> at path: "${widget.inputPath}", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.fieldSettings;
    mergedSettings = widget.settings?.merge(inputSettings) ?? inputSettings;

    obscureText = mergedSettings.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input =
        context.read<WoForm>().getInput(path: widget.inputPath)! as StringInput;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, String>(
          selector: (values) {
            final value = values[widget.inputPath];
            if (value is! String?) {
              throw ArgumentError(
                'Expected <String?> at inputId: "${widget.inputPath}", '
                'found: <${value.runtimeType}>',
              );
            }
            return value ?? '';
          },
          builder: (context, text) {
            if (text != textEditingController.text) {
              textEditingController.text = text;
            }

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(text, context.formL10n);

            return ListTile(
              title: TextFormField(
                controller: textEditingController,
                onChanged: (value) => valuesCubit.onValueChanged(
                  inputPath: widget.inputPath,
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
                textCapitalization: mergedSettings.textCapitalization ??
                    TextCapitalization.none,
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
                          inputPath: widget.inputPath,
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
              ),
            );
          },
        );
      },
    );
  }
}

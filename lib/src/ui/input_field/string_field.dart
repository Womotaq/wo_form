import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/ui/prefab/localize_form_error.dart';
import 'package:wo_form/wo_form.dart';

class StringField extends StatefulWidget {
  const StringField({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final StringInputUiSettings? uiSettings;

  @override
  State createState() => _StringFieldState();
}

class _StringFieldState extends State<StringField> {
  final textEditingController = TextEditingController();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = context.read<WoForm>().getInput(
          path: widget.inputPath,
          valuesMap: context.read<WoFormValuesCubit>().state,
        );
    if (input is! StringInput) {
      throw ArgumentError(
        'Expected <StringInput> at path: "${widget.inputPath}", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings =
        widget.uiSettings?.merge(inputSettings) ?? inputSettings;

    obscureText = mergedSettings.obscureText ?? false;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<String>(
          inputPath: widget.inputPath,
          builder: (context, text_) {
            final text = text_ ?? '';

            if (text != textEditingController.text) {
              textEditingController.text = text;
            }

            final labelText = (mergedSettings.labelText ?? '') +
                (input.isRequired ? '*' : '');
            final showTitle = labelText.isNotEmpty && labelText != '*';

            final showHelper = (mergedSettings.helperText ?? '').isNotEmpty;

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(
                    text,
                    localizeInputError(context.formL10n),
                  );

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WoPadding.horizontalMedium(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showTitle || showHelper) WoGap.small,
                      if (showTitle)
                        Text(
                          labelText,
                          style: context.textTheme.bodyLarge,
                        ),
                      if (showHelper)
                        Text(
                          mergedSettings.helperText ?? '',
                          style: context.woTheme.infoStyle,
                        ),
                    ],
                  ),
                ),
                ListTile(
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
                      border: const OutlineInputBorder(),
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
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined),
                          ),
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

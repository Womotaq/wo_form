import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/ui/input_field/input_header.dart';
import 'package:wo_form/wo_form.dart';

class StringFieldBuilder extends StatelessWidget {
  const StringFieldBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final StringInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = context.read<WoForm>().getInput(
          path: inputPath,
          values: context.read<WoFormValuesCubit>().state,
        );
    if (input is! StringInput) {
      throw ArgumentError(
        'Expected <StringInput> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<String>(
          inputPath: inputPath,
          builder: (context, value) {
            final String? errorText;
            if (status is InvalidValuesStatus) {
              final error = input.getError(value);
              if (error == null) {
                errorText = null;
              } else {
                final translateError = context
                        .read<WoFormInputErrorTranslator?>()
                        ?.translateError ??
                    (error) => error.toString();
                errorText = translateError(error);
              }
            } else {
              errorText = null;
            }

            final fieldData = WoFieldData<String, StringInputUiSettings>(
              inputPath: inputPath,
              value: value,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (String? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return mergedSettings.widgetBuilder?.call(fieldData) ??
                WoFormTheme.of(context)?.stringFieldBuilder?.call(fieldData) ??
                StringField(data: fieldData);
          },
        );
      },
    );
  }
}

class StringField extends StatefulWidget {
  const StringField({required this.data, super.key});

  final WoFieldData<String, StringInputUiSettings> data;

  @override
  State<StringField> createState() => _StringFieldState();
}

class _StringFieldState extends State<StringField> {
  final textEditingController = TextEditingController();
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    textEditingController.text = widget.data.value ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputHeader(
          labelText: widget.data.uiSettings.labelText ?? '',
          helperText: widget.data.uiSettings.helperText ?? '',
          errorText: '',
        ),
        ListTile(
          title: TextFormField(
            controller: textEditingController,
            onChanged: widget.data.onValueChanged,
            onFieldSubmitted:
                (widget.data.uiSettings.submitFormOnFieldSubmitted ?? false)
                    ? (_) => context.read<WoFormValuesCubit>().submit()
                    : null,
            keyboardType: widget.data.uiSettings.keyboardType,
            obscureText: obscureText,
            autocorrect: widget.data.uiSettings.autocorrect ?? true,
            autofillHints: widget.data.uiSettings.autofillHints,
            autofocus: widget.data.uiSettings.autofocus ?? false,
            textInputAction: widget.data.uiSettings.textInputAction,
            textCapitalization: widget.data.uiSettings.textCapitalization ??
                TextCapitalization.none,
            maxLines: widget.data.uiSettings.maxLines,
            decoration: InputDecoration(
              hintText: widget.data.uiSettings.hintText,
              errorText: widget.data.errorText,
              suffixIcon: switch (widget.data.uiSettings.action) {
                null => null,
                StringFieldAction.clear => IconButton(
                    onPressed: () => widget.data.onValueChanged(null),
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
  }
}

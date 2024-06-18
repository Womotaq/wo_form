import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class StringField extends StatefulWidget {
  const StringField({required this.data, super.key});

  final WoFieldData<StringInput, String, StringInputUiSettings> data;

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
            enabled: widget.data.onValueChanged != null,
            controller: textEditingController,
            onChanged: widget.data.onValueChanged,
            onFieldSubmitted:
                (widget.data.uiSettings.submitFormOnFieldSubmitted ?? true)
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
            maxLines: widget.data.uiSettings.maxLines == 0
                ? null
                : widget.data.uiSettings.maxLines ?? 1,
            decoration: InputDecoration(
              hintText: widget.data.uiSettings.hintText,
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

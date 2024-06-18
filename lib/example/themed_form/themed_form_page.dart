import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class ShowCustomThemeCubit extends Cubit<bool> {
  ShowCustomThemeCubit() : super(false);

  void set(bool value) => emit(value);

  static WoFormThemeData customTheme = const WoFormThemeData(
    submitButtonBuilder: CustomSubmitButton.new,
    stringFieldBuilder: CustomStringField.new,
  );
}

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton(this.data, {super.key});

  final SubmitButtonData data;

  @override
  Widget build(BuildContext context) {
    final formStatus = context.watch<WoFormStatusCubit>().state;

    final loadingIndicator = formStatus is SubmittingStatus
        ? SizedBox.square(
            dimension: 12,
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.onPrimary,
              strokeWidth: 2,
            ),
          )
        : null;

    final text = Text(
      data.text ?? '',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: data.onPressed == null
                ? Theme.of(context).disabledColor
                : Theme.of(context).colorScheme.onPrimary,
          ),
    );
    final child = loadingIndicator ?? text;

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: context.colorScheme.secondary,
          ),
          onPressed: data.onPressed,
          child: child,
        );
      case SubmitButtonPosition.bottom:
        return Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 16,
            right: 16,
          ),
          child: FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: context.colorScheme.tertiary,
              padding: const EdgeInsets.all(24),
            ),
            onPressed: data.onPressed,
            child: child,
          ),
        );
    }
  }
}

class CustomStringField extends StatefulWidget {
  const CustomStringField(this.data, {super.key});

  final WoFieldData<StringInput, String, StringInputUiSettings> data;

  @override
  State<CustomStringField> createState() => _CustomStringFieldState();
}

class _CustomStringFieldState extends State<CustomStringField> {
  final textEditingController = TextEditingController();
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    textEditingController.text = widget.data.value ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
          labelText: widget.data.uiSettings.labelText ?? '',
          helperText: widget.data.uiSettings.helperText ?? '',
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
    );
  }
}

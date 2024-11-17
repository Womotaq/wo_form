import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class ShowCustomThemeCubit extends Cubit<bool> {
  ShowCustomThemeCubit() : super(false);

  void set(bool value) => emit(value);

  static WoFormThemeData customTheme = WoFormThemeData(
    defaultPhoneCoutry: IsoCode.FR,
    headerBuilder: CustomFormHeader.new,
    inputsNodeExpanderBuilder: CustomInputsNodeExpander.new,
    stringFieldBuilder: CustomStringField.new,
    submitButtonBuilder: CustomSubmitButton.new,
    verticalSpacing: 16,
    onSubmitError: (context, status) => showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error),
        content: Text(status.error.toString()),
      ),
    ),
  );
}

class CustomFormHeader extends StatelessWidget {
  const CustomFormHeader(this.data, {super.key});

  final WoFormHeaderData data;

  @override
  Widget build(BuildContext context) {
    final labelText = data.labelText ?? '';
    final helperText = data.helperText ?? '';

    if (labelText.isEmpty && helperText.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            labelText,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Divider(color: Theme.of(context).colorScheme.primary),
          ),
          if (helperText.isNotEmpty) ...[
            Text(helperText),
            const SizedBox(height: 8),
          ],
          const SizedBox(height: 24),
        ],
      ),
    );
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
    obscureText = widget.data.uiSettings.obscureText ?? false;
    textEditingController.text = widget.data.value ?? '';
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(
          builder: (context) {
            final headerData = WoFormInputHeaderData(
              path: widget.data.path,
              labelText: widget.data.uiSettings.labelText,
              helperText: widget.data.uiSettings.helperText,
            );

            return (WoFormTheme.of(context)?.inputHeaderBuilder ??
                    InputHeader.new)
                .call(headerData);
          },
        ),
        ListTile(
          title: TextFormField(
            enabled: widget.data.onValueChanged != null,
            controller: textEditingController,
            onChanged: widget.data.onValueChanged,
            onFieldSubmitted:
                (widget.data.uiSettings.submitFormOnFieldSubmitted ?? true)
                    ? (_) => context.read<WoFormValuesCubit>().submit(context)
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
        const SizedBox(height: 8),
      ],
    );
  }
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

    final buttonStyle = data.position == SubmitButtonPosition.appBar
        ? FilledButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
          )
        : FilledButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.all(24),
          );

    final button = data.icon == null
        ? FilledButton(
            style: buttonStyle,
            onPressed: data.onPressed,
            child: child,
          )
        : FilledButton.icon(
            style: buttonStyle,
            onPressed: data.onPressed,
            icon: Icon(data.icon),
            label: child,
          );

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return button;
      case SubmitButtonPosition.body:
        return Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 16,
            right: 16,
          ),
          child: button,
        );
      case SubmitButtonPosition.bottomBar:
        return Padding(
          padding: const EdgeInsets.all(16),
          child: button,
        );
      case SubmitButtonPosition.floating:
        return Padding(
          padding: const EdgeInsets.all(16),
          child: button,
        );
    }
  }
}

class CustomInputsNodeExpander extends StatelessWidget {
  const CustomInputsNodeExpander(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final errorText = data.errorText ?? '';
    final helperText = data.uiSettings.helperText ?? '';

    return Theme(
      // just to remove borders of ExpansionTile
      data: theme.copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          data.uiSettings.labelText ?? '',
          style:
              theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: errorText.isNotEmpty
            ? Text(
                errorText,
                style: theme.textTheme.labelMedium
                    ?.copyWith(color: theme.colorScheme.error),
              )
            : helperText.isNotEmpty
                ? Text(
                    helperText,
                    style: theme.textTheme.labelMedium,
                  )
                : null,
        children: data.input.children
            .map(
              (i) => Padding(
                padding: EdgeInsets.only(
                  bottom: WoFormTheme.of(context)?.verticalSpacing ?? 0,
                ),
                child: i.toWidget(parentPath: data.path),
              ),
            )
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';

/// Default submt button. Can be overriden by submitButtonBuilder from
/// [WoFormUiSettings] or using [WoFormTheme].
class SubmitButton extends StatelessWidget {
  const SubmitButton(this.data, {this.margin, super.key});

  final SubmitButtonData data;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final submitting = context.select(
      (WoFormStatusCubit? c) => c?.state is SubmittingStatus,
    );

    final theme = Theme.of(context);
    final woTheme = WoFormTheme.of(context);

    final inheritedFormStyle = woTheme?.submitButtonStyle?.call(context);
    final inheritedAppStyle = theme.filledButtonTheme.style;

    final backgroundColorProperty =
        inheritedFormStyle?.backgroundColor ??
        inheritedAppStyle?.backgroundColor;
    final foregroundColorProperty =
        inheritedFormStyle?.foregroundColor ??
        inheritedAppStyle?.backgroundColor;

    final backgroundColor = submitting || data.onPressed != null
        ? backgroundColorProperty?.resolve({}) ?? theme.colorScheme.primary
        : backgroundColorProperty?.resolve({WidgetState.disabled}) ??
              theme.disabledColor;
    final foregroundColor = submitting || data.onPressed != null
        ? foregroundColorProperty?.resolve({}) ?? theme.colorScheme.onPrimary
        : foregroundColorProperty?.resolve({WidgetState.disabled}) ??
              inheritedAppStyle?.backgroundColor?.resolve({}) ??
              theme.disabledColor;

    final loadingIndicator = submitting
        ? SizedBox.square(
            dimension: 12,
            child: CircularProgressIndicator(
              color: foregroundColor,
              strokeWidth: 2,
            ),
          )
        : null;

    final text =
        (data.text != null && data.text!.isNotEmpty) || data.icon == null
        ? Text(
            data.text ?? 'Submit',
            style:
                (inheritedFormStyle?.textStyle ?? inheritedAppStyle?.textStyle)
                    ?.resolve({})
                    ?.copyWith(color: foregroundColor) ??
                TextStyle(
                  fontWeight: FontWeight.bold,
                  color: foregroundColor,
                ),
          )
        : null;

    final child = Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: loadingIndicator == null ? 1 : 0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (data.icon != null) Icon(data.icon),
              if (data.icon != null && text != null) const SizedBox(width: 8),
              ?text,
            ],
          ),
        ),
        ?loadingIndicator,
      ],
    );

    final margin =
        this.margin ??
        woTheme?.submitButtonMargin
                ?.call(data.position)
                .add(const EdgeInsets.symmetric(horizontal: 16))
            as EdgeInsets?;

    final button = FilledButton(
      style: inheritedFormStyle ?? inheritedAppStyle,
      onPressed: data.onPressed,
      child: child,
    );

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return button;
      case SubmitButtonPosition.body:
        return Padding(
          padding:
              margin ??
              const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
                bottom: 12,
              ),
          child: button,
        );
      case SubmitButtonPosition.bottomBar:
        return Padding(
          padding: margin ?? const EdgeInsets.all(16),
          child: button,
        );
      case SubmitButtonPosition.floating:
        return text == null
            ? FloatingActionButton(
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                onPressed: data.onPressed,
                child: child,
              )
            : FloatingActionButton.extended(
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                onPressed: data.onPressed,
                label: child,
              );
    }
  }
}

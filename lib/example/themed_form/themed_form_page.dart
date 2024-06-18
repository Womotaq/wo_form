import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class ShowCustomThemeCubit extends Cubit<bool> {
  ShowCustomThemeCubit() : super(false);

  void set(bool value) => emit(value);

  static WoFormThemeData customTheme = const WoFormThemeData(
    submitButtonBuilder: CustomSubmitButton.new,
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

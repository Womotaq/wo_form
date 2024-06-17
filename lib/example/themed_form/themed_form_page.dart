import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/form_creator/form_creator_page.dart';
import 'package:wo_form/wo_form.dart';

// TODO
class ThemedFormPage extends StatelessWidget {
  const ThemedFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoFormTheme(
      data: const WoFormThemeData(submitButtonBuilder: CustomSubmitButton.new),
      child: woFormCreator.toPage(),
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
        ? Padding(
            padding: const EdgeInsets.only(right: 4),
            child: SizedBox.square(
              dimension: 16,
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.onPrimary,
                strokeWidth: 2,
              ),
            ),
          )
        : null;

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return FilledButton.icon(
          onPressed: data.onPressed,
          icon: loadingIndicator,
          label: Text(data.text ?? ''), // TODO : woFormL10n.submit
        );
      // TODO : change
      case SubmitButtonPosition.bottom:
        return Padding(
          padding: const EdgeInsets.only(top: 32),
          child: ListTile(
            title: FilledButton.icon(
              onPressed: data.onPressed,
              icon: loadingIndicator,
              label: Text(data.text ?? ''), // TODO : woFormL10n.submit
            ),
          ),
        );
    }
  }
}

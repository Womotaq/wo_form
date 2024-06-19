import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormBuilder extends StatelessWidget {
  const WoFormBuilder({required this.form, super.key});

  final WoForm form;

  @override
  Widget build(BuildContext context) {
    return WoFormInitializer(
      form: form,
      child: BlocListener<WoFormStatusCubit, WoFormStatus>(
        listener: (context, status) {
          switch (status) {
            case SubmitSuccessStatus():
              form.onSubmitSuccess?.call(context);
            case SubmitErrorStatus():
              (form.onSubmitError ?? WoFormTheme.of(context)?.onSubmitError)
                  ?.call(context, status);
            default:
          }
        },
        child: Builder(
          builder: (context) {
            // TODO: theme.formPageBuilder ?
            const page = WoFormPage();

            return form.themeBuilder == null
                ? page
                : Theme(
                    data: form.themeBuilder!(context),
                    child: page,
                  );
          },
        ),
      ),
    );
  }
}

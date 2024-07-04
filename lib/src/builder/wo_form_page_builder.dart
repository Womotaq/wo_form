import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class WoFormPageBuilder extends StatelessWidget {
  const WoFormPageBuilder({required this.form, super.key});

  final WoForm form;

  @override
  Widget build(BuildContext context) {
    return WoFormInitializer(
      form: form,
      child: Builder(
        builder: (context) {
          final page =
              (form.pageBuilder ?? WoFormTheme.of(context)?.formPageBuilder)
                      ?.call(context) ??
                  const WoFormPage();

          return form.themeBuilder == null
              ? page
              : Theme(
                  data: form.themeBuilder!(context),
                  child: page,
                );
        },
      ),
    );
  }
}

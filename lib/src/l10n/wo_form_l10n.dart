import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class WoFormL10n {
  const WoFormL10n({
    required this.submit,
    required this.next,
    required this.translateError,
    required this.errors,
    required this.selectDate,
    required this.selectTime,
    required this.days,
    required this.hours,
    required this.minutes,
  });

  factory WoFormL10n.fromLanguageCode({
    required String languageCode,
    String? submit,
    String? next,
    TranslateInputErrorDef? translateError,
    CountNullableDef? errors,
    CountDef? days,
    CountDef? hours,
    CountDef? minutes,
    String? selectDate,
    String? selectTime,
  }) =>
      (switch (languageCode) {
        'en' => WoFormL10n.en,
        'fr' => WoFormL10n.fr,
        _ => throw UnsupportedError('Unsupported languageCode : $languageCode'),
      }).call(
        submit: submit,
        next: next,
        translateError: translateError,
        errors: errors,
        days: days,
        hours: hours,
        minutes: minutes,
        selectDate: selectDate,
        selectTime: selectTime,
      );

  /// Default english localization
  factory WoFormL10n.en({
    String? submit,
    String? next,
    TranslateInputErrorDef? translateError,
    CountNullableDef? errors,
    String? selectDate,
    String? selectTime,
    CountDef? days,
    CountDef? hours,
    CountDef? minutes,
  }) => WoFormL10n(
    submit: submit ?? 'Save',
    next: next ?? 'Next',
    translateError:
        translateError ??
        (error) => switch (error) {
          EmptyInputError() => 'This field is required.',
          InvalidInputError() => 'This value is invalid.',
          MaxBoundInputError() => 'Maximum limit exceeded.',
          MinBoundInputError() => 'Minimum limit exceeded.',
          final CustomInputError e => e.message,
        },
    errors:
        errors ??
        (count) {
          if (count == 0) return null;
          if (count == 1) return '1 error';
          return '$count errors';
        },
    selectDate: selectDate ?? 'Select a date',
    selectTime: selectTime ?? 'Select a time',
    days: days ?? (count) => count > 1 ? 'Days' : 'Day',
    hours: hours ?? (count) => count > 1 ? 'Hours' : 'Hour',
    minutes: minutes ?? (count) => count > 1 ? 'Minutes' : 'Minute',
  );

  /// Default french localization
  factory WoFormL10n.fr({
    String? submit,
    String? next,
    TranslateInputErrorDef? translateError,
    CountNullableDef? errors,
    String? selectDate,
    String? selectTime,
    CountDef? days,
    CountDef? hours,
    CountDef? minutes,
  }) => WoFormL10n(
    submit: submit ?? 'Enregistrer',
    next: next ?? 'Suivant',
    translateError:
        translateError ??
        (error) => switch (error) {
          EmptyInputError() => 'Ce champ doit être renseigné.',
          InvalidInputError() => 'Cette valeur est incorrecte.',
          MaxBoundInputError() => 'Au dessus de la limite maximale.',
          MinBoundInputError() => 'En dessous du minimum requis.',
          final CustomInputError e => e.message,
        },
    errors:
        errors ??
        (count) {
          if (count == 0) return null;
          if (count == 1) return '1 erreur';
          return '$count erreurs';
        },
    selectDate: selectDate ?? 'Sélectionner une date',
    selectTime: selectTime ?? 'Sélectionner une heure',
    days: days ?? (count) => count > 1 ? 'Jours' : 'Jour',
    hours: hours ?? (count) => count > 1 ? 'Heure' : 'Heures',
    minutes: minutes ?? (count) => count > 1 ? 'Minutes' : 'Minute',
  );

  factory WoFormL10n.of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<WoFormL10nProvider>()?.l10n ??
      WoFormL10n.en();

  final String submit;
  final String next;

  /// Called when a field contains an error. Usually displayed in
  /// [FlexField.errorText].
  ///
  /// If null or an empty string is returned, no error text will be displayed.
  final TranslateInputErrorDef translateError;

  /// Called when a node contains hidden fields with errors, like
  /// [InputsNodeExpander].
  ///
  /// If null or an empty string is returned, no error text will be displayed.
  final CountNullableDef errors;
  final CountDef days;
  final CountDef hours;
  final CountDef minutes;
  final String selectDate;
  final String selectTime;
}

typedef TranslateInputErrorDef = String? Function(WoFormInputError error);
typedef CountDef = String Function(int count);
typedef CountNullableDef = String? Function(int count);

class WoFormL10nProvider extends InheritedWidget {
  const WoFormL10nProvider({
    required this.l10n,
    required super.child,
    super.key,
  });

  final WoFormL10n l10n;

  @override
  bool updateShouldNotify(WoFormL10nProvider oldWidget) =>
      oldWidget.l10n != l10n;
}

extension WoFormL10nContext on BuildContext {
  WoFormL10n get woFormL10n => WoFormL10n.of(this);
}

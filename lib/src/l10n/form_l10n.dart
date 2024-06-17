import 'package:flutter/material.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations.dart';

export 'package:wo_form/src/l10n/arb_gen/form_localizations.dart';

extension FormLocalizationsX on BuildContext {
  FormLocalizations get formL10n => FormLocalizations.of(this);
}

// TODO : remove

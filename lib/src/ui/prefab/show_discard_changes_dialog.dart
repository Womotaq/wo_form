import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

void showDiscardChangesDialog(BuildContext context) => showActionDialog(
      pageContext: context,
      title: context.formL10n.discardChangesQuestion,
      actionText: context.formL10n.discardChanges,
      onAction: Navigator.of(context).pop,
      cancelText: context.formL10n.keepEditing,
    );

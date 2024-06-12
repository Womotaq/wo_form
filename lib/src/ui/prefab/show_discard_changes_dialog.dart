import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

Future<bool?> showDiscardChangesDialog(BuildContext context) async =>
    showActionDialog(
      pageContext: context,
      title: context.formL10n.discardChangesQuestion,
      actionText: context.formL10n.discardChanges,
      onAction: () => true,
      cancelText: context.formL10n.keepEditing,
    );

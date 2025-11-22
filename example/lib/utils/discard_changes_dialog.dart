import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

Future<bool?> showDiscardChangesDialogIfWoFormUnsaved(
  BuildContext context,
) async =>
    context.read<WoFormValuesCubit>().isPure ||
            context.read<WoFormStatusCubit>().state is SubmitSuccessStatus
        ? true
        : showDialog<bool>(
            context: context,
            builder: (BuildContext dialogContext) {
              return AlertDialog(
                title: const Text('Abandonner les modifications en cours ?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(dialogContext).pop(),
                    child: const Text("Continuer d'éditer"),
                  ),
                  FilledButton.tonal(
                    onPressed: () => Navigator.of(dialogContext).pop(true),
                    child: const Text('Quitter'),
                  ),
                ],
              );
            },
          );

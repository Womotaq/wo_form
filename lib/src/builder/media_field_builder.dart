import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class MediaFieldBuilder extends StatelessWidget {
  const MediaFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final MediaInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();
    final input = getNode(context);

    return WoFormNodeFocusManager(
      path: path,
      child: BlocSelector<WoFormLockCubit, Set<String>, bool>(
        selector: (lockedInputs) => lockedInputs.contains(path),
        builder: (context, inputIsLocked) {
          return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
            builder: (context, status) {
              return WoFormValueBuilder<List<dynamic>>(
                path: path,
                builder: (context, selectedValues_) {
                  final selectedValues =
                      selectedValues_?.whereType<Media>().toList() ?? [];

                  final String? errorText;
                  if (status is InProgressStatus) {
                    final error = status.getError(path: path);
                    if (error == null) {
                      errorText = null;
                    } else {
                      errorText = context.woFormL10n.translateError(error);
                    }
                  } else {
                    errorText = null;
                  }

                  final fieldData = WoFieldData(
                    path: path,
                    input: input,
                    value: selectedValues,
                    errorText: errorText,
                    onValueChanged: inputIsLocked
                        ? null
                        : (
                            List<Media>? values, {
                            UpdateStatus updateStatus = UpdateStatus.yes,
                          }) async {
                            valuesCubit.onValueChanged(
                              path: path,
                              value: values,
                            );

                            input.onValueChanged?.call(values);

                            if (input.submitFormOnSelect) {
                              await valuesCubit.submit(context);
                            }
                          },
                  );

                  final mediaFieldBuilder =
                      input.uiSettings?.widgetBuilder ??
                      WoFormTheme.of(context)?.mediaFieldBuilder ??
                      MediaField.new;

                  return mediaFieldBuilder(fieldData);
                },
              );
            },
          );
        },
      ),
    );
  }

  MediaInput getNode(BuildContext context) {
    final input = context.read<WoFormValuesCubit>().getNode(path: path);
    if (input is! MediaInput) {
      throw ArgumentError(
        'Expected <MediaInput> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const MediaInputUiSettings();

    return input.copyWith(uiSettings: mergedSettings);
  }
}

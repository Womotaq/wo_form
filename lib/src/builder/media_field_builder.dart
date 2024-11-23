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
    final root = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = root.getChild(path: path, values: valuesCubit.state);
    if (input is! MediaInput) {
      throw ArgumentError(
        'Expected <MediaInput> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(input.uiSettings) ?? input.uiSettings;

    return BlocSelector<WoFormLockCubit, Set<String>, bool>(
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
                    errorText =
                        context.read<WoFormL10n?>()?.translateError(error);
                  }
                } else {
                  errorText = null;
                }

                final fieldData =
                    WoFieldData<MediaInput, List<Media>, MediaInputUiSettings>(
                  path: path,
                  input: input,
                  value: selectedValues,
                  errorText: errorText,
                  uiSettings: mergedSettings,
                  onValueChanged: inputIsLocked
                      ? null
                      : (
                          List<Media>? values, {
                          UpdateStatus updateStatus = UpdateStatus.yes,
                        }) {
                          valuesCubit.onValueChanged(
                            path: path,
                            value: values,
                          );

                          input.onValueChanged?.call(values);

                          if (input.submitFormOnSelect) {
                            valuesCubit.submit(context);
                          }
                        },
                );

                final mediaFieldBuilder = mergedSettings.widgetBuilder ??
                    WoFormTheme.of(context)?.mediaFieldBuilder;

                if (mediaFieldBuilder == null) {
                  throw UnimplementedError(
                    'MediaInput has no default field. '
                    'Either create your own or use MediaField '
                    'from wo_form_service.',
                  );
                }

                return mediaFieldBuilder(fieldData);
              },
            );
          },
        );
      },
    );
  }
}

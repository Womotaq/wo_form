import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:universal_html/html.dart' as html;
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/utils/constrained_column.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

part '../builder/wo_form_page_builder.dart';
part 'focus_manager.dart';
part 'wo_form_cubit.dart';
part 'wo_form_hydrated_cubit.dart';

class WoForm extends StatelessWidget {
  WoForm({
    required List<WoFormNode> children,
    ExportSettings? exportSettings,
    WoFormUiSettings? uiSettings,
    Json? initialValues,

    /// If not null, the form's values are saved on this device, and restored
    /// when the form is opened again. See [PersistenceSettings].
    PersistenceSettings? persistenceSettings,
    this.onStatusUpdate,
    this.canSubmit,
    this.onSubmitting,
    this.onSubmitError,
    this.onSubmitSuccess,
    this.pageBuilder,
    this.rootKey,
    super.key,
  }) : root = RootNode(
         exportSettings: exportSettings ?? const ExportSettings(),
         uiSettings: uiSettings ?? const WoFormUiSettings(),
         initialValues: initialValues ?? const {},
         persistenceSettings: persistenceSettings,
         children: children,
       );

  const WoForm.root({
    required this.root,
    this.onStatusUpdate,
    this.canSubmit,
    this.onSubmitting,
    this.onSubmitError,
    this.onSubmitSuccess,
    this.pageBuilder,
    this.rootKey,
    super.key,
  });

  final RootNode root;

  /// Called each time a value changed, accordingly to [UpdateStatus].
  final Future<void> Function(RootNode root, WoFormValues values)?
  onStatusUpdate;
  final Future<bool> Function(BuildContext context)? canSubmit;

  /// Called when the user presses the submit button, or when a field can submit
  /// the form, like [StringInputUiSettings.submitFormOnFieldSubmitted].
  ///
  /// You can throw a [WoFormInputError] in this method, the error will be shown
  /// in the corresponding node.
  final Future<Object?> Function(RootNode root, WoFormValues values)?
  onSubmitting;
  final OnSubmitErrorDef? onSubmitError;
  final void Function(BuildContext context)? onSubmitSuccess;
  final WidgetBuilderDef? pageBuilder;
  final RootKey? rootKey;

  /// The values saved by a form whose [PersistenceSettings.key] is [key], by
  /// path, without the form's internal entries. Null when nothing is saved.
  ///
  /// Lets a page read a draft without opening its form. To only know whether
  /// there is one, use [hasSavedDraft].
  static Map<String, Object?>? readSavedValues(String key) {
    try {
      final json = HydratedBloc.storage.read(_valuesStorageId(key));
      if (json is! Map) return null;

      return {
        for (final MapEntry(:key, :value) in json.entries)
          if (key is String && !key.startsWith('/__wo_reserved')) key: value,
      };
    } catch (_) {
      // No storage, or an unreadable one: there is no draft to tell about.
      return null;
    }
  }

  static String _valuesStorageId(String key) => '$key-WoFormValuesCubit';

  /// Whether a form whose [PersistenceSettings.key] is [key] left a draft on
  /// this device. A form left unchanged deletes its draft, so any saved values
  /// are a draft. See [WoFormValuesCubit.hasSavedDraft].
  static bool hasSavedDraft(String key) => readSavedValues(key) != null;

  @override
  Widget build(BuildContext context) {
    final persistence = root.persistenceSettings;

    final form = FocusScope(
      child: MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: root)],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => persistence == null
                  ? WoFormStatusCubit(
                      const InitialStatus(),
                    )
                  : _HydratedWoFormStatusCubit(
                      persistence.key,
                      const InitialStatus(),
                    ),
            ),
            BlocProvider(
              create: (context) => persistence == null
                  ? WoFormLockCubit._()
                  : _HydratedWoFormLockCubit(persistence.key),
            ),
            BlocProvider(
              create: (context) => persistence == null
                  ? WoFormValuesCubit._(
                      context.read(),
                      context.read(),
                      context.read(),
                      canSubmit ?? (_) async => true,
                      onStatusUpdate: onStatusUpdate,
                      onSubmitting: onSubmitting,
                    )
                  : _HydratedWoFormValuesCubit(
                      persistence,
                      context.read(),
                      context.read(),
                      context.read(),
                      canSubmit ?? (_) async => true,
                      onStatusUpdate: onStatusUpdate,
                      onSubmitting: onSubmitting,
                    ),
            ),
          ],
          child: BlocListener<WoFormStatusCubit, WoFormStatus>(
            listener: (context, status) {
              switch (status) {
                case SubmitSuccessStatus():
                  onSubmitSuccess?.call(context);
                case SubmitErrorStatus():
                  (onSubmitError ??
                          WoFormTheme.of(context)?.onSubmitError ??
                          defaultOnSubmitError)
                      .call(context, status);
                default:
              }
            },
            child: _RootUpdater(
              root: root,
              child: pageBuilder == null
                  ? root.toWidget(parentPath: '', key: rootKey)
                  : Builder(key: rootKey, builder: pageBuilder!),
            ),
          ),
        ),
      ),
    );

    if (root.uiSettings?.theme != null) {
      return WoFormTheme(
        data: root.uiSettings!.theme!.merge(WoFormTheme.of(context)),
        child: form,
      );
    } else {
      return form;
    }
  }

  static void defaultOnSubmitError(
    BuildContext context,
    SubmitErrorStatus status,
  ) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('${status.error}')),
  );
}

class _RootUpdater extends StatefulWidget {
  /// This widget allows WoFormValuesCubit._root to always be up to date
  /// with the root of the last hot reload.
  const _RootUpdater({required this.root, required this.child});

  final RootNode root;
  final Widget child;

  @override
  State<_RootUpdater> createState() => __RootUpdaterState();
}

class __RootUpdaterState extends State<_RootUpdater> {
  @override
  void didUpdateWidget(covariant _RootUpdater oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.root != oldWidget.root) {
      context.read<WoFormValuesCubit>()._didUpdateWoForm(widget.root);
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootKey<T extends State<StatefulWidget>> extends GlobalKey<T> {
  // ignore: prefer_const_constructors_in_immutables , never use const for this class
  RootKey() : super.constructor();

  @override
  String toString() => 'WoFormRootKey()';

  WoFormValues? get values => currentContext?.read<WoFormValuesCubit>().state;
}

import 'dart:async';

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

    /// If not empty, this form will be locally persistent, using HydratedCubit.
    String hydratationId = '',
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
         hydratationId: hydratationId,
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
  final Future<Object?> Function(RootNode root, WoFormValues values)?
  onSubmitting;
  final OnSubmitErrorDef? onSubmitError;
  final void Function(BuildContext context)? onSubmitSuccess;
  final WidgetBuilderDef? pageBuilder;
  final RootKey? rootKey;

  @override
  Widget build(BuildContext context) {
    final form = FocusScope(
      child: MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: root)],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => root.hydratationId.isEmpty
                  ? WoFormStatusCubit(
                      const InitialStatus(),
                    )
                  : _HydratedWoFormStatusCubit(
                      root.hydratationId,
                      const InitialStatus(),
                    ),
            ),
            BlocProvider(
              create: (context) => root.hydratationId.isEmpty
                  ? WoFormLockCubit._()
                  : _HydratedWoFormLockCubit(root.hydratationId),
            ),
            BlocProvider(
              create: (context) => root.hydratationId.isEmpty
                  ? WoFormValuesCubit._(
                      context.read(),
                      context.read(),
                      context.read(),
                      canSubmit ?? (_) async => true,
                      onStatusUpdate: onStatusUpdate,
                      onSubmitting: onSubmitting,
                    )
                  : _HydratedWoFormValuesCubit(
                      root.hydratationId,
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

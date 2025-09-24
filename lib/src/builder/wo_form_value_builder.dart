import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class WoFormValueBuilder<T> extends StatelessWidget {
  const WoFormValueBuilder({
    required this.path,
    required this.builder,
    super.key,
  });

  final String path;
  final Widget Function(BuildContext context, T? value) builder;

  @override
  Widget build(BuildContext context) => WoFormValueSelector<T?>(
    key: Key(path),
    selector: (values) {
      final value = values[path];
      if (value is! T?) {
        throw ArgumentError(
          'Expected <$T?> at inputId: "$path", '
          'found: <${value.runtimeType}>',
        );
      }
      return value;
    },
    builder: builder,
  );
}

class WoFormValuesBuilder extends StatelessWidget {
  const WoFormValuesBuilder({
    required this.paths,
    required this.builder,
    super.key,
  });

  final Iterable<String> paths;
  final Widget Function(BuildContext context, Json values) builder;

  @override
  Widget build(BuildContext context) => WoFormValueSelector<Json>(
    selector: (values) => {
      for (final path in paths) path: values[path],
    },
    builder: builder,
  );
}

class WoFormValueSelector<T> extends StatelessWidget {
  const WoFormValueSelector({
    required this.selector,
    required this.builder,
    super.key,
  });

  final T Function(WoFormValues values) selector;
  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) =>
      BlocSelector<WoFormValuesCubit, WoFormValues, T>(
        selector: selector,
        builder: builder,
      );
}

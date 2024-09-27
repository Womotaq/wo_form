import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormValueBuilder<T> extends StatelessWidget {
  const WoFormValueBuilder({
    required this.path,
    required this.builder,
    this.valuesCubit,
    super.key,
  });

  final String path;
  final Widget Function(BuildContext context, T? value) builder;

  /// Use it if this widget's context doesn't contain the values cubit
  final WoFormValuesCubit? valuesCubit;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, T?>(
      bloc: valuesCubit,
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
}

class WoFormValuesBuilder extends StatelessWidget {
  const WoFormValuesBuilder({
    required this.paths,
    required this.builder,
    super.key,
  });

  final Iterable<String> paths;
  final Widget Function(BuildContext context, Map<String, dynamic> values)
      builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>,
        Map<String, dynamic>>(
      selector: (values) => {for (final path in paths) path: values[path]},
      builder: builder,
    );
  }
}

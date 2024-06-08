import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormValueBuilder extends StatelessWidget {
  const WoFormValueBuilder({
    required this.inputPath,
    required this.builder,
    super.key,
  });

  final String inputPath;
  final Widget Function(BuildContext context, dynamic value) builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, dynamic>(
      selector: (values) => values[inputPath],
      builder: builder,
    );
  }
}

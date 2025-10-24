import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormErrorBuilder extends StatelessWidget {
  const WoFormErrorBuilder({
    required this.path,
    required this.builder,
    super.key,
  });

  final String path;
  final Widget Function(BuildContext context, WoFormInputError? error) builder;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WoFormStatusCubit, WoFormStatus, WoFormInputError?>(
      selector: (status) =>
          status is InProgressStatus ? status.getError(path: path) : null,
      builder: builder,
    );
  }
}

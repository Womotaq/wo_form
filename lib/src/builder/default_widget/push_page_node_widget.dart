import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class PushPageNodeWidget extends StatelessWidget {
  const PushPageNodeWidget({required this.data, super.key});

  final WoFieldData<PushPageNode, void, PushPageNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final headerData = WoFormInputHeaderData(
      labelText: data.uiSettings.labelText,
      helperText: data.uiSettings.helperText,
      errorText: data.errorText,
      trailing: const Icon(Icons.chevron_right),
      onTap: () => data.onValueChanged?.call(null),
      shrinkWrap: false,
    );

    return WoFormTheme.of(context)?.inputHeaderBuilder?.call(headerData) ??
        InputHeader(data: headerData);
  }
}

import 'package:flutter/material.dart';

class WoFormHeaderData {
  const WoFormHeaderData({
    this.labelText,
    this.helperText,
  });

  final String? labelText;
  final String? helperText;
}

class WoFormInputHeaderData {
  const WoFormInputHeaderData({
    this.labelText,
    this.helperText,
    this.errorText,
    this.trailing,
    this.onTap,
    this.shrinkWrap = true,
  });

  final String? labelText;
  final String? helperText;
  final String? errorText;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool shrinkWrap;
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

@freezed
class WoFormHeaderData with _$WoFormHeaderData {
  const factory WoFormHeaderData({
    String? labelText,
    String? helperText,
  }) = _WoFormHeaderData;
}

@freezed
class WoFormInputHeaderData with _$WoFormInputHeaderData {
  const factory WoFormInputHeaderData({
    required String path,
    String? labelText,
    String? helperText,
    String? errorText,
    Widget? trailing,
    VoidCallback? onTap,
    @Default(true) bool shrinkWrap,
  }) = _WoFormInputHeaderData;
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'data.freezed.dart';

@freezed
abstract class WoFormHeaderData with _$WoFormHeaderData {
  const factory WoFormHeaderData({
    String? labelText,
    String? helperText,
  }) = _WoFormHeaderData;
}

@freezed
abstract class WoFormInputHeaderData with _$WoFormInputHeaderData {
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

@freezed
abstract class WoFieldData<I, T, U> with _$WoFieldData<I, T, U> {
  /// I : input
  /// T : value
  /// U : uiSettings
  const factory WoFieldData({
    required String path,
    required I input,
    required T? value,
    required String? errorText,
    required U uiSettings,

    /// Null means locked field
    required void Function(T? value, {UpdateStatus updateStatus})?
    onValueChanged,
  }) = _WoFieldData;
}

@freezed
abstract class SubmitButtonData with _$SubmitButtonData {
  const factory SubmitButtonData({
    required String? text,
    required VoidCallback? onPressed,
    required SubmitButtonPosition position,
    required int pageIndex, // TODO : remove
    IconData? icon,
  }) = _SubmitButtonData;
}

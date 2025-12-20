import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'data.freezed.dart';

@freezed
abstract class WoFormHeaderData with _$WoFormHeaderData {
  const factory WoFormHeaderData({
    String? labelText,
    String? helperText,
    Widget? prefixIcon,
    Widget? trailing,
    VoidCallback? onTap,
  }) = _WoFormHeaderData;
}

@freezed
abstract class WoFormInputHeaderData with _$WoFormInputHeaderData {
  const factory WoFormInputHeaderData({
    String? labelText,
    int? labelMaxLines,
    String? helperText,
    Widget? prefixIcon,
    String? errorText,
    Widget? trailing,
    VoidCallback? onTap,
    @Default(true) bool shrinkWrap,

    /// By default :
    /// - horizontal : 16
    /// - vertical : shrinkWrap ? 0 : 4
    EdgeInsets? padding,
  }) = _WoFormInputHeaderData;
}

@freezed
abstract class WoFieldData<I, T> with _$WoFieldData<I, T> {
  /// I : input
  /// T : value
  @Assert(
    'errorText == null || errorWidget == null',
    'Only one of errorWidget and errorText can be specified.',
  )
  const factory WoFieldData({
    required String path,
    required I input,
    required T? value,

    /// Null means locked field
    required void Function(T? value, {UpdateStatus updateStatus})?
    onValueChanged,

    String? errorText,
    Widget? errorWidget,
  }) = _WoFieldData;
}

@freezed
abstract class SubmitButtonData with _$SubmitButtonData {
  const factory SubmitButtonData({
    required String? text,

    /// Callback invoked when the form (or a part of it) is submitted. This is
    /// triggered by the [SubmitButton] or any field configured to submit.
    required VoidCallback? onPressed,

    /// If not empty, submission validation will be scoped to the node at
    /// this path, and its children.
    ///
    /// This is used for validating only a specific section of a larger form.
    required String path,
    required SubmitButtonPosition position,
    IconData? icon,
  }) = _SubmitButtonData;
}

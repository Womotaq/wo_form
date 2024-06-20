import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_input.freezed.dart';
part 'wo_form_input.g.dart';

@freezed
sealed class WoFormInputError with _$WoFormInputError {
  const factory WoFormInputError.empty() = EmptyInputError;
  const factory WoFormInputError.invalid() = InvalidInputError;
  const factory WoFormInputError.maxBound() = MaxBoundInputError;
  const factory WoFormInputError.minBound() = MinBoundInputError;
  const factory WoFormInputError.custom({required String message}) =
      CustomInputError;
}

mixin WoFormInputMixin {
  Object? get initialValue;

  WoFormInputError? getError(Object? value);

  String? getInvalidExplanation(
    dynamic value,
    TranslateInputError? translateError,
  ) {
    final error = getError(value);

    if (error == null) return null;

    if (error is CustomInputError) return error.message;

    return translateError?.call(error) ?? error.toString();
  }

  // WoFormElementMixin

  bool isExportable({
    required WoFormValues values,
    required String parentPath,
  }) =>
      true;

  String get id;

  Iterable<String> getAllInputPaths({
    required WoFormValues values,
    required String parentPath,
  }) =>
      ['$parentPath/$id'];

  Iterable<WoFormInputError> getErrors(
    WoFormValues values, {
    required String parentPath,
  }) =>
      [getError(values['$parentPath/$id'])].whereNotNull();

  String? getExportKey({
    required WoFormValues values,
    required String parentPath,
  }) =>
      id;

  Map<String, dynamic> toJson();

  Widget toWidget<C extends WoFormValuesCubit>({required String parentPath});
}

@freezed
sealed class WoFormInput
    with _$WoFormInput, WoFormElementMixin, WoFormInputMixin {
  const factory WoFormInput.boolean({
    required String id,
    bool? initialValue,
    @Default(false) bool isRequired,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormInputError? Function(bool? value)? getCustomError,
    @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
    @Default(BooleanInputUiSettings())
    BooleanInputUiSettings uiSettings,
  }) = BooleanInput;

  @Assert(
    'maxBound == null || minBound <= maxBound',
    'maxBound must be higher or equal to minBound',
  )
  const factory WoFormInput.num({
    required String id,
    num? initialValue,
    @Default(false) bool isRequired,
    int? maxBound,
    @Default(0) int minBound,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormInputError? Function(num? value)? getCustomError,
    @Default(NumInputUiSettings()) NumInputUiSettings uiSettings,
  }) = NumInput;

  @Assert(
    'maxCount == null || minCount <= maxCount',
    'maxCount must be higher or equal to minCount',
  )
  const factory WoFormInput.selectString({
    required String id,
    required int? maxCount,
    @Default([]) List<String> initialValue,
    @Default([]) List<String> availibleValues,
    @Default(0) int minCount,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormInputError? Function(List<String> selectedValues)? getCustomError,
    @Default(SelectInputUiSettings<String>())
    SelectInputUiSettings<String> uiSettings,
  }) = SelectStringInput;

  const factory WoFormInput.string({
    required String id,
    String? initialValue,
    @Default(false) bool isRequired,
    String? regexPattern,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormInputError? Function(String? value)? getCustomError,
    @JsonKey(toJson: StringInputUiSettings.staticToJson)
    @Default(StringInputUiSettings())
    StringInputUiSettings uiSettings,
  }) = StringInput;

  const WoFormInput._();

  factory WoFormInput.fromJson(Map<String, dynamic> json) =>
      _$WoFormInputFromJson(json);

  // --

  @override
  WoFormInputError? getError(dynamic value) {
    switch (this) {
      case BooleanInput(
          isRequired: final isRequired,
          getCustomError: final getCustomError,
        ):
        value as bool?;

        final customError = getCustomError?.call(value);
        if (customError != null) return customError;

        return isRequired && value != true
            ? const WoFormInputError.empty()
            : null;

      case NumInput(
          isRequired: final isRequired,
          minBound: final minBound,
          maxBound: final maxBound,
          getCustomError: final getCustomError,
        ):
        value as num?;

        final customError = getCustomError?.call(value);
        if (customError != null) return customError;

        if (value == null) {
          return isRequired ? const WoFormInputError.empty() : null;
        }

        if (value < minBound) return const WoFormInputError.minBound();
        if (maxBound != null && value > maxBound) {
          return const WoFormInputError.maxBound();
        }

        return null;

      case StringInput(
          isRequired: final isRequired,
          regexPattern: final regexPattern,
          getCustomError: final getCustomError,
          uiSettings: final uiSettings,
        ):
        value as String?;

        final customError = getCustomError?.call(value);
        if (customError != null) return customError;

        if (value == null || value.isEmpty) {
          return isRequired ? const WoFormInputError.empty() : null;
        } else if (regexPattern != null &&
            !RegExp(regexPattern).hasMatch(value)) {
          return WoFormInputError.custom(
            message: uiSettings.invalidRegexMessage ?? '',
          );
        } else {
          return null;
        }

      case SelectStringInput(
          id: final inputId,
          availibleValues: final availibleValues,
          minCount: final minCount,
          maxCount: final maxCount,
          getCustomError: final getCustomError,
        ):
        return SelectInput._validator<String>(
          inputId: inputId,
          selectedValues: (value as List<String>?) ?? [],
          availibleValues: availibleValues,
          minCount: minCount,
          maxCount: maxCount,
          getCustomError: getCustomError,
        );
    }
  }

  @override
  dynamic export({
    required WoFormValues values,
    required String parentPath,
  }) =>
      _exportValue(values['$parentPath/$id']);

  Object? _exportValue(dynamic value) => switch (this) {
        BooleanInput() => value as bool?,
        NumInput() => value as num?,
        SelectStringInput(maxCount: final maxCount) =>
          SelectInput._selectedValuesToJson(
            selectedValues: value as List<String>?,
            toJsonT: (value) => value,
            asList: maxCount != 1,
          ),
        StringInput() => value as String?,
      };

  @override
  Widget toWidget<T extends WoFormValuesCubit>({required String parentPath}) {
    final path = '$parentPath/$id';
    switch (this) {
      case BooleanInput():
        return BooleanFieldBuilder(inputPath: path);
      case NumInput():
        return NumFieldBuilder(inputPath: path);
      case StringInput():
        return StringFieldBuilder(inputPath: path);
      case SelectStringInput():
        return SelectStringFieldBuilder(inputPath: path);
    }
  }

  @override
  WoFormInput withUid() => copyWith(id: uidGenerator.generateUid());
}

@freezed
@JsonSerializable(genericArgumentFactories: true)
class SelectInput<T>
    with _$SelectInput<T>, WoFormElementMixin, WoFormInputMixin {
  const factory SelectInput({
    required String id,
    required int? maxCount,
    @Default(0) int minCount,
    @Default([]) List<T> initialValues,
    @Default([]) List<T> availibleValues,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormInputError? Function(List<T> selectedValues)? getCustomError,
    SelectInputUiSettings<T>? uiSettings,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Object? Function(T)? toJsonT,
  }) = _SelectInput<T>;

  const SelectInput._();

  factory SelectInput.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$SelectInputFromJson(json, fromJsonT);
  }

  @override
  Map<String, dynamic> toJson() {
    if (toJsonT == null) return _$SelectInputToJson(this, _defaultToJsonT<T>);

    return _$SelectInputToJson(this, toJsonT!);
  }

  // initialValue can't be set from the constructor, because it has
  // a type parameter (obscure restrictions)
  @override
  List<T> get initialValue => initialValues;

  // --

  static WoFormInputError? _validator<T>({
    required String inputId,
    required List<T> selectedValues,
    required List<T> availibleValues,
    required int minCount,
    required int? maxCount,
    required WoFormInputError? Function(List<T>)? getCustomError,
  }) {
    final customError = getCustomError?.call(selectedValues);
    if (customError != null) return customError;

    if (minCount == 1 && maxCount == 1 && selectedValues.isEmpty) {
      return const WoFormInputError.empty();
    }

    if (selectedValues.length < minCount) {
      return const WoFormInputError.minBound();
    }

    if (maxCount != null && selectedValues.length > maxCount) {
      return const WoFormInputError.maxBound();
    }

    if (availibleValues.isNotEmpty) {
      for (final value in selectedValues) {
        if (!availibleValues.contains(value)) {
          return const WoFormInputError.invalid();
        }
      }
    }

    return null;
  }

  static Object? _selectedValuesToJson<T>({
    required List<T>? selectedValues,
    required Object? Function(T)? toJsonT,
    required bool asList,
  }) {
    if (selectedValues == null) return null;

    final valuesToJson = selectedValues.map(toJsonT ?? _defaultToJsonT);

    return asList ? valuesToJson.toList() : valuesToJson.firstOrNull;
  }

  @override
  WoFormInputError? getError(dynamic value) => _validator<T>(
        inputId: id,
        selectedValues: (value as List<T>?) ?? [],
        availibleValues: availibleValues,
        minCount: minCount,
        maxCount: maxCount,
        getCustomError: getCustomError,
      );

  @override
  dynamic export({
    required WoFormValues values,
    required String parentPath,
  }) =>
      _selectedValuesToJson<T>(
        selectedValues: values['$parentPath/$id'] as List<T>?,
        toJsonT: toJsonT,
        asList: maxCount != 1,
      );

  @override
  Widget toWidget<C extends WoFormValuesCubit>({required String parentPath}) =>
      SelectFieldBuilder<T>(inputPath: '$parentPath/$id');

  @override
  SelectInput<T> withUid() => copyWith(id: uidGenerator.generateUid());
}

Object? _defaultToJsonT<T>(T value) {
  if (value is String || value is bool || value is num) {
    return value;
  } else if (value is Enum) {
    return (value as Enum).name;
  }

  throw UnimplementedError('No toJsonT provided for <$T>');
}

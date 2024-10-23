import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_input.freezed.dart';
part 'wo_form_input.g.dart';

@freezed
sealed class WoFormInputError with _$WoFormInputError {
  const factory WoFormInputError.empty({
    required String path,
  }) = EmptyInputError;
  const factory WoFormInputError.invalid({
    required String path,
  }) = InvalidInputError;
  const factory WoFormInputError.maxBound({
    required String path,
  }) = MaxBoundInputError;
  const factory WoFormInputError.minBound({
    required String path,
  }) = MinBoundInputError;
  const factory WoFormInputError.custom({
    required String path,
    required String message,
  }) = CustomInputError;
}

mixin WoFormInputMixin {
  WoFormInputError? getError(
    Object? value, {
    required String parentPath,
  });

  WoFormNodeMixin? getChild({
    required String path,
    required String parentPath,
    required Map<String, dynamic> values,
  }) =>
      null;

  String? getInvalidExplanation(
    dynamic value,
    String parentPath,
    TranslateInputError? translateError,
  ) {
    final error = getError(
      value,
      parentPath: parentPath,
    );

    if (error == null) return null;

    if (error is CustomInputError) return error.message;

    return translateError?.call(error) ?? error.toString();
  }

  // WoFormNodeMixin

  String get id;

  Iterable<String> getAllInputPaths({
    required WoFormValues values,
    required String parentPath,
  }) =>
      ['$parentPath/$id'];

  Iterable<WoFormInputError> getErrors({
    required WoFormValues values,
    required String parentPath,
    bool recursive = true,
  }) =>
      [getError(values['$parentPath/$id'], parentPath: parentPath)]
          .whereNotNull();

  String? getExportKey({
    required WoFormValues values,
    required String parentPath,
  }) =>
      id;

  Map<String, dynamic> toJson();

  Widget toWidget({required String parentPath, Key? key});
}

typedef GetCustomErrorDef<T> = WoFormInputError? Function(
  T? value,
  String path,
);
typedef GetCustomErrorForListDef<T> = WoFormInputError? Function(
  List<T> value,
  String path,
);

extension _SelectInputUiSettingsX<T> on SelectInputUiSettings<T> {
  static Map<String, dynamic> staticToJsonString(
    SelectInputUiSettings<String> object,
  ) =>
      object.toJson();
}

@freezed
sealed class WoFormInput with _$WoFormInput, WoFormNodeMixin, WoFormInputMixin {
  const factory WoFormInput.boolean({
    required String id,
    bool? initialValue,
    @Default(false) bool isRequired,
    @JsonKey(includeToJson: false, includeFromJson: false)
    GetCustomErrorDef<bool>? getCustomError,
    @JsonKey(toJson: BooleanInputUiSettings.staticToJson)
    @Default(BooleanInputUiSettings())
    BooleanInputUiSettings uiSettings,
  }) = BooleanInput;

  const factory WoFormInput.dateTime({
    required String id,
    DateTime? initialValue,
    @Default(false) bool isRequired,
    DateTime? maxBound,
    DateTime? minBound,
    @JsonKey(includeToJson: false, includeFromJson: false)
    GetCustomErrorDef<DateTime>? getCustomError,
    @JsonKey(toJson: DateTimeInputUiSettings.staticToJson)
    @Default(DateTimeInputUiSettings())
    DateTimeInputUiSettings uiSettings,
  }) = DateTimeInput;

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
    GetCustomErrorDef<num>? getCustomError,
    @Default(NumInputUiSettings()) NumInputUiSettings uiSettings,
  }) = NumInput;

  @Assert(
    'maxCount == null || minCount <= maxCount',
    'maxCount must be higher or equal to minCount',
  )
  const factory WoFormInput.selectString({
    required String id,
    required int? maxCount,
    @Default(0) int minCount,
    List<String>? initialValues,
    @Default([]) List<String> availibleValues,
    // idsOfAvailibleValues allows to set an identifier to each value.
    // This way, we keep the advantage of a list : the order
    // and we gain the advantage of a map : the identifiers
    // while staying jsonifiable.
    // If set, the object stored at the path of this input in WoFormValuesCubit
    // will be the id of the selected value.
    List<String>? idsOfAvailibleValues,
    @JsonKey(includeToJson: false, includeFromJson: false)
    GetCustomErrorForListDef<String>? getCustomError,
    @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
    @Default(SelectInputUiSettings<String>())
    SelectInputUiSettings<String> uiSettings,
    // The correct answer is the index of availibleValues
    @JsonKey(toJson: QuizSettings.staticToJson) QuizSettings? quizSettings,
  }) = SelectStringInput;

  const factory WoFormInput.string({
    required String id,
    String? initialValue,
    @Default(false) bool isRequired,
    String? regexPattern,
    @JsonKey(includeToJson: false, includeFromJson: false)
    GetCustomErrorDef<String>? getCustomError,
    @JsonKey(toJson: StringInputUiSettings.staticToJson)
    @Default(StringInputUiSettings())
    StringInputUiSettings uiSettings,
  }) = StringInput;

  const WoFormInput._();

  factory WoFormInput.fromJson(Map<String, dynamic> json) =>
      _$WoFormInputFromJson(json);

  // --

  @override
  void export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
  }) {
    final exportValue = _exportValue(values['$parentPath/$id']);

    if (into is List) {
      into.add(exportValue);
    } else if (into is Map) {
      into[getExportKey(values: values, parentPath: parentPath)] = exportValue;
    }
  }

  Object? _exportValue(dynamic value) => switch (this) {
        BooleanInput() => value as bool?,
        DateTimeInput() => value as DateTime?,
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
  WoFormInputError? getError(dynamic value, {required String parentPath}) {
    switch (this) {
      case BooleanInput(
          isRequired: final isRequired,
          getCustomError: final getCustomError,
        ):
        value as bool?;

        final customError = getCustomError?.call(
          value,
          '$parentPath/$id',
        );
        if (customError != null) return customError;

        return isRequired && value != true
            ? WoFormInputError.empty(path: '$parentPath/$id')
            : null;

      case DateTimeInput(
          isRequired: final isRequired,
          minBound: final minBound,
          maxBound: final maxBound,
          getCustomError: final getCustomError,
        ):
        value as DateTime?;

        final customError = getCustomError?.call(
          value,
          '$parentPath/$id',
        );
        if (customError != null) return customError;

        if (value == null) {
          return isRequired
              ? WoFormInputError.empty(path: '$parentPath/$id')
              : null;
        }

        if (minBound != null && value.isBefore(minBound)) {
          return WoFormInputError.minBound(path: '$parentPath/$id');
        }
        if (maxBound != null && value.isAfter(maxBound)) {
          return WoFormInputError.maxBound(path: '$parentPath/$id');
        }

        return null;

      case NumInput(
          isRequired: final isRequired,
          minBound: final minBound,
          maxBound: final maxBound,
          getCustomError: final getCustomError,
        ):
        value as num?;

        final customError = getCustomError?.call(
          value,
          '$parentPath/$id',
        );
        if (customError != null) return customError;

        if (value == null) {
          return isRequired
              ? WoFormInputError.empty(path: '$parentPath/$id')
              : null;
        }

        if (value < minBound) {
          return WoFormInputError.minBound(path: '$parentPath/$id');
        }
        if (maxBound != null && value > maxBound) {
          return WoFormInputError.maxBound(path: '$parentPath/$id');
        }

        return null;

      case StringInput(
          isRequired: final isRequired,
          regexPattern: final regexPattern,
          getCustomError: final getCustomError,
          uiSettings: final uiSettings,
        ):
        value as String?;

        final customError = getCustomError?.call(
          value,
          '$parentPath/$id',
        );
        if (customError != null) return customError;

        if (value == null || value.isEmpty) {
          return isRequired
              ? WoFormInputError.empty(path: '$parentPath/$id')
              : null;
        } else if (regexPattern != null &&
            !RegExp(regexPattern).hasMatch(value)) {
          return WoFormInputError.custom(
            path: '$parentPath/$id',
            message: uiSettings.invalidRegexMessage ?? '',
          );
        } else {
          return null;
        }

      case SelectStringInput(
          id: final inputId,
          availibleValues: final availibleValues,
          idsOfAvailibleValues: final idsOfAvailibleValues,
          minCount: final minCount,
          maxCount: final maxCount,
          getCustomError: final getCustomError,
        ):
        return SelectInput._validator<String>(
          inputId: inputId,
          parentPath: parentPath,
          selectedValues: (value as List<String>?) ?? [],
          availibleValues: availibleValues,
          idsOfAvailibleValues: idsOfAvailibleValues,
          minCount: minCount,
          maxCount: maxCount,
          getCustomError: getCustomError,
        );
    }
  }

  @override
  Map<String, dynamic> getInitialValues({required String parentPath}) {
    switch (this) {
      case BooleanInput(initialValue: final initialValue):
        return {'$parentPath/$id': initialValue};
      case DateTimeInput(initialValue: final initialValue):
        return {'$parentPath/$id': initialValue};
      case NumInput(initialValue: final initialValue):
        return {'$parentPath/$id': initialValue};
      case StringInput(initialValue: final initialValue):
        return {'$parentPath/$id': initialValue};
      case SelectStringInput(initialValues: final initialValues):
        return {'$parentPath/$id': initialValues};
    }
  }

  @override
  Widget toWidget({required String parentPath, Key? key}) {
    final path = '$parentPath/$id';
    switch (this) {
      case BooleanInput():
        return BooleanFieldBuilder(key: key, path: path);
      case DateTimeInput():
        return DateTimeFieldBuilder(key: key, path: path);
      case NumInput():
        return NumFieldBuilder(key: key, path: path);
      case StringInput():
        return StringFieldBuilder(key: key, path: path);
      case SelectStringInput():
        return SelectStringFieldBuilder(key: key, path: path);
    }
  }

  @override
  WoFormInput withId({required String id}) => copyWith(id: id);
}

@freezed
@JsonSerializable(genericArgumentFactories: true)
class SelectInput<T> with _$SelectInput<T>, WoFormNodeMixin, WoFormInputMixin {
  const factory SelectInput({
    required String id,
    required int? maxCount,
    @Default(0) int minCount,
    List<T>? initialValues,
    @Default([]) List<T> availibleValues,
    // idsOfAvailibleValues allows to set an identifier to each value.
    // This way, we keep the advantage of a list : the order
    // and we gain the advantage of a map : the identifiers
    // while staying jsonifiable.
    // If set, the object stored at the path of this input in WoFormValuesCubit
    // will be the id of the selected value.
    List<String>? idsOfAvailibleValues,
    @JsonKey(includeToJson: false, includeFromJson: false)
    GetCustomErrorForListDef<T>? getCustomError,
    SelectInputUiSettings<T>? uiSettings,
    @JsonKey(toJson: QuizSettings.staticToJson) QuizSettings? quizSettings,

    /// The following fields are mostly usefull for hydrataion
    ///
    /// Ex :
    /// SelectInput<TimeControl>(
    ///   toJsonT: (value) => (value as TimeControl?)?.toJson(),
    ///   fromJsonT: (json) =>
    ///       TimeControl.fromJson(json as Map<String, dynamic>? ?? {}),
    /// ),
    @JsonKey(includeToJson: false, includeFromJson: false)
    dynamic Function(dynamic)? toJsonT,
    @JsonKey(includeToJson: false, includeFromJson: false)
    dynamic Function(dynamic)? fromJsonT,
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

  // --

  static WoFormInputError? _validator<T>({
    required String inputId,
    required String parentPath,
    required List<T> selectedValues,
    required List<T> availibleValues,
    required List<String>? idsOfAvailibleValues,
    required int minCount,
    required int? maxCount,
    required GetCustomErrorForListDef<T>? getCustomError,
  }) {
    final customError = getCustomError?.call(
      selectedValues,
      '$parentPath/$inputId',
    );
    if (customError != null) return customError;

    if (minCount == 1 && maxCount == 1 && selectedValues.isEmpty) {
      return WoFormInputError.empty(path: '$parentPath/$inputId');
    }

    if (selectedValues.length < minCount) {
      return WoFormInputError.minBound(path: '$parentPath/$inputId');
    }

    if (maxCount != null && selectedValues.length > maxCount) {
      return WoFormInputError.maxBound(path: '$parentPath/$inputId');
    }

    if (idsOfAvailibleValues != null) {
      if (idsOfAvailibleValues.isNotEmpty) {
        for (final value in selectedValues) {
          if (!idsOfAvailibleValues.contains(value)) {
            return WoFormInputError.invalid(path: '$parentPath/$inputId');
          }
        }
      }
    } else if (availibleValues.isNotEmpty) {
      for (final value in selectedValues) {
        if (!availibleValues.contains(value)) {
          return WoFormInputError.invalid(path: '$parentPath/$inputId');
        }
      }
    }

    return null;
  }

  static Object? _selectedValuesToJson<T>({
    required List<T>? selectedValues,
    required dynamic Function(dynamic)? toJsonT,
    required bool asList,
  }) {
    if (selectedValues == null) return null;

    final valuesToJson = selectedValues.map(toJsonT ?? _defaultToJsonT);

    return asList ? valuesToJson.toList() : valuesToJson.firstOrNull;
  }

  @override
  void export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
  }) {
    final selectedValues = values['$parentPath/$id'] as List<T>?;

    final exportValue = _selectedValuesToJson<T>(
      selectedValues: selectedValues,
      toJsonT: toJsonT,
      asList: maxCount != 1,
    );

    if (into is List) {
      into.add(exportValue);
    } else if (into is Map) {
      into[getExportKey(values: values, parentPath: parentPath)] = exportValue;
    }
  }

  @override
  WoFormInputError? getError(dynamic value, {required String parentPath}) =>
      _validator<T>(
        inputId: id,
        parentPath: parentPath,
        selectedValues: (value as List?)?.whereType<T>().toList() ?? [],
        availibleValues: availibleValues,
        idsOfAvailibleValues: idsOfAvailibleValues,
        minCount: minCount,
        maxCount: maxCount,
        getCustomError: getCustomError,
      );

  @override
  Map<String, dynamic> getInitialValues({required String parentPath}) =>
      {'$parentPath/$id': initialValues};

  @override
  Widget toWidget({required String parentPath, Key? key}) =>
      SelectFieldBuilder<T>(key: key, path: '$parentPath/$id');

  @override
  SelectInput<T> withId({required String id}) => copyWith(id: id);
}

Object? _defaultToJsonT<T>(T value) {
  if (value is String || value is bool || value is num) {
    return value;
  } else if (value is Enum) {
    return (value as Enum).name;
  }

  throw UnimplementedError('No toJsonT provided for <$T>');
}

extension SelectStringInputX on SelectStringInput {
  String? getAvailibleValue({required String id}) {
    final index = idsOfAvailibleValues?.indexOf(id) ?? -1;
    return (index < 0 || index >= availibleValues.length)
        ? null
        : availibleValues[index];
  }

  String? getIdOfValue({required String value}) {
    final index = availibleValues.indexOf(value);
    return (index < 0 || index >= (idsOfAvailibleValues?.length ?? -1))
        ? null
        : idsOfAvailibleValues![index];
  }
}

extension SelectInputX<T> on SelectInput<T> {
  T? getAvailibleValue({required String id}) {
    final index = idsOfAvailibleValues?.indexOf(id) ?? -1;
    return (index < 0 || index >= availibleValues.length)
        ? null
        : availibleValues[index];
  }

  String? getIdOfValue({required T value}) {
    final index = availibleValues.indexOf(value);
    return (index < 0 || index >= (idsOfAvailibleValues?.length ?? -1))
        ? null
        : idsOfAvailibleValues![index];
  }
}

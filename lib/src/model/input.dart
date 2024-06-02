import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'input.freezed.dart';
part 'input.g.dart';

mixin WoFormInputMixin {
  String get id;
  // Object? get value;
  // bool get isRequired;
  // Object? get fieldSettings;

  /// Whether the input value is valid according to the method `getError`.
  ///
  /// Returns `true` if `getError` returns `null` for the
  /// current input value and `false` otherwise.
  bool get isValid => getError() == null;

  WoFormInputError? getError();

  String? getInvalidExplanation(FormLocalizations formL10n);

  Map<String, dynamic> toJson();

  Object? valueToJson();
}

enum WoFormInputType { boolean, string, selectString }

@freezed
sealed class WoFormInput with _$WoFormInput, WoFormInputMixin {
  const factory WoFormInput.boolean({
    required String id,
    bool? value,
    @Default(false) bool isRequired,
    @JsonKey(toJson: BooleanFieldSettings.staticToJson)
    @Default(BooleanFieldSettings())
    BooleanFieldSettings fieldSettings,
  }) = BooleanInput;

  const factory WoFormInput.inputsList({
    required String id,
    @InputsListConverter() List<WoFormInputMixin>? value,
    @Default(false) bool isRequired,
    @JsonKey(toJson: MapFieldSettings.staticToJson)
    @Default(MapFieldSettings())
    MapFieldSettings fieldSettings,
  }) = InputsListInput;

  const factory WoFormInput.num({
    required String id,
    num? value,
    @Default(false) bool isRequired,
    @Default(NumFieldSettings()) NumFieldSettings fieldSettings,
  }) = NumInput;

  const factory WoFormInput.selectString({
    required String id,
    required int? maxCount,
    List<String>? selectedValues,
    List<String>? availibleValues,
    int? minCount,
    @Default(SelectFieldSettings()) SelectFieldSettings fieldSettings,
  }) = SelectStringInput;

  const factory WoFormInput.string({
    required String id,
    String? value,
    @Default(false) bool isRequired,
    String? regexPattern,
    @JsonKey(toJson: StringFieldSettings.staticToJson)
    @Default(StringFieldSettings())
    StringFieldSettings fieldSettings,
  }) = StringInput;

  const WoFormInput._();

  factory WoFormInput.fromJson(Map<String, dynamic> json) =>
      _$WoFormInputFromJson(json);

  // --

  static List<String> types = [
    'boolean',
    'string',
    'selectString',
  ];
  static String booleanType = 'boolean';
  static String stringType = 'string';
  static String selectStringType = 'selectString';

  @override
  WoFormInputError? getError() {
    switch (this) {
      case BooleanInput(value: final value, isRequired: final isRequired):
        return isRequired && value == false
            ? WoFormInputError.empty(inputId: id)
            : null;

      case InputsListInput(value: final value, isRequired: final isRequired):
        return isRequired && (value == null || value.isEmpty)
            ? WoFormInputError.empty(inputId: id)
            : null;

      case NumInput(value: final value, isRequired: final isRequired):
        return isRequired && value == null
            ? WoFormInputError.empty(inputId: id)
            : null;

      case StringInput(
          value: final value,
          isRequired: final isRequired,
          regexPattern: final regexPattern,
        ):
        if (value == null || value.isEmpty) {
          return isRequired ? WoFormInputError.empty(inputId: id) : null;
        } else if (regexPattern != null &&
            !RegExp(regexPattern).hasMatch(value)) {
          return WoFormInputError.invalid(inputId: id);
        } else {
          return null;
        }

      case SelectStringInput(
          id: final inputId,
          selectedValues: final selectedValues,
          availibleValues: final availibleValues,
          minCount: final minCount,
          maxCount: final maxCount,
        ):
        return SelectInput.validator(
          inputId: inputId,
          selectedValues: selectedValues ?? [],
          availibleValues: availibleValues ?? [],
          minCount: minCount,
          maxCount: maxCount,
        );
    }
  }

  @override
  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;

    switch (this) {
      case BooleanInput():
      case InputsListInput():
      case NumInput(): // TODO
      case SelectStringInput():
        break;

      case StringInput(
          regexPattern: final regexPattern,
          fieldSettings: final fieldSettings,
        ):
        if (error.code == WoFormInputError.invalidCode &&
            regexPattern != null) {
          return fieldSettings.invalidRegexMessage;
        }
    }

    return formL10n.formError(error.code);
  }

  @override
  Object? valueToJson() => switch (this) {
        BooleanInput(value: final value) => value,
        InputsListInput(value: final inputs) => {
            for (final input in inputs ?? <WoFormInputMixin>[])
              input.id: input.valueToJson(),
          },
        NumInput(value: final value) => value,
        SelectStringInput(
          selectedValues: final selectedValues,
          maxCount: final maxCount,
        ) =>
          SelectInput.selectedValuesToJson(
            selectedValues: selectedValues ?? [],
            toJsonT: (value) => value,
            asList: maxCount == 1,
          ),
        StringInput(value: final value) => value,
      };
}

@freezed
@JsonSerializable(genericArgumentFactories: true)
class ListInput<T> with _$ListInput<T>, WoFormInputMixin {
  const factory ListInput({
    required String id,
    List<T>? value,
    @Default(false) bool isRequired,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Object? Function(T)? toJsonT,
  }) = _ListInput<T>;

  const ListInput._();

  factory ListInput.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$ListInputFromJson(json, fromJsonT);
  }

  @override
  Map<String, dynamic> toJson() {
    if (toJsonT == null) return _$ListInputToJson(this, _defaultToJsonT<T>);

    return _$ListInputToJson(this, toJsonT!);
  }

  // --

  @override
  WoFormInputError? getError() {
    if (isRequired && (value == null || value!.isEmpty)) {
      return WoFormInputError.empty(inputId: id);
    }

    return null;
  }

  @override
  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;

    return formL10n.formError(error.code);
  }

  @override
  Object? valueToJson() {
    if (toJsonT == null) {
      if (value == null) return null;
      return _defaultToJsonT(value as T);
    }

    return value?.map((value) => toJsonT!(value)).toList();
  }
}

@freezed
@JsonSerializable(genericArgumentFactories: true)
class SelectInput<T> with _$SelectInput<T>, WoFormInputMixin {
  const factory SelectInput({
    required String id,
    required int? maxCount,
    List<T>? selectedValues,
    List<T>? availibleValues,
    int? minCount,
    @Default(SelectFieldSettings()) SelectFieldSettings fieldSettings,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Object? Function(T)? toJsonT,
  }) = _SelectInput<T>;

  // factory SelectInput.uniqueChoice({
  //   required String id,
  //   T? defaultValues,
  //   List<T>? availibleValues,
  //   bool isRequired = false,
  //   SelectFieldSettings fieldSettings = const SelectFieldSettings(),
  //   Object? Function(T)? toJsonT,
  // }) =>
  //     SelectInput(
  //       id: id,
  //       selectedValues: defaultValues == null ? [] : [defaultValues],
  //       availibleValues: availibleValues,
  //       minCount: isRequired ? 1 : 0,
  //       maxCount: 1,
  //       fieldSettings: fieldSettings,
  //       toJsonT: toJsonT,
  //     );

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

  static WoFormInputError? validator<T>({
    required String inputId,
    required List<T> selectedValues,
    required List<T> availibleValues,
    required int? minCount,
    required int? maxCount,
  }) {
    if (minCount == 1 && maxCount == 1 && selectedValues.isEmpty) {
      return WoFormInputError.empty(inputId: inputId);
    }

    if (minCount != null && selectedValues.length < minCount) {
      return WoFormInputError.minBound(inputId: inputId);
    }

    if (maxCount != null && selectedValues.length > maxCount) {
      return WoFormInputError.maxBound(inputId: inputId);
    }

    if (availibleValues.isNotEmpty) {
      for (final value in selectedValues) {
        if (!availibleValues.contains(value)) {
          return WoFormInputError.invalid(inputId: inputId);
        }
      }
    }

    return null;
  }

  @override
  WoFormInputError? getError() => validator(
        inputId: id,
        selectedValues: selectedValues ?? [],
        availibleValues: availibleValues ?? [],
        minCount: minCount,
        maxCount: maxCount,
      );

  @override
  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;

    return formL10n.formError(error.code);
  }

  static Object? selectedValuesToJson<T>({
    required List<T> selectedValues,
    required Object? Function(T)? toJsonT,
    required bool asList,
  }) {
    final valuesToJson = selectedValues.map(toJsonT ?? _defaultToJsonT);

    return asList ? valuesToJson.toList() : valuesToJson.firstOrNull;
  }

  @override
  Object? valueToJson() => selectedValuesToJson<T>(
        selectedValues: selectedValues ?? [],
        toJsonT: toJsonT,
        asList: maxCount == 1,
      );
}

Object? _defaultToJsonT<T>(T value) {
  if (value is Enum) {
    return (value as Enum).name;
  } else if (value is String || value is bool || value is num) {
    return value;
  }

  throw UnimplementedError('No toJsonT provided for <$T>');
}

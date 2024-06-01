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
  }) = NumInput;

  const factory WoFormInput.selectString({
    required String id,
    String? value,
    @Default(false) bool isRequired,
    @Default(SelectFieldSettings<String>())
    SelectFieldSettings<String> fieldSettings,
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
      case BooleanInput(value: final value):
        return isRequired && value == false
            ? WoFormInputError.empty(inputId: id)
            : null;

      case InputsListInput(value: final value):
        return isRequired && (value == null || value.isEmpty)
            ? WoFormInputError.empty(inputId: id)
            : null;

      case NumInput(value: final value):
        return isRequired && value == null
            ? WoFormInputError.empty(inputId: id)
            : null;

      case StringInput(value: final value, regexPattern: final regexPattern):
        if (value == null || value.isEmpty) {
          return isRequired ? WoFormInputError.empty(inputId: id) : null;
        } else if (regexPattern != null &&
            !RegExp(regexPattern).hasMatch(value)) {
          return WoFormInputError.invalid(inputId: id);
        } else {
          return null;
        }

      case SelectStringInput(value: final value):
        return isRequired && value == null
            ? WoFormInputError.empty(inputId: id)
            : null;
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
        BooleanInput() => value,
        InputsListInput(value: final inputs) => {
            for (final input in inputs ?? <WoFormInputMixin>[])
              input.id: input.valueToJson(),
          },
        NumInput() => value,
        StringInput() => value,
        SelectStringInput() => value,
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
    T? value,
    @Default(false) bool isRequired,
    SelectFieldSettings<T>? fieldSettings,
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

  // --

  @override
  WoFormInputError? getError() {
    if (isRequired && value == null) {
      return WoFormInputError.empty(inputId: id);
    }

    if (value != null && !(fieldSettings?.values?.contains(value) ?? true)) {
      return WoFormInputError.invalid(inputId: id);
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
    
    return value == null ? null : toJsonT!(value as T);
  }
}

Object? _defaultToJsonT<T>(T value) {
  if (value is Enum) {
    return (value as Enum).name;
  } else if (value is String || value is bool || value is num) {
    return value;
  }

  throw UnimplementedError('No toJsonT provided for <$T>');
}

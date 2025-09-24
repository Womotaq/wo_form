import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/duration.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/src/utils/json_annotation.dart';
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
    required WoFormValues values,
  }) => null;

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
  }) => ['$parentPath/$id'];

  Iterable<WoFormInputError> getErrors({
    required WoFormValues values,
    required String parentPath,
    bool recursive = true,
  }) => [getError(values['$parentPath/$id'], parentPath: parentPath)].nonNulls;

  String? getExportKey({
    required WoFormValues values,
    required String parentPath,
  }) => id;

  Json toJson();

  Widget toWidget({required String parentPath, Key? key});
}

typedef GetCustomErrorDef<T> =
    WoFormInputError? Function(
      T? value,
      String path,
    );
typedef GetCustomErrorForListDef<T> =
    WoFormInputError? Function(
      List<T> value,
      String path,
    );

extension _SelectInputUiSettingsX<T> on SelectInputUiSettings<T> {
  static Json staticToJsonString(
    SelectInputUiSettings<String> object,
  ) => object.toJson();
}

@freezed
sealed class WoFormInput with _$WoFormInput, WoFormNodeMixin, WoFormInputMixin {
  const factory WoFormInput.boolean({
    required String id,
    bool? initialValue,
    @Default(false) bool isRequired,
    @notSerializable GetCustomErrorDef<bool>? getCustomError,

    /// An optionnal callback when the value changed
    @notSerializable void Function(bool? value)? onValueChanged,
    @Default(BooleanInputUiSettings()) BooleanInputUiSettings uiSettings,
  }) = BooleanInput;

  const factory WoFormInput.dateTime({
    required String id,
    FlexibleDateTime? initialValue,
    @Default(false) bool isRequired,
    FlexibleDateTime? maxDate,
    FlexibleDateTime? minDate,
    @notSerializable GetCustomErrorDef<DateTime>? getCustomError,
    @Default(DateTimeInputUiSettings()) DateTimeInputUiSettings uiSettings,
  }) = DateTimeInput;

  const factory WoFormInput.duration({
    required String id,
    @DurationNullableConverter() Duration? initialValue,
    @Default(false) bool isRequired,

    /// If provided, this should point to a DateTime in the WoFormValuesCubit.
    /// When provided, the user will be able to choose between
    /// DurationEditMode.dateTime and DurationEditMode.duration.
    String? startDatePath,
    @DurationNullableConverter() Duration? maxDuration,
    @DurationNullableConverter() Duration? minDuration,
    @notSerializable GetCustomErrorDef<Duration>? getCustomError,
    @Default(DurationInputUiSettings()) DurationInputUiSettings uiSettings,
  }) = DurationInput;

  /// If you want to use MediaInput, provide an implementation of [MediaService]
  /// at the top-level of your application with a [RepositoryProvider].
  /// See wo_form_service for an implementation example.
  /// Also provide a field using [MediaInputUiSettings.widgetBuilder]
  /// or [WoFormThemeData.mediaFieldBuilder].
  ///
  /// You must provide MediaService this way :
  /// ```dart
  /// RepositoryProvider<MediaService>(
  ///   create: (context) => const MyMediaService(),
  /// ),
  /// ```
  ///
  /// In order to make context.read&lt;MyMediaService&gt;() work, add :
  /// ```dart
  /// RepositoryProvider<MyMediaService>(
  ///   create: (context) =>
  ///       context.read<MediaService>() as MyMediaService,
  /// ),
  /// ```
  @Assert(
    'maxCount == null || minCount <= maxCount',
    'maxCount must be higher or equal to minCount',
  )
  const factory WoFormInput.media({
    required String id,
    required MediaImportSettings importSettings,
    required int? maxCount,
    @Default(0) int minCount,
    List<Media>? initialValues,
    @notSerializable GetCustomErrorForListDef<Media>? getCustomError,

    /// An optionnal callback when the value changed
    @notSerializable void Function(List<Media>? value)? onValueChanged,

    /// Only applies if maxCount is 1
    @Default(false) bool submitFormOnSelect,

    /// Required if you use MediaInput.export()
    String? uploadPath,
    @Default(MediaInputUiSettings()) MediaInputUiSettings uiSettings,
  }) = MediaInput;

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
    @notSerializable GetCustomErrorDef<num>? getCustomError,

    /// An optionnal callback when the value changed
    @notSerializable void Function(num? value)? onValueChanged,
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
    @notSerializable GetCustomErrorForListDef<String>? getCustomError,

    /// An optionnal callback when the value changed
    @notSerializable void Function(List<String>? value)? onValueChanged,

    /// Only applies if maxCount is 1
    @Default(false) bool submitFormOnSelect,
    @JsonKey(toJson: _SelectInputUiSettingsX.staticToJsonString)
    @Default(SelectInputUiSettings<String>())
    SelectInputUiSettings<String> uiSettings,
    // The correct answer is the index of availibleValues
    QuizSettings? quizSettings,
  }) = SelectStringInput;

  const factory WoFormInput.string({
    required String id,
    String? initialValue,
    @Default(false) bool isRequired,
    String? regexPattern,

    /// If set, the field will be a place autocomplete.
    PlaceAutocompleteSettings? placeAutocompleteSettings,
    @notSerializable GetCustomErrorDef<String>? getCustomError,
    @Default(StringInputUiSettings()) StringInputUiSettings uiSettings,
  }) = StringInput;

  const WoFormInput._();

  factory WoFormInput.fromJson(Json json) => _$WoFormInputFromJson(json);

  // --

  @override
  Future<void> export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
    required BuildContext context,
  }) async {
    final exportValue = await _exportValue(values['$parentPath/$id'], context);

    if (into is List) {
      into.add(exportValue);
    } else if (into is Map) {
      into[getExportKey(values: values, parentPath: parentPath)] = exportValue;
    }
  }

  Future<Object?> _exportValue(
    dynamic value,
    BuildContext context,
  ) async {
    switch (this) {
      case BooleanInput():
        return value as bool?;
      case DateTimeInput():
        return value as DateTime?;
      case DurationInput():
        return value as Duration?;
      case MediaInput(uploadPath: final uploadPath):
        if (uploadPath == null) {
          throw AssertionError(
            'You must provide uploadPath in order to use MediaInput.export()',
          );
        }
        final medias = value as List<Media>?;
        if (medias == null) return null;
        final mediasService = context.read<MediaService>();
        return Future.wait(
          medias
              .map(
                (media) => media.uploaded(
                  mediaService: mediasService,
                  path: uploadPath,
                ),
              )
              .toList(),
        );
      case NumInput():
        return value as num?;
      case SelectStringInput(maxCount: final maxCount):
        return SelectInput._selectedValuesToJson(
          selectedValues: value as List<String>?,
          toJsonT: (value) => value,
          asList: maxCount != 1,
        );
      case StringInput():
        return value as String?;
    }
  }

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
        minDate: final minDate,
        maxDate: final maxDate,
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

        if (minDate != null && value.isBefore(minDate.resolve())) {
          return WoFormInputError.minBound(path: '$parentPath/$id');
        }
        if (maxDate != null) {
          if (DateTime(
            value.year,
            value.month,
            value.day,
          ).isAfter(maxDate.resolve())) {
            return WoFormInputError.maxBound(path: '$parentPath/$id');
          }
        }

        return null;

      case DurationInput(
        isRequired: final isRequired,
        minDuration: final minDuration,
        maxDuration: final maxDuration,
        getCustomError: final getCustomError,
      ):
        value as Duration?;

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

        if (minDuration != null && value < minDuration) {
          return WoFormInputError.minBound(path: '$parentPath/$id');
        }
        if (maxDuration != null) {
          if (value > maxDuration) {
            return WoFormInputError.maxBound(path: '$parentPath/$id');
          }
        }

        return null;

      case MediaInput(
        id: final inputId,
        minCount: final minCount,
        maxCount: final maxCount,
        getCustomError: final getCustomError,
      ):
        return SelectInput._validator<Media>(
          inputId: inputId,
          parentPath: parentPath,
          selectedValues: (value as List<Media>?) ?? [],
          availibleValues: [],
          idsOfAvailibleValues: null,
          minCount: minCount,
          maxCount: maxCount,
          getCustomError: getCustomError,
        );

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
    }
  }

  @override
  Json getInitialValues({required String parentPath}) {
    switch (this) {
      case BooleanInput(initialValue: final initialValue):
        return {'$parentPath/$id': initialValue};
      case DateTimeInput(initialValue: final initialValue):
        return {'$parentPath/$id': initialValue?.resolve()};
      case DurationInput(initialValue: final initialValue):
        return {'$parentPath/$id': initialValue};
      case MediaInput(initialValues: final initialValues):
        return {'$parentPath/$id': initialValues};
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
      case DurationInput():
        return DurationFieldBuilder(key: key, path: path);
      case MediaInput():
        return MediaFieldBuilder(key: key, path: path);
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

  @override
  int? flex(BuildContext context) => switch (this) {
    final SelectStringInput input => input.uiSettings.flex,
    _ => null,
  };
}

// Note : when adding a new parameter, make sure to update
// SelectStringFieldBuilder.
@Freezed(genericArgumentFactories: true)
abstract class SelectInput<T>
    with _$SelectInput<T>, WoFormNodeMixin, WoFormInputMixin {
  const factory SelectInput({
    required String id,
    required int? maxCount,
    @Default(0) int minCount,
    List<T>? initialValues,
    @Default([]) List<T> availibleValues,

    /// idsOfAvailibleValues allows to set an identifier to each value.
    /// This way, we keep the advantage of a list : the order
    /// and we gain the advantage of a map : the identifiers
    /// while staying jsonifiable.
    /// If set, the object stored at the path of this input in WoFormValuesCubit
    /// will be the id of the selected value.
    List<String>? idsOfAvailibleValues,

    /// An optionnal callback when the value changed
    @notSerializable void Function(List<T>? value)? onValueChanged,
    @notSerializable GetCustomErrorForListDef<T>? getCustomError,

    /// Only applies if maxCount is 1
    @Default(false) bool submitFormOnSelect,
    SelectInputUiSettings<T>? uiSettings,
    QuizSettings? quizSettings,

    /// The following fields are mostly usefull for hydrataion
    ///
    /// Ex :
    /// SelectInput&lt;TimeControl&gt;(
    ///   toJsonT: (value) => (value as TimeControl?)?.toJson(),
    ///   fromJsonT: (json) =>
    ///       TimeControl.fromJson(json as Json? ?? {}),
    /// ),
    @notSerializable dynamic Function(dynamic)? toJsonT,
    @notSerializable dynamic Function(dynamic)? fromJsonT,
  }) = _SelectInput<T>;

  const SelectInput._();

  factory SelectInput.fromJson(
    Json json,
    T Function(Object? json) fromJsonT,
  ) => _$SelectInputFromJson(json, fromJsonT);

  @override
  // If the override is invalid, go in :
  // wo_form_input.freezed.dart -> mixin _$SelectInput<T>
  // Comment the toJson() method.
  Json toJson() => _$SelectInputToJson(
    this as _SelectInput<T>,
    toJsonT ?? _defaultToJsonT<T>,
  );

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
  Future<void> export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
    required BuildContext context,
  }) async {
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
  Json getInitialValues({required String parentPath}) => {
    '$parentPath/$id': initialValues,
  };

  @override
  Widget toWidget({required String parentPath, Key? key}) =>
      SelectFieldBuilder<T>(key: key, path: '$parentPath/$id');

  @override
  SelectInput<T> withId({required String id}) => copyWith(id: id);

  @override
  int? flex(BuildContext context) => uiSettings?.flex;
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

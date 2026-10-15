import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';

part 'persistence_settings.freezed.dart';
part 'persistence_settings.g.dart';

/// Saves the form's values on this device and restores them when the form is
/// opened again, even after the app is restarted.
@freezed
abstract class PersistenceSettings with _$PersistenceSettings {
  @Assert("key != ''", 'PersistenceSettings.key must not be empty')
  const factory PersistenceSettings({
    /// The storage key of the saved values. Forms sharing the same key share
    /// the same saved values.
    required String key,

    /// If true, the saved values are deleted once the form is submitted
    /// successfully. The form then stops saving until it is opened again.
    @Default(true) bool clearOnSubmit,
  }) = _PersistenceSettings;

  const PersistenceSettings._();

  factory PersistenceSettings.fromJson(Json json) =>
      _$PersistenceSettingsFromJson(json);
}

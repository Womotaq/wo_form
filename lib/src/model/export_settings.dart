import 'package:freezed_annotation/freezed_annotation.dart';

part 'export_settings.freezed.dart';
part 'export_settings.g.dart';

enum ExportType {
  /// The node will export its children into a map, where the keys are the input
  /// ids, and the values are the inputs exported data.
  list,

  /// The nede will export its children into a list,
  /// containing the inputs exported data.
  map,

  /// If the parent node is The node will export its first exportable child's
  /// exported data.
  mergeWithParent;
}

@freezed
abstract class ExportSettings with _$ExportSettings {
  const factory ExportSettings({
    @Default({}) Map<String, dynamic> metadata,
    @Default(ExportType.map) ExportType type,
  }) = _ExportSettings;

  const ExportSettings._();

  factory ExportSettings.fromJson(Map<String, dynamic> json) =>
      _$ExportSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(ExportSettings object) =>
      object.toJson();
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class MediaListConverter extends JsonConverter<List<Media>, List<dynamic>> {
  const MediaListConverter();

  @override
  List<Media> fromJson(List<dynamic> json) => json
      .map((mediaJson) => Media.fromJson(mediaJson as Map<String, dynamic>))
      .toList();

  @override
  List<dynamic> toJson(List<Media> object) =>
      object.map((input) => input.toJson()).toList();
}

class MediaImportMethodListConverter
    extends JsonConverter<List<MediaImportMethod>, List<dynamic>> {
  const MediaImportMethodListConverter();

  @override
  List<MediaImportMethod> fromJson(List<dynamic> json) => json
      .map(
        (mediaJson) =>
            MediaImportMethod.fromJson(mediaJson as Map<String, dynamic>),
      )
      .toList();

  @override
  List<dynamic> toJson(List<MediaImportMethod> object) =>
      object.map((input) => input.toJson()).toList();
}

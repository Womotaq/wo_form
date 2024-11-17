import 'package:json_annotation/json_annotation.dart';

class DurationNullableConverter extends JsonConverter<Duration?, int?> {
  const DurationNullableConverter();

  @override
  Duration? fromJson(int? json) =>
      json == null ? null : Duration(milliseconds: json);

  @override
  int? toJson(Duration? object) => object?.inMilliseconds;
}

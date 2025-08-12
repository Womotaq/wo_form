import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class XFileConverter extends JsonConverter<XFile, Json> {
  const XFileConverter();

  @override
  XFile fromJson(Json json) => throw Exception("Can't deserialize an XFile");

  @override
  Json toJson(XFile object) => throw Exception("Can't serialize an XFile");
}

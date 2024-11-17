import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class XFileConverter extends JsonConverter<XFile, Map<String, dynamic>> {
  const XFileConverter();

  @override
  XFile fromJson(Map<String, dynamic> json) =>
      throw Exception("Can't deserialize an XFile");

  @override
  Map<String, dynamic> toJson(XFile object) =>
      throw Exception("Can't serialize an XFile");
}

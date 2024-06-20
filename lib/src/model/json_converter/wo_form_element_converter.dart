import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class WoFormElementConverter
    extends JsonConverter<WoFormElementMixin, Map<String, dynamic>> {
  const WoFormElementConverter();

  @override
  WoFormElementMixin fromJson(Map<String, dynamic> json) {
    try {
      return WoFormInput.fromJson(json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(WoFormElementMixin object) => object.toJson();
}

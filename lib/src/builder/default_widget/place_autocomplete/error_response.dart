import 'package:wo_form/src/utils/extensions.dart';

class ErrorResponse {
  ErrorResponse({this.message, this.status});

  ErrorResponse.fromJson(Json json) {
    message = json['message'] as String?;
    status = json['status'] as int?;
  }

  String? message;
  int? status;

  Json toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;

    return data;
  }
}

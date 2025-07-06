class ErrorResponse {
  ErrorResponse({this.message, this.status});

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    status = json['status'] as int?;
  }

  String? message;
  int? status;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;

    return data;
  }
}

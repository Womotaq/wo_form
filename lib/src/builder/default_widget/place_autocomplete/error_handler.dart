import 'package:wo_form/src/builder/default_widget/place_autocomplete/error_response.dart';

// LATER : rework

class ErrorHandler {
  factory ErrorHandler() {
    return _inst;
  }
  ErrorHandler.internal();

  static final ErrorHandler _inst = ErrorHandler.internal();
  ErrorResponse errorResponse = ErrorResponse();

  ErrorResponse handleError(Object error) {
    if (error.runtimeType.toString().toLowerCase() ==
        '_TypeError'.toLowerCase()) {
      errorResponse.message = 'The Provided API key is invalid';
      return errorResponse;
    }
    errorResponse.message = 'The Provided API key is invalid';
    return errorResponse;
  }
}

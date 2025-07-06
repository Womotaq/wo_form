import 'package:dio/dio.dart';

import 'package:wo_form/src/builder/default_widget/place_autocomplete/error_response.dart';

class DioErrorHandler {
  ErrorResponse errorResponse = ErrorResponse();
  String errorDescription = '';

  ErrorResponse handleDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorResponse.message = 'Request to API server was cancelled';
      case DioExceptionType.connectionTimeout:
        errorResponse.message = 'Connection timeout with API server';
      case DioExceptionType.unknown:
        if (dioError.message?.contains('RedirectException') ?? false) {
          errorResponse.message = '${dioError.message}';
        } else {
          errorResponse.message = 'Please check the internet connection';
        }
      case DioExceptionType.receiveTimeout:
        errorResponse.message = 'Receive timeout in connection with API server';
      case DioExceptionType.badResponse:
        try {
          final data = dioError.response?.data as Map?;
          if (data?['message'] != null) {
            errorResponse.message = data!['message'] as String?;
          } else {
            if ((dioError.response?.statusMessage ?? '').isNotEmpty) {
              errorResponse.message = dioError.response?.statusMessage;
            } else {
              return _handleError(
                  dioError.response!.statusCode, dioError.response!.data);
            }
          }
        } catch (e) {
          if ((dioError.response?.statusMessage ?? '').isNotEmpty) {
            errorResponse.message = dioError.response?.statusMessage;
          } else {
            return _handleError(
              dioError.response!.statusCode,
              dioError.response!.data,
            );
          }
        }

      case DioExceptionType.sendTimeout:
        errorResponse.message = 'Send timeout in connection with API server';
      case DioExceptionType.badCertificate:
        errorResponse.message = 'Bad certificate';
      case DioExceptionType.connectionError:
        errorResponse.message = 'Connection error';
    }
    return errorResponse;
  }

  ErrorResponse _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return getMas(error);
      // case 401:
      //   return checkTokenExpire(error);
      case 404:
        return getMas(error);
      case 403:
        return getMas(error);
      case 500:
        errorResponse.message = 'Internal server error';
        return errorResponse;
      default:
        return getUnKnownMes(error);
    }
  }

  ErrorResponse getMas(dynamic error) {
    if (error is Map) {
      errorResponse.message = error['message'].toString();
    } else {
      errorResponse.message = 'Something Wrong';
    }
    return errorResponse;
  }

  ErrorResponse getUnKnownMes(dynamic error) {
    if (error is Map) {
      if (error['msg'] != null) {
        errorResponse.message = error['msg'].toString();
      } else if (error['message'] != null) {
        errorResponse.message = error['message'].toString();
      } else {
        errorResponse.message = 'Something went wrong';
      }
    } else {
      errorResponse.message = 'Something went wrong';
    }
    return errorResponse;
  }
}

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
    } else if (error is DioException) {
      return DioErrorHandler().handleDioError(error);
    }
    errorResponse.message = 'The Provided API key is invalid';
    return errorResponse;
  }
}

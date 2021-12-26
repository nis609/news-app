import 'dart:io';

import 'package:dio/dio.dart';

class DioExceptionError implements Exception {
  DioExceptionError.fromDioError(dioError) {
    if (dioError is Exception) {
      if (dioError is DioError) {
        switch (dioError.type) {
          case DioErrorType.cancel:
            message = 'Request to API server was cancelled';
            break;
          case DioErrorType.connectTimeout:
            message = 'Connection timeout with API server';
            break;
          case DioErrorType.other:
            message =
                'Connection to API server failed due to internet connection';
            break;
          case DioErrorType.receiveTimeout:
            message = 'Receive timeout in connection with API server';
            break;
          case DioErrorType.response:
            message = _handleError(dioError.response?.statusCode ?? 500);
            break;
          case DioErrorType.sendTimeout:
            message = 'Send timeout in connection with API server';
            break;
          default:
            message = 'Something went wrong';
            break;
        }
      } else if (dioError is SocketException) {
        message = 'No Internet Connection';
      } else {
        message = 'Unexcepted error';
      }
    } else {
      if (dioError.toString().contains('is not a subtype of')) {
        message = 'Unable to Process data';
      } else {
        message = 'Unexpected Error';
      }
    }
  }

  String message = '';

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Unauthorised request';

      case 401:
        return 'Unauthorised request';
      case 403:
        return 'Unauthorised request';
      case 404:
        return '404 not Found';
      case 409:
        return 'Error due to conflict';
      case 408:
        return 'Connection request timeout';
      case 500:
        return 'Internal Server Error';
      case 503:
        return 'Service Unavailable';
      default:
        return 'Something Went Wrong ';
    }
  }

  @override
  String toString() => message;
}

import 'package:dio/dio.dart';


class DioClient {
  DioClient._internal() {
    dio
      ..options.baseUrl = 'https://purnapaath.com/api/'
      ..options.connectTimeout = 15000
      ..options.receiveTimeout = 30000
      ..httpClientAdapter
      ..options.headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      };
  }
  Dio dio = Dio();

  static DioClient? _dioCilent;

  static DioClient get client {
    return _dioCilent ??= DioClient._internal();
  }
}

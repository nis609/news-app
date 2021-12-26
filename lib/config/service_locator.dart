import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'dio_client.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingletonAsync<DioClient>(()async => DioClient.client);
}

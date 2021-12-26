
import 'package:news_portal_app/config/dio_client.dart';
import 'package:news_portal_app/config/error.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/module/home_screen/model/nav_bar_model/navigation_categories.dart';

final homeProvider = Provider((ref) {
  return NavigationRepo();
});

class NavigationRepo {
  final dioClient = DioClient.client;


  //category list
  Future<List<NavigationCategories>> getNavigationList() async {
    final product = <NavigationCategories>[];
   // dioClient.dio.options.headers['Authorization'] =
    //'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'getNavabarCategories',
        // data: FormData.fromMap({
        //   'type': 'eshop',
        //   'limit': 5,
        // }),
      );
      print(response.data);
      response.data['data']['navbarCategories'].forEach((category) {
        product.add(NavigationCategories.fromJson(category));
      });
      return product;
    } on DioError catch (dioError) {
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }


}
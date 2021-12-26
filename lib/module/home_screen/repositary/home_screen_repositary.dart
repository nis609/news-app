
import 'package:news_portal_app/config/dio_client.dart';
import 'package:news_portal_app/config/error.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_data.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_item.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_page_data.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeScreenProvider = Provider((ref) {
  return HomeScreenRepositiary();
});

class HomeScreenRepositiary {
  final dioClient = DioClient.client;


  //category list
  Future<List<CateogoryNewsItem>> getHomePage() async {
    final product = <CateogoryNewsItem>[];
    // dioClient.dio.options.headers['Authorization'] =
    //'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'getHomePageData',
        // data: FormData.fromMap({
        //   'type': 'eshop',
        //   'limit': 5,
        // }),
      );
      print(response.data['data']['categoryBreaking']);
      response.data['data']['categoryBreaking']['category_news_items'].forEach((category) {
        print(category);
        product.add(CateogoryNewsItem.fromJson(category));
      });
      return product;
    } on DioError catch (dioError) {
      print(dioError);
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      print(e);
      throw DioExceptionError.fromDioError(e);
    }
  }

  Future<CateogoryNewsData> getHomePages() async {
    var product = CateogoryNewsItem;
    // dioClient.dio.options.headers['Authorization'] =
    //'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'getHomePageData',
        // data: FormData.fromMap({
        //   'type': 'eshop',
        //   'limit': 5,
        // }),
      );
      print(response.data['data']['categoryBreaking']);

      return CateogoryNewsData.fromJson(response.data['data']['categoryBreaking']);
    } on DioError catch (dioError) {
      print(dioError);
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      print(e);
      throw DioExceptionError.fromDioError(e);
    }
  }
  Future<HomeModel> getHomePagess() async {
    var product = HomePageData;
    // dioClient.dio.options.headers['Authorization'] =
    //'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'getHomePageData',
        // data: FormData.fromMap({
        //   'type': 'eshop',
        //   'limit': 5,
        // }),
      );

        if(response.data!=null){
          print(response.data);
        }
      return HomeModel.fromJson(response.data);
    } on DioError catch (dioError) {
      print(dioError);
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      print(e);
      throw DioExceptionError.fromDioError(e);
    }
  }

}
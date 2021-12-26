
import 'package:news_portal_app/config/dio_client.dart';
import 'package:news_portal_app/config/error.dart';
import 'package:news_portal_app/module/category/model/category_modal.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_data.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_item.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_page_data.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final categoryScreenProvider = Provider((ref) {
  return CategoryRepo();
});

class CategoryRepo {
  final dioClient = DioClient.client;


  //category list
  Future<Categorymodal> getHomePagess({required String category_url}) async {
    var product = HomePageData;
    // dioClient.dio.options.headers['Authorization'] =
    //'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'categoryNews?category_url=$category_url',
        // data: FormData.fromMap({
        //   'type': 'eshop',
        //   'limit': 5,
        // }),
      );

      if(response.data!=null){
        print(response.data);
      }
      return Categorymodal.fromJson(response.data);
    } on DioError catch (dioError) {
      print(dioError);
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      print(e);
      throw DioExceptionError.fromDioError(e);
    }
  }



}

import 'package:news_portal_app/config/dio_client.dart';
import 'package:news_portal_app/config/error.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_data.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_item.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_page_data.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/module/home_screen/model/news_detail/news_modal.dart';

final newsDetailProvider = Provider((ref) {
  return NewsDetailRepositary();
});

class NewsDetailRepositary {
  final dioClient = DioClient.client;


  //category list
  Future<NewsModal> getProductDetails( {required String slug}) async {
    var product = HomePageData;
    // dioClient.dio.options.headers['Authorization'] =
    //'Bearer ${await _secureStorage.read(key: 'Token')}';
    try {
      final response = await dioClient.dio.get(
        'getnewsdetails?slug=${slug}',
        // data: FormData.fromMap({
        //   'type': 'eshop',
        //   'limit': 5,
        // }),
      );

      if(response.data!=null){
        print(response.data);
      }
      return NewsModal.fromJson(response.data);
    } on DioError catch (dioError) {
      print(dioError);
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      print(e);
      throw DioExceptionError.fromDioError(e);
    }
  }



}
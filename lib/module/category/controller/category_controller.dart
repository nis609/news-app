import 'package:dio/dio.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/config/dio_client.dart';
import 'package:news_portal_app/module/category/repostitary/catergory_repositary.dart';
import 'package:news_portal_app/module/category/repostitary/catergory_repositary.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/news_detail_repostitary.dart';

class CategoryController extends StateNotifier<AppState> {
  CategoryController(this.CategoryRepositary) : super(AppState.initial());
  final CategoryRepo CategoryRepositary;
  Future cartAddOrChange(
      {required int product_id, required int quantity}) async {
    // try {
    //   state = AppState.loading();
    //   final _response = await _fmnRepository.addToCart(
    //       product_id: product_id, quantity: quantity);
    //   state = AppState.data(_response);
    // } catch (e) {
    //   state = AppState.error(e);
    // }
  }





}


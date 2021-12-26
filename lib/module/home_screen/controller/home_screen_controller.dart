import 'package:dio/dio.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/config/dio_client.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';

class HomeScreenController extends StateNotifier<AppState> {
  HomeScreenController(this._navigationCategoriesRepository) : super(AppState.initial());
  final HomeScreenRepositiary _navigationCategoriesRepository;
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
class HomeScreenControllers extends StateNotifier<AppState> {
  HomeScreenControllers(this._navigationCategoriesRepository) : super(AppState.initial());
  final NavigationRepo _navigationCategoriesRepository;
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

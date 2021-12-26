import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/category/controller/category_controller.dart';
import 'package:news_portal_app/module/category/repostitary/catergory_repositary.dart';
import 'package:news_portal_app/module/home_screen/controller/home_screen_controller.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';

final categoryProviderGlobal = StateNotifierProvider<CategoryController, AppState>((ref) {
  return CategoryController(ref.watch(categoryScreenProvider));
});

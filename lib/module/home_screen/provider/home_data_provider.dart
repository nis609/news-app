
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/home_screen/controller/home_screen_controller.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';

final cartProviderGlobal = StateNotifierProvider<HomeScreenController, AppState>((ref) {
  return HomeScreenController(ref.watch(homeScreenProvider));
});

import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/home_screen/controller/home_screen_controller.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProviderGlobal = StateNotifierProvider<HomeScreenControllers, AppState>((ref) {
  return HomeScreenControllers(ref.watch(homeProvider));
});

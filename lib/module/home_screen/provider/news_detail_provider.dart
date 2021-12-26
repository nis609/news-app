import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/home_screen/controller/home_screen_controller.dart';
import 'package:news_portal_app/module/home_screen/controller/new_detail_controller.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/news_detail_repostitary.dart';

final newsProviderGlobal = StateNotifierProvider<NewsDetailController, AppState>((ref) {
  return NewsDetailController(ref.watch(newsDetailProvider));
});

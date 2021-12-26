import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/category/model/category_modal.dart';
import 'package:news_portal_app/module/category/repostitary/catergory_repositary.dart';
import 'package:news_portal_app/module/category/view/widget/catergory_widget.dart';
import 'package:news_portal_app/module/home_screen/model/nav_bar_model/navigation_categories.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:news_portal_app/module/home_screen/view/Widget/important_news.dart';
import 'package:news_portal_app/module/home_screen/view/home_screen.dart';

import 'package:news_portal_app/res/size_config.dart';
import 'package:news_portal_app/shared/widget/circular_loading.dart';


final productByCategoryProvide = FutureProvider.autoDispose.family<Categorymodal,String>((ref,category_url) {
  return ref.watch(categoryScreenProvider).getHomePagess(category_url: category_url);
});

final productByCategoryProviders =
FutureProvider.autoDispose<List<NavigationCategories>>((ref) {
  return ref.watch(homeProvider).getNavigationList();
});
class CategoryView extends StatefulWidget {
  final String category_url;
  const CategoryView({Key? key,required this.category_url}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                child: ProviderListener(
                  onChange: (context, state) {
                    print(state.toString());
                    print("asdasd");

                    if (state == AppState.loading()) {
                      // showDialog(
                      //     context: context, builder: (context) => const LoadingWidgets());
                    } else if (state is AppStateData) {
                      Navigator.pop(context);

                      //   state.data.fold((l) {
                      //   }, (r) {
                      //   //   ErrorDialog(
                      //   //       enumvalue: ErrorEnum.error,
                      //   //       context: context,
                      //   //       errorMessage: r.errors.toString());
                      //   // });
                      //   // Fluttertoast.showToast(msg: 'Profile Edit Success');
                      // }
                    }else if (state is AppStateError) {
                      Navigator.pop(context);
                      // ErrorDialog(
                      //     enumvalue: ErrorEnum.error,
                      //     context: context,
                      //     errorMessage: state.e.toString());
                    }
                  },
                  provider: categoryScreenProvider, child:
                Consumer(builder: (context, watch, child) {

                  return watch(productByCategoryProvide(widget.category_url)).when(
                      data: (data) {
                        final catergoryMainNews=data.categoryContent!;
                        if (data==null) {
                          return const Center(
                            child: Text('No Product Found'),
                          );
                        }
                        return RefreshIndicator(
                                    onRefresh: ()async{
                                      context.refresh(categoryScreenProvider);
                                    },
                          child: CustomScrollView(
                            slivers: [

                              SliverList(
                                delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int index) {
                                    return buildItemsForImportantNewss(context,index,data);
                                  },
                                  childCount: catergoryMainNews.categoryCollection?.CategoryDetailModel!.length, // 1000 list items
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      loading: () =>  Center(
                        child: CircularLoading(),
                      ),
                      error: (e, s) {
                        return ErrorPage();
                      });
                })

                ),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}

import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_data.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_item.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_page_data.dart';
import 'package:news_portal_app/module/home_screen/model/nav_bar_model/navigation_categories.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:news_portal_app/res/size_config.dart';
import 'package:news_portal_app/shared/widget/circular_loading.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'Widget/important_news.dart';


final productByCategoryProvider =
FutureProvider.autoDispose<List<CateogoryNewsItem>>((ref) {
  return ref.watch(homeScreenProvider).getHomePage();
});
final productByCategoryProvide =
FutureProvider.autoDispose<HomeModel>((ref) {
  return ref.watch(homeScreenProvider).getHomePagess();
});
final productByCategoryProviders =
FutureProvider.autoDispose<List<NavigationCategories>>((ref) {
  return ref.watch(homeProvider).getNavigationList();
});
final productByCategoryProviderss =
FutureProvider.autoDispose<CateogoryNewsData>((ref) {
  return ref.watch(homeScreenProvider).getHomePages();
});
class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();

  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: ProviderListener(
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
          provider: homeScreenProvider, child: RefreshIndicator(
          onRefresh: ()async{
            context.refresh(homeScreenProvider);

          },
            child: Scaffold
            (
            body:Consumer(builder: (context, watch, child) {

              return watch(productByCategoryProvide).when(
                  data: (data) {
                    final catergoryVideos=data.homePageData!.vdeoContainer!;
                    // final categorymiscellaneous=data.homePageData!.categorymiscellaneous!;
                    // final categoryPhotoFeature=data.homePageData!.categoryPhotoFeature!;
                    // final categoryShare=data.homePageData!.categoryShare!;
                    // final categorySport=data.homePageData!.categorySport!;
                    // final categorySudurpaschim=data.homePageData!.categorySudurpaschim!;
                    // final categoryThought=data.homePageData!.categoryThought!;
                    // final categoryTourism=data.homePageData!.categoryTourism!;
                    // final categoryLifestyle=data.homePageData!.categoryLifestyle!;
                    // final categoryInternational=data.homePageData!.categoryInternational!;
                    // final categoryInformationTechnology=data.homePageData!.categoryInformationTechnology!;
                    // final categoryIndustry=data.homePageData!.categoryIndustry!;
                    // final categoryHealth=data.homePageData!.categoryHealth!;
                    // final categoryGoodGovernance=data.homePageData!.categoryGoodGovernance!;
                    // final categoryEntertainment=data.homePageData!.categoryEntertainment!;
                    // final categoryeducation=data.homePageData!.categoryeducation!;
                    // final categoryEconomy=data.homePageData!.categoryEconomy!;
                    // final categoryBreaking=data.homePageData!.categoryBreaking!;
                    // final categoryAuto=data.homePageData!.categoryAuto!;
                    // final categoryAgriculture=data.homePageData!.categoryAgriculture!;

                    if (data==null) {
                      return const Center(
                        child: Text('No Videos Found'),
                      );
                    }
                    return SafeArea(
                      child: CustomScrollView(
                        slivers: [
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                               return buildItemsForVideos(context,index,data.homePageData!,catergoryVideos);

                              },
                              childCount: catergoryVideos.length, // 1000 list items
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Container(
                              height: 150,
                            ),
                          )

                          ]),
                    );
                  },
                  loading: () =>  Center(
                    child: CircularLoading(),
                  ),
                  error: (e, s) {
                    return ErrorPage();
                  });
            }) ,
        ),
          ),
          // child: TabBar(
          //     labelColor: Colors.black54,
          //     indicatorWeight: 2,
          //
          //     unselectedLabelColor: Colors.red.shade200,
          //     indicatorSize: TabBarIndicatorSize.label,
          //     indicatorPadding: EdgeInsets.symmetric(vertical: 10),
          //     indicatorColor: Colors.red,
          //
          //     // indicator: BoxDecoration(
          //     //     boxShadow: [
          //     //       BoxShadow(
          //     //         color: Colors.grey.withOpacity(0.6),
          //     //         spreadRadius: 1,
          //     //         blurRadius: 2,
          //     //         offset: Offset(0, 0), // changes position of shadow
          //     //       ),
          //     //     ],
          //     //
          //     //     borderRadius: BorderRadius.circular(30),
          //     //     color: Colors.white),
          //     tabs: [
          //       Tab(
          //         child: Align(
          //           alignment: Alignment.center,
          //           child: Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 5),
          //             child: Text("News Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          //           ),
          //         ),
          //       ),
          //       Tab(
          //         child: Align(
          //           alignment: Alignment.center,
          //           child: Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 5),
          //             child: Text("News Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          //           ),
          //         ),
          //       ),
          //       Tab(
          //         child: Align(
          //           alignment: Alignment.center,
          //           child: Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 5),
          //             child: Text("News Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          //           ),
          //         ),
          //       ),
          //     ]
          // ),
        ) ,
      ),
    );
  }
}

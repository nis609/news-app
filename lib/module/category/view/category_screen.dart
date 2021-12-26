import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/category/model/category_modal.dart';
import 'package:news_portal_app/module/category/repostitary/catergory_repositary.dart';
import 'package:news_portal_app/module/category/view/category_view.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/nav_bar_model/navigation_categories.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:news_portal_app/module/home_screen/view/Widget/important_news.dart';
import 'package:news_portal_app/module/home_screen/view/home_screen.dart';

import 'package:news_portal_app/res/size_config.dart';

final productByCategoryProvide =
FutureProvider.autoDispose<HomeModel>((ref) {
  return ref.watch(homeScreenProvider).getHomePagess();
});
// final productByCategoryProvide = FutureProvider.autoDispose<Categorymodal>((ref) {
//   return ref.watch(categoryScreenProvider).getHomePagess();
// });

final productByCategoryProviders =
FutureProvider.autoDispose<List<NavigationCategories>>((ref) {
  return ref.watch(homeProvider).getNavigationList();
});
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

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
                  provider: homeProvider, child: Scaffold
                  (
                  body:Consumer(builder: (context, watch, child) {

                    return watch(productByCategoryProviders).when(
                        data: (data) {
                          data.removeWhere((element) => element.category_name=="Home");
                          final catergoryMainNews=data;
                          if (data==null) {
                            return const Center(
                              child: Text('No Product Found'),
                            );
                          }
                          return DefaultTabController(
                            length: catergoryMainNews.length,
                            child: Scaffold(
                              appBar: AppBar(


                                toolbarHeight: 5,

                                //backgroundColor: AppColor.appNameThemeColor,
                                backgroundColor: Colors.grey[50],
                                elevation: 2,
                                // bottom:
                                // ProviderListener(
                                //   onChange: (context, state) {
                                //     print(state.toString());
                                //     print("asdasd");
                                //
                                //     if (state == AppState.loading()) {
                                //       // showDialog(
                                //       //     context: context, builder: (context) => const LoadingWidgets());
                                //     } else if (state is AppStateData) {
                                //       Navigator.pop(context);
                                //
                                //     //   state.data.fold((l) {
                                //     //   }, (r) {
                                //     //   //   ErrorDialog(
                                //     //   //       enumvalue: ErrorEnum.error,
                                //     //   //       context: context,
                                //     //   //       errorMessage: r.errors.toString());
                                //     //   // });
                                //     //   // Fluttertoast.showToast(msg: 'Profile Edit Success');
                                //     // }
                                //           }else if (state is AppStateError) {
                                //       Navigator.pop(context);
                                //       // ErrorDialog(
                                //       //     enumvalue: ErrorEnum.error,
                                //       //     context: context,
                                //       //     errorMessage: state.e.toString());
                                //     }
                                //   },
                                //   provider: homeProvider,
                                //   child: TabBar(
                                //       labelColor: Colors.black54,
                                //       indicatorWeight: 2,
                                //
                                //       unselectedLabelColor: Colors.red.shade200,
                                //       indicatorSize: TabBarIndicatorSize.label,
                                //       indicatorPadding: EdgeInsets.symmetric(vertical: 10),
                                //       indicatorColor: Colors.red,
                                //
                                //       // indicator: BoxDecoration(
                                //       //     boxShadow: [
                                //       //       BoxShadow(
                                //       //         color: Colors.grey.withOpacity(0.6),
                                //       //         spreadRadius: 1,
                                //       //         blurRadius: 2,
                                //       //         offset: Offset(0, 0), // changes position of shadow
                                //       //       ),
                                //       //     ],
                                //       //
                                //       //     borderRadius: BorderRadius.circular(30),
                                //       //     color: Colors.white),
                                //       tabs: [
                                //         Tab(
                                //           child: Align(
                                //             alignment: Alignment.center,
                                //             child: Padding(
                                //               padding: EdgeInsets.symmetric(horizontal: 5),
                                //               child: Text("News Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                //             ),
                                //           ),
                                //         ),
                                //         Tab(
                                //           child: Align(
                                //             alignment: Alignment.center,
                                //             child: Padding(
                                //               padding: EdgeInsets.symmetric(horizontal: 5),
                                //               child: Text("News Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                //             ),
                                //           ),
                                //         ),
                                //         Tab(
                                //           child: Align(
                                //             alignment: Alignment.center,
                                //             child: Padding(
                                //               padding: EdgeInsets.symmetric(horizontal: 5),
                                //               child: Text("News Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                //             ),
                                //           ),
                                //         ),
                                //       ]
                                //   ),
                                // ) ,
                                bottom: TabBar(
                                    labelColor: Colors.black87.withOpacity(.7),
                                    indicatorWeight: 2,
                                    isScrollable: true,



                                    unselectedLabelColor: Colors.blueGrey.shade200,
                                    indicatorSize: TabBarIndicatorSize.label,
                                    indicatorPadding: EdgeInsets.symmetric(vertical: 0),
                                    indicatorColor: Colors.red,

                                    // indicator: BoxDecoration(
                                    //     boxShadow: [
                                    //       BoxShadow(
                                    //         color: Colors.grey.withOpacity(0.6),
                                    //         spreadRadius: 1,
                                    //         blurRadius: 2,
                                    //         offset: Offset(0, 0), // changes position of shadow
                                    //       ),
                                    //     ],
                                    //
                                    //     borderRadius: BorderRadius.circular(30),
                                    //     color: Colors.white),
                                  tabs: catergoryMainNews.map<Widget>((NavigationCategories choice) {


                                    return Tab(
                                      iconMargin: EdgeInsets.all(10),


                                     child: Container(

                                       child: Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 0),
                                                      child: Text(choice.nepali_title.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                                    ),),
                                     )
                                     //  text: choice.nepali_title,
                                    );
                                  }).toList(),
                                ),
                              ),
                              body: TabBarView(
                              //  physics: NeverScrollableScrollPhysics(),
                                children: catergoryMainNews.map((NavigationCategories choice) {

                                  print(choice.category_url);
                                  print("akkkk");
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child:  CategoryView(category_url: choice.category_url!,),
                                  );
                                }).toList(),
                              ),
                            ),


                          );
                        },
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: (e, s) {
                          return Center(
                            child: Text("Something went wrong"),
                          );
                        });
                  }) ,
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
                ),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
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
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime dateToday = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day) ;
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat("yyyy.MMMM.dd \nEEE   hh:mm a ");
  final String formatted = formatter.format(now);
  var newDt = DateFormat.yMMMEd().format(now);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
            backgroundColor: Colors.white,
            body:Consumer(builder: (context, watch, child) {

              return watch(productByCategoryProvide).when(
                  data: (data) {
                    final catergoryMainNews=data.homePageData!.categoryMainNews!;
                    final categorymiscellaneous=data.homePageData!.categorymiscellaneous!;
                    final categoryPhotoFeature=data.homePageData!.categoryPhotoFeature!;
                    final categoryShare=data.homePageData!.categoryShare!;
                    final categorySport=data.homePageData!.categorySport!;
                    final categorySudurpaschim=data.homePageData!.categorySudurpaschim!;
                    final categoryThought=data.homePageData!.categoryThought!;
                    final categoryTourism=data.homePageData!.categoryTourism!;
                    final categoryLifestyle=data.homePageData!.categoryLifestyle!;
                    final categoryInternational=data.homePageData!.categoryInternational!;
                    final categoryInformationTechnology=data.homePageData!.categoryInformationTechnology!;
                    final categoryIndustry=data.homePageData!.categoryIndustry!;
                    final categoryHealth=data.homePageData!.categoryHealth!;
                    final categoryGoodGovernance=data.homePageData!.categoryGoodGovernance!;
                    final categoryEntertainment=data.homePageData!.categoryEntertainment!;
                    final categoryeducation=data.homePageData!.categoryeducation!;
                    final categoryEconomy=data.homePageData!.categoryEconomy!;
                    final categoryBreaking=data.homePageData!.categoryBreaking!;
                    final categoryAuto=data.homePageData!.categoryAuto!;
                    final categoryAgriculture=data.homePageData!.categoryAgriculture!;

                    if (data==null) {
                      return const Center(
                        child: Text('No Product Found'),
                      );
                    }
                    return CustomScrollView(
                      slivers: [
                        // SliverToBoxAdapter(
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(vertical: 8.0),
                        //     child: Row(
                        //       children: [
                        //         Expanded(child: Padding(
                        //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        //           child: Divider(color: Colors.grey,),
                        //         ),flex: 1,),
                        //         Expanded(child: Center(child: Text(catergoryMainNews.nepali_title!,style: TextStyle(fontSize: 20),)),flex: 1,),
                        //         Expanded(child: Padding(
                        //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        //           child: Divider(color: Colors.grey,),
                        //         ),flex: 1,),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.yellow.shade200,
                            height: SizeConfig.screenWidth!/6,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: [
                                   Align(
                                       alignment: Alignment.centerLeft,
                                       child: Text(
                                           Pagess().methods(now.toString()), style: TextStyle(fontSize: 15,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.grey))
                                   ),
                                   Text(formatted.toString(),style: TextStyle(fontSize: 15,
                                       fontWeight: FontWeight.w400,
                                       color: Colors.grey),),
                                 ],
                              ),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForImportantNews(context,index,data.homePageData!);
                            },
                            childCount: catergoryMainNews.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: Container(
                                color: Colors.grey[200],
                                child: ForTitle(context,categoryBreaking.nepali_title!)),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryBreaking(context,index,data.homePageData!);
                            },
                            childCount: categoryBreaking.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Container(
                                color: Colors.grey[200],
                                child: ForTitle(context,categoryShare.nepali_title!)),
                          ),
                        ),
                        SliverGrid(
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250.0,
                            mainAxisSpacing: 1.0,
                            crossAxisSpacing: 5.0,
                            childAspectRatio: 1.0,
                          ),
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryShare(context,index,data.homePageData!);
                            },
                            childCount: categoryShare.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),

                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: Container(
                                color: Colors.grey[200],
                                child: ForTitle(context,categoryAgriculture.nepali_title!)),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryAgriculture(context,index,data.homePageData!);
                            },
                            childCount: categoryAgriculture.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.grey,),
                                  ),flex: 1,),
                                  Expanded(child: Center(child: Text(categoryPhotoFeature.nepali_title!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.purple),)),flex: 1,),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.grey,),
                                  ),flex: 1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // SliverGrid(
                        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        //    crossAxisCount: 2,
                        //     childAspectRatio: 1,
                        //
                        //
                        //   ),
                        //   delegate: SliverChildBuilderDelegate(
                        //
                        //         (BuildContext context, int index) {
                        //
                        //       return buildItemsForCategoryPhotoFeature(context,index,data.homePageData!);
                        //     },
                        //     childCount: categoryPhotoFeature.cateogoryNewsItem!.length,
                        //
                        //     // 1000 list items
                        //   ),
                        // ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            width:SizeConfig.screenWidth ,
                            height: SizeConfig.screenWidth,
                            child: ListView.builder(
                                itemExtent: SizeConfig.screenWidth!-50,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => buildItemsForCategoryPhotoFeature(context,index,data.homePageData!),
                                itemCount: categoryPhotoFeature.cateogoryNewsItem!.length),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                Expanded(child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Divider(color: Colors.grey,thickness: 5,),
                                ),flex: 2,),
                                Expanded(child: Center(child: Text(categorySport.nepali_title!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),flex: 1,),
                                Expanded(child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Divider(color: Colors.grey,thickness: 5,),
                                ),flex: 2,),
                              ],
                            ),
                          ),
                        ),

                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategorySport(context,index,data.homePageData!);
                            },
                            childCount: categorySport.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: ForTitle(context,categorySudurpaschim.nepali_title!),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategorySudurpaschim(context,index,data.homePageData!);
                            },
                            childCount: categorySudurpaschim.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 5,),
                                  ),flex: 2,),
                                  Expanded(child: Center(child: Text(categoryThought.nepali_title!,style: TextStyle(fontSize: 20),)),flex: 1,),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 5,),
                                  ),flex: 2,),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryThought(context,index,data.homePageData!);
                            },
                            childCount: categoryThought.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),

                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: ForTitle(context,categoryTourism.category_name!),
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            width:SizeConfig.screenWidth ,
                            height: SizeConfig.screenWidth,
                            child: ListView.builder(
                                itemExtent: SizeConfig.screenWidth!/1.3,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => buildItemsForCategoryTourism(context,index,data.homePageData!),
                                itemCount: categoryTourism.cateogoryNewsItem!.length),
                          ),
                        ),
                        // SliverList(
                        //   delegate: SliverChildBuilderDelegate(
                        //         (BuildContext context, int index) {
                        //       return buildItemsForCategoryLifestyle(context,index,data.homePageData!);
                        //     },
                        //     childCount: categoryTourism.cateogoryNewsItem!.length, // 1000 list items
                        //   ),
                        // ),

                        // SliverToBoxAdapter(
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(vertical: 0.0),
                        //     child: ForTitle(context,categoryLifestyle.nepali_title!),
                        //   ),
                        // ),
                        // SliverList(
                        //   delegate: SliverChildBuilderDelegate(
                        //         (BuildContext context, int index) {
                        //       return buildItemsForCategoryLifestyle(context,index,data.homePageData!);
                        //     },
                        //     childCount: categoryLifestyle.cateogoryNewsItem!.length, // 1000 list items
                        //   ),
                        // ),
                        // SliverToBoxAdapter(
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(vertical: 0.0),
                        //     child: ForTitle(context,categoryInternational.nepali_title!),
                        //   ),
                        // ),
                        // SliverList(
                        //   delegate: SliverChildBuilderDelegate(
                        //         (BuildContext context, int index) {
                        //       return buildItemsForCategoryInternational(context,index,data.homePageData!);
                        //     },
                        //     childCount: categoryInternational.cateogoryNewsItem!.length, // 1000 list items
                        //   ),
                        // ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: ForTitle(context,categoryInformationTechnology.nepali_title!),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsCategoryInformationTechnology(context,index,data.homePageData!);
                            },
                            childCount: categoryInformationTechnology.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 3,),
                                  ),flex: 1,),
                                  Expanded(child: Center(child: Text(categoryIndustry.nepali_title!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),flex: 1,),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 3,),
                                  ),flex: 1,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryIndustry(context,index,data.homePageData!);
                            },
                            childCount: categoryIndustry.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: ForTitle(context,categoryHealth.nepali_title!),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryHealth(context,index,data.homePageData!);
                            },
                            childCount: categoryHealth.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              color: Colors.grey[200],
                              child: Row(
                                children: [
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 2,),
                                  ),flex: 2,),
                                  Expanded(child: Center(child: Text(categoryGoodGovernance.nepali_title!,style: TextStyle(fontSize: 20),)),flex: 1,),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 2,),
                                  ),flex: 2,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryGoodGovernance(context,index,data.homePageData!);
                            },
                            childCount: categoryGoodGovernance.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Container(
                                color: Colors.grey[200],
                                child: ForTitle(context,categoryEntertainment.nepali_title!)),
                          ),
                        ),
                        // SliverList(
                        //   delegate: SliverChildBuilderDelegate(
                        //         (BuildContext context, int index) {
                        //       return buildItemsForCategoryEntertainment(context,index,data.homePageData!);
                        //     },
                        //     childCount: categoryEntertainment.cateogoryNewsItem!.length, // 1000 list items
                        //   ),
                        // ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            width:SizeConfig.screenWidth ,
                            height: SizeConfig.screenWidth!-10,
                            child: ListView.builder(
                                itemExtent: SizeConfig.screenWidth!-50,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => buildItemsForCategoryEntertainment(context,index,data.homePageData!),
                                itemCount:categoryEntertainment.cateogoryNewsItem!.length),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: ForTitle(context,categoryeducation.nepali_title!),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryeducation(context,index,data.homePageData!);
                            },
                            childCount: categoryeducation.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              color: Colors.grey[200],
                              child: Row(
                                children: [
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 3,),
                                  ),flex: 2,),
                                  Expanded(child: Center(child: Text(categoryEconomy.nepali_title!,style: TextStyle(fontSize: 20),)),flex: 1,),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 3,),
                                  ),flex: 2,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryEconomy(context,index,data.homePageData!);
                            },
                            childCount: categoryEconomy.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        // SliverToBoxAdapter(
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(vertical: 0.0),
                        //     child: ForTitle(context,categoryBreaking.nepali_title!),
                        //   ),
                        // ),
                        // SliverList(
                        //   delegate: SliverChildBuilderDelegate(
                        //         (BuildContext context, int index) {
                        //       return buildItemsForCategoryBreaking(context,index,data.homePageData!);
                        //     },
                        //     childCount: categoryBreaking.cateogoryNewsItem!.length, // 1000 list items
                        //   ),
                        // ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              color: Colors.grey[200],
                              child: Row(
                                children: [
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 3,),
                                  ),flex: 2,),
                                  Expanded(child: Center(child: Text(categoryAuto.nepali_title!,style: TextStyle(fontSize: 20),)),flex: 1,),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Divider(color: Colors.white,thickness: 3,),
                                  ),flex: 2,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return buildItemsForCategoryAuto(context,index,data.homePageData!);
                            },
                            childCount: categoryAuto.cateogoryNewsItem!.length, // 1000 list items
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: ForTitle(context,categorymiscellaneous.nepali_title!),
                            ),
                          ),
                        ),

                        SliverToBoxAdapter(
                          child: SizedBox(
                            width:SizeConfig.screenWidth ,
                            height: SizeConfig.screenWidth!+50,
                            child: ListView.builder(
                                itemExtent: SizeConfig.screenWidth!-50,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => buildItemsForCategorymiscellaneous(context,index,data.homePageData!),
                                itemCount: categorymiscellaneous.cateogoryNewsItem!.length),
                          ),
                        ),

                      ],
                    );
                    // return SingleChildScrollView(
                    //   child: Column(
                    //     children: [
                    //       ForTitle(context,catergoryMainNews.nepali_title!),
                    //       Container(
                    //         margin: EdgeInsets.symmetric(vertical: 10),
                    //         height: SizeConfig.screenHeight!/3,
                    //         width:SizeConfig.screenWidth ,
                    //         child: ListView.builder(
                    //
                    //           // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //           //     crossAxisCount: 2,
                    //           //     crossAxisSpacing: 10,
                    //           //     mainAxisSpacing: 10,
                    //           //     childAspectRatio: 0.7),
                    //           scrollDirection: Axis.vertical,
                    //           physics: ClampingScrollPhysics(),
                    //           itemCount: catergoryMainNews.cateogoryNewsItem!.length,
                    //           itemBuilder: (BuildContext context, int index) {
                    //             return  buildItemsForImportantNews(context,index,data.homePageData!);
                    //           },
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //
                    // );
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

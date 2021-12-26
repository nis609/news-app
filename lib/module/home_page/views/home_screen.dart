import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/components/appbar.dart';
import 'package:news_portal_app/main.dart';
import 'package:news_portal_app/module/home_page/dummy_data/news.dart';
import 'package:news_portal_app/module/home_screen/model/nav_bar_model/navigation_categories.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_portal_app/res/size_config.dart';


final productByCategoryProvider =
FutureProvider<List<NavigationCategories>>((ref) {
  return ref.watch(homeProvider).getNavigationList();
});
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final int _startingTabCount = 2;

  late List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];
  List<Widget> _generalWidgets = <Widget>[];
  late TabController _tabController;
  @override
  void initState() {
    myTabs = getTabs(_startingTabCount)!;
    _tabController = getTabController();
    super.initState();

    print("sadhgadhasjdna");
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  List<Tab>? getTabs(int count) {
    myTabs.clear();
    for (int i = 0; i < count; i++) {
      myTabs.add(getTab(i));
    }
    return myTabs;
  }
  TabController getTabController() {
    return TabController(length: myTabs.length, vsync: this);
  }

  Tab getTab(int widgetNumber) {
    return Tab(
      text: "$widgetNumber",
    );
  }

  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(
        length: productByCategoryProvider.name!.length,

        child: Scaffold(
          appBar: AppBar(


            toolbarHeight: 50,

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
                labelColor: Colors.black54,
                indicatorWeight: 2,


                unselectedLabelColor: Colors.red.shade200,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.symmetric(vertical: 10),
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
                tabs: [
                  ProviderListener(
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

                      return watch(productByCategoryProvider).when(
                          data: (data) {
                            if (data.isEmpty) {
                              return const Center(
                                child: Text('No Product Found'),
                              );
                            }
                            return ListView.builder(
                                itemCount: data.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                // gridDelegate:
                                // const SliverGridDelegateWithFixedCrossAxisCount(
                                //   crossAxisCount: 2,
                                //   childAspectRatio: .8,
                                // ),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {

                                    },
                                    child: Container(
                                      width: SizeConfig.screenWidth ,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                        horizontal: 10,
                                      ),
                                      child: Container(
                                        width:  SizeConfig.screenWidth! * 42,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(18),
                                            border: Border.all(
                                                color: const Color(0xffFCBC04)),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: const Offset(0, 4),
                                                  blurRadius: 4,
                                                  spreadRadius: 1,
                                                  color: const Color(0xff000000)
                                                      .withOpacity(0.05))
                                            ]),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 8,
                                          ),

                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          error: (e, s) {
                            return Center(
                              child: Text(''),
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
                  )
                ]
            ),
          ),
          body:
          TabBarView(children: [
            NewsList(),
            NewsList(),
            NewsList(),
          ]),
        )
    );
  }
  List<Widget> getWidgets() {
    _generalWidgets.clear();
    for (int i = 0; i < myTabs.length; i++) {
      _generalWidgets.add(getWidget(i));
    }
    return _generalWidgets;
  }
}
Widget getWidget(int widgetNumber) {
  return Center(
    child: Text("Widget nr: $widgetNumber"),
  );
}

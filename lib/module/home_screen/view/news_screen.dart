import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/components/HtmlView.dart';
import 'package:news_portal_app/components/network_image.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_data.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/category_news_item.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_page_data.dart';
import 'package:news_portal_app/module/home_screen/model/nav_bar_model/navigation_categories.dart';
import 'package:news_portal_app/module/home_screen/model/news_detail/news_modal.dart';
import 'package:news_portal_app/module/home_screen/repositary/home_screen_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:news_portal_app/module/home_screen/repositary/news_detail_repostitary.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:news_portal_app/res/size_config.dart';
import 'package:news_portal_app/shared/widget/circular_loading.dart';
import 'package:share/share.dart';

import 'Widget/important_news.dart';

final productByCategoryProvide = FutureProvider.autoDispose.family<NewsModal,String>((ref,slug) {
  return ref.watch(newsDetailProvider).getProductDetails(slug: slug);
});

class NewsScreen extends StatefulWidget {
  final String slug;
  const NewsScreen({Key? key,required this.slug}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  var top = 0.0;
  _onShare(BuildContext context, String texts) async {
    // A builder is used to retrieve the context immediately
    // surrounding the ElevatedButton.
    //
    // The context's `findRenderObject` returns the first
    // RenderObject in its descendent tree when it's not
    // a RenderObjectWidget. The ElevatedButton's RenderObject
    // has its position and size after it's built.
    final RenderBox box = context.findRenderObject() as RenderBox;

    await Share.share(texts,
        subject: "subject",
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  bool _showAppBar = true;
  var gorkhaEarthQuake;
  var date1;
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
        body: SingleChildScrollView(
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
                    } else if (state is AppStateError) {
                      Navigator.pop(context);
                      // ErrorDialog(
                      //     enumvalue: ErrorEnum.error,
                      //     context: context,
                      //     errorMessage: state.e.toString());
                    }
                  },
                  provider: newsDetailProvider,
                  child: RefreshIndicator(
                    onRefresh: () async{
                      context.refresh(newsDetailProvider);
                    },
                    child: Consumer(builder: (context, watch, child) {
                      return watch(productByCategoryProvide(widget.slug)).when(
                          data: (data) {
                            final catergoryMainNews =
                            data.newsCollection!.newsDetailModel!;
                            gorkhaEarthQuake = NepaliDateTime.parse(catergoryMainNews.publish_time!);
                            date1= NepaliDateFormat("yyyy.MMMM.dd EEE hh:mm a");
                            date1.format(gorkhaEarthQuake);
                            var nt = DateTime(2019, 5, 14).toNepaliDateTime();
                            if (data == null) {
                              return const Center(
                                child: Text('No Product Found'),
                              );
                            }
                            return NestedScrollView(
                              // Setting floatHeaderSlivers to true is required in order to float
                              // the outer slivers over the inner scrollable.
                              floatHeaderSlivers: true,
                              headerSliverBuilder: (BuildContext context,
                                  bool innerBoxIsScrolled) {
                                return <Widget>[
                                  SliverAppBar(
                                    expandedHeight: 200.0,
                                    backgroundColor: Colors.white,
                                    floating: false,
                                    automaticallyImplyLeading: true,
                                    pinned: true,
                                    iconTheme: IconThemeData(color: Colors.black54),


                                    flexibleSpace: LayoutBuilder(builder:
                                        (BuildContext context,
                                        BoxConstraints constraints) {
                                      // print('constraints=' + constraints.toString());
                                      top = constraints.biggest.height;

                                      return FlexibleSpaceBar(
                                          centerTitle: false,
                                          titlePadding: EdgeInsets.symmetric(vertical: 10,horizontal: top <= 85? 50:20),


                                          title: AnimatedOpacity(
                                              duration:
                                              Duration(milliseconds: 300),
                                              //opacity: top == MediaQuery.of(context).padding.top + kToolbarHeight ? 1.0 : 0.0,
                                              opacity: 1.0,

                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  alignment:Alignment.bottomLeft ,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical:  top <= 85? 10:0),
                                                  width: 200,
                                                  child: Text(
                                                    top <= 85
                                                        ? "News Details"
                                                        : catergoryMainNews
                                                        .meta_title!,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 15.0,color: top <= 85?Colors.black54:Colors.white),
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              )),
                                          background: NetworkImageHelperforCard(
                                            imagelink:
                                            catergoryMainNews.parallex_img,
                                          ));
                                    }),
                                    actions: [
                                      IconButton(
                                        icon: Icon(Icons.refresh,color: Colors.black54,),
                                        onPressed: () async {
                                          setState(
                                                  () => _showAppBar = !_showAppBar);
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.share,color: Colors.black54),
                                        onPressed: () {
                                          _onShare(context, "widget.url!");
                                        },
                                      )
                                    ],
                                  ),
                                ];
                              },
                              body: Stack(
                                children: [
                                  // Scaffold(
                                  // appBar: _showAppBar ? AppBar() : null,
                                  // )

                                  CustomScrollView(
                                    //controller: mainAppScrollController,
                                    slivers: [
                                      SliverList(
                                        delegate: SliverChildListDelegate(
                                          [
                                            // buildHomeMenuRow(context),
                                            // SizedBox(
                                            //   child: Container(
                                            //     padding: EdgeInsets.only(top: 10),
                                            //     color: MyTheme.light_grey,
                                            //   ),
                                            //   height: 1,
                                            // ),
                                            // Center(
                                            //   child: Divider(
                                            //     color: MyTheme.light_grey,
                                            //     thickness: 1,
                                            //   ),
                                            // ),

                                            // Divider(
                                            //   color: MyTheme.light_grey,
                                            //   thickness: 1,
                                            // ),
                                          ],
                                        ),
                                      ),
                                      SliverList(
                                        delegate: SliverChildListDelegate(
                                          [
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 5),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                    child: Row(
                                                      children: [
                                                        Expanded(child: Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                          child: Divider(color: Colors.grey,),
                                                        ),flex: 2,),
                                                        Expanded(child: Center(child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,

                                                                boxShadow: [
                                                                  // BoxShadow(
                                                                  //   color: Colors.white.withOpacity(0.6),
                                                                  //   spreadRadius: 1,
                                                                  //   blurRadius: 2,
                                                                  //   offset: Offset(0, 0), // changes position of shadow
                                                                  // ),
                                                                ],
                                                                border: Border.all(
                                                                    color:
                                                                    Colors.purple,
                                                                    width: 1)),
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(
                                                                  4.0),
                                                              child: Image
                                                                  .asset(
                                                                "assets/applogo.png",
                                                                height:
                                                                SizeConfig.screenWidth! /
                                                                    12,
                                                                width: SizeConfig
                                                                    .screenWidth! /
                                                                    12,
                                                              ),
                                                            ))),flex: 1,),
                                                        Expanded(child: Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                          child: Divider(color: Colors.grey,),
                                                        ),flex: 2,),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 5,
                                                        horizontal: 0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            // Container(
                                                            //     alignment: Alignment
                                                            //         .centerLeft,
                                                            //     decoration:
                                                            //         BoxDecoration(
                                                            //             shape: BoxShape
                                                            //                 .circle,
                                                            //             boxShadow: [
                                                            //               // BoxShadow(
                                                            //               //   color: Colors.white.withOpacity(0.6),
                                                            //               //   spreadRadius: 1,
                                                            //               //   blurRadius: 2,
                                                            //               //   offset: Offset(0, 0), // changes position of shadow
                                                            //               // ),
                                                            //             ],
                                                            //             border: Border.all(
                                                            //                 color:
                                                            //                     Colors.purple,
                                                            //                 width: 1)),
                                                            //     child: Padding(
                                                            //       padding:
                                                            //           const EdgeInsets
                                                            //                   .all(
                                                            //               4.0),
                                                            //       child: Image
                                                            //           .asset(
                                                            //         "assets/applogo.png",
                                                            //         height:
                                                            //             SizeConfig.screenWidth! /
                                                            //                 12,
                                                            //         width: SizeConfig
                                                            //                 .screenWidth! /
                                                            //             12,
                                                            //       ),
                                                            //     )),
                                                            Expanded(
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical: 2,
                                                                    horizontal:
                                                                    10),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .symmetric(
                                                                          vertical:
                                                                          2,
                                                                          horizontal:
                                                                          0.0),
                                                                      child: Text(
                            Pagess().method(catergoryMainNews.publish_time.toString()),
                                                                          style: TextStyle(
                                                                              fontSize: 15,
                                                                              fontWeight: FontWeight.w500)),
                                                                    ),
                                                                    // Padding(
                                                                    //   padding: const EdgeInsets
                                                                    //       .symmetric(
                                                                    //       vertical:
                                                                    //       2,
                                                                    //       horizontal:
                                                                    //       0.0),
                                                                    //   child: Text(
                                                                    //       Pagess().nepaliTime(catergoryMainNews.publish_time.toString()),
                                                                    //       style: TextStyle(
                                                                    //           fontSize: 15,
                                                                    //           fontWeight: FontWeight.w500)),
                                                                    // ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Container(
                                                          margin:EdgeInsets.symmetric(vertical: 5.0),

                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 10,
                                                                horizontal:
                                                                16.0),
                                                            child: Text(
                                                              '"'+" ${
                                                                  catergoryMainNews
                                                                      .meta_description!
                                                              }"+' "',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                              maxLines: 5,
                                                            ),
                                                          ),
                                                          color: Colors.grey,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .end,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 5,
                                                                  horizontal:
                                                                  5.0),
                                                              child: Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Text(
                                                                  catergoryMainNews.external_url.toString()=="null"?"Reporter name":      catergoryMainNews.external_url.toString(),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                          15,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          color: Colors
                                                                              .grey
                                                                              .shade500))),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  htmlExpandablePanel(
                                                      html: catergoryMainNews
                                                          .short_content,
                                                      title: "title"),
                                                  htmlExpandablePanel(
                                                      html: catergoryMainNews
                                                          .content,
                                                      title: "title"),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SliverToBoxAdapter(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            5.0,
                                            5.0,
                                            16.0,
                                            0.0,
                                          ),
                                          child: ConstrainedBox(
                                            constraints: new BoxConstraints(
                                              minHeight: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                                  8,
                                              maxHeight: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                                  6,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10,
                                                      horizontal: 0.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .center,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    children: [
                                                      Container(
                                                        height: SizeConfig
                                                            .screenWidth! /
                                                            15,
                                                        width: SizeConfig
                                                            .screenWidth! /
                                                            15,
                                                        decoration: BoxDecoration(
                                                            shape:
                                                            BoxShape.circle,
                                                            color: AppColor
                                                                .appNameThemeColor),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            horizontal:
                                                            10.0),
                                                        child: Text(
                                                            "Featured News",
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                      ),
                                                      Expanded(
                                                        child: Center(
                                                          child: Container(
                                                            height: 3,
                                                            color: Colors
                                                                .grey[200],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                // Container(
                                                //
                                                //   height: SizeConfig.screenHeight,
                                                //
                                                //   child: ListView.builder(
                                                //     physics: NeverScrollableScrollPhysics(),
                                                //     itemCount: _newsArticles.length,
                                                //     itemBuilder: _buildItemsForListView,
                                                //   ),
                                                // )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
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
                    }),
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
        ),
      ),
    );
  }
}

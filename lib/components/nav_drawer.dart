import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_portal_app/app_state/appstate.dart';
import 'package:news_portal_app/module/category/model/category_modal.dart';
import 'package:news_portal_app/module/category/repostitary/catergory_repositary.dart';
import 'package:news_portal_app/module/category/view/category_screen.dart';
import 'package:news_portal_app/module/home_screen/model/nav_bar_model/navigation_categories.dart';
import 'package:news_portal_app/module/home_screen/repositary/navigation_repositary.dart';
import 'package:news_portal_app/module/home_screen/view/Widget/important_news.dart';
import 'package:news_portal_app/res/size_config.dart';
import 'package:news_portal_app/shared/widget/circular_loading.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';





// final productByCategoryProvide = FutureProvider.autoDispose<Categorymodal>((ref) {
//   return ref.watch(categoryScreenProvider).getHomePagess();
// });
class NavDrawer extends StatelessWidget {
  DateTime dateToday = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day) ;
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('yyyy.MMMM.dd');
  final String formatted = formatter.format(now);
  var newDt = DateFormat.yMMMEd().format(now);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double height=SizeConfig.screenHeight!;
    double width=SizeConfig.screenWidth!;
    return ProviderListener(
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
      provider: homeProvider,
      child: Consumer(builder: (context, watch, child) {

        return watch(productByCategoryProviders).when(
            data: (data) {
              final catergoryMainNews=data;
              if (data==null) {
                return const Center(
                  child: Text('No Data Found'),
                );
              }
              return Drawer(

                child: SingleChildScrollView(

                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                      colors: [Colors.blue.shade100, Colors.white70],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                      ),
                    ),
                    child: Column(

                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(alignment: Alignment.centerLeft,

                                              decoration: BoxDecoration(
                                                //   shape: BoxShape.circle,
                                                  boxShadow: [
                                                    // BoxShadow(
                                                    //   color: Colors.white.withOpacity(0.6),
                                                    //   spreadRadius: 1,
                                                    //   blurRadius: 2,
                                                    //   offset: Offset(0, 0), // changes position of shadow
                                                    // ),

                                                  ],
                                                  border: Border.all(
                                                      color: Colors.transparent,
                                                      width: 2
                                                  )


                                              ),
                                              height: SizeConfig.screenWidth!/4,
                                              width: SizeConfig.screenWidth!/2,



                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Image.asset("assets/applogo.png"),
                                              )),
                                          Divider(),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                            child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Icon(Icons.cancel,color: Colors.purple,)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(formatted.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("https://www.purnapaath.com/",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 5,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: SizeConfig.screenHeight,
                          width:SizeConfig.screenWidth ,
                          child: ListView.builder(

                            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            //     crossAxisCount: 2,
                            //     crossAxisSpacing: 10,
                            //     mainAxisSpacing: 10,
                            //     childAspectRatio: 0.7),
                            scrollDirection: Axis.vertical,
                            physics: ClampingScrollPhysics(),
                            itemCount: catergoryMainNews.length,
                            itemBuilder: (BuildContext context, int index) {
                              return  Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
                                child: Text(catergoryMainNews[index].nepali_title!,style: TextStyle(color: Colors.purple,fontSize:width/20 ),),
                              );
                            },
                          ),
                        ),
                        //  Positioned(
                        // bottom: 5,
                        //    child: WaveWidget( //user Stack() widget to overlap content and waves
                        //      config: CustomConfig(
                        //        colors: [
                        //          Colors.grey.shade100,
                        //
                        //
                        //
                        //          Colors.purple.shade200,
                        //          Colors.grey.shade100,
                        //          //the more colors here, the more wave will be
                        //        ],
                        //        durations: [4000, 5000, 7000],
                        //        //durations of animations for each colors,
                        //        // make numbers equal to numbers of colors
                        //        heightPercentages: [0.01, 0.05, 0.03],
                        //        //height percentage for each colors.
                        //        blur: MaskFilter.blur(BlurStyle.solid, 5),
                        //        //blur intensity for waves
                        //      ),
                        //      waveAmplitude: 35.00, //depth of curves
                        //      waveFrequency: 3, //number of curves in waves
                        //      backgroundColor: Colors.transparent, //background colors
                        //      size: Size(
                        //       300,
                        //        100,
                        //      ),
                        //    ),
                        //  ),
                      ],
                    ),
                  ),
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (e, s) {
              return Center(
                child: ErrorPage(),
              );
            });
      })

    );
    // return Drawer(
    //
    //   child: Container(
    //    // color: Colors.blue.shade300,
    //     color: Colors.grey.shade100,
    //     child: Stack(
    //
    //       children: [
    //         ListView(
    //           padding: EdgeInsets.zero,
    //           children: <Widget>[
    //             // DrawerHeader(
    //             //   child: Text(
    //             //     '',
    //             //     style: TextStyle(color: Colors.black87, fontSize: 25),
    //             //   ),
    //             //   margin: EdgeInsets.all(15),
    //             //   decoration: BoxDecoration(
    //             //       color: Colors.transparent,
    //             //       image: DecorationImage(
    //             //
    //             //           image: AssetImage("assets/applogo.png"))),
    //             // ),
    //             Container(
    //               color: Colors.transparent,
    //               child: Column(
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(vertical: 5.0),
    //                     child: Column(
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //                           child: Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                             children: [
    //                               Container(alignment: Alignment.centerLeft,
    //
    //                                   decoration: BoxDecoration(
    //                                    //   shape: BoxShape.circle,
    //                                       boxShadow: [
    //                                         // BoxShadow(
    //                                         //   color: Colors.white.withOpacity(0.6),
    //                                         //   spreadRadius: 1,
    //                                         //   blurRadius: 2,
    //                                         //   offset: Offset(0, 0), // changes position of shadow
    //                                         // ),
    //
    //                                       ],
    //                                       border: Border.all(
    //                                           color: Colors.grey.shade100,
    //                                           width: 2
    //                                       )
    //
    //
    //                                   ),
    //                                   height: SizeConfig.screenWidth!/4,
    //                                   width: SizeConfig.screenWidth!/2,
    //
    //
    //
    //                                   child: Padding(
    //                                     padding: const EdgeInsets.all(8.0),
    //                                     child: Image.asset("assets/applogo.png"),
    //                                   )),
    //                               Divider(),
    //                               InkWell(
    //                                 onTap: (){
    //                                   Navigator.pop(context);
    //                                 },
    //                                 child: Align(
    //                                     alignment: Alignment.centerLeft,
    //                                     child: Icon(Icons.cancel,color: Colors.purple,)),
    //                               )
    //                             ],
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(2.0),
    //                     child: Row(
    //
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Text(newDt.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
    //                       ],
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(2.0),
    //                     child: Row(
    //
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Text("https://www.purnapaath.com/",style: TextStyle(fontWeight: FontWeight.bold),),
    //                       ],
    //                     ),
    //                   ),
    //                   Divider(
    //                     color: Colors.white,
    //                     thickness: 5,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //
    //             Container(
    //               // /color: Colors.grey.shade100,
    //
    //               child: Align(alignment: Alignment.centerLeft,
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(vertical: 8.0),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.start,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //
    //
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
    //                         child: InkWell(
    //                             onTap: () => {
    //                               Navigator.push(context, MaterialPageRoute(builder: (context){
    //                                 return WebViewPage(
    //
    //                                   url: "https://purnapaath.com/category/adaalat",
    //                                 );
    //                               }))
    //                             },
    //                             child: Text('अदालत',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500))),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //                         child: Divider(
    //                           color: Colors.black12,
    //                           thickness: 1,
    //                           height: 2,
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
    //                         child: InkWell(
    //                             onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context){
    //                               return WebViewPage(
    //
    //                                 url: "https://purnapaath.com/category/politics",
    //                               );
    //                             }))},
    //                             child: Text('राजनीति',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500))),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //
    //                         child: Divider(
    //                           color: Colors.black12,
    //                           thickness: 1,
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
    //                         child: InkWell(
    //                             onTap: () => {
    //                               Navigator.push(context, MaterialPageRoute(builder: (context){
    //                                 return WebViewPage(
    //
    //                                   url: "https://purnapaath.com/category/province-1",
    //                                 );
    //                               }))
    //                             },
    //                             child: Text('प्रदेश',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500))),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //
    //                         child: Divider(
    //                           color: Colors.black12,
    //                           thickness: 1,
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
    //                         child: InkWell(
    //                             onTap: () => {
    //                               Navigator.push(context, MaterialPageRoute(builder: (context){
    //                                 return WebViewPage(
    //                                   url: "https://purnapaath.com/category/economy",
    //
    //                                 );
    //                               }))
    //                             },
    //                             child: Text('अर्थतन्त्र',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500))),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //
    //                         child: Divider(
    //                           color: Colors.black12,
    //                           thickness: 1,
    //                         ),
    //                       ),
    //
    //
    //
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
    //                         child: InkWell(
    //                             onTap: () => {    Navigator.push(context, MaterialPageRoute(builder: (context){
    //                               return WebViewPage(
    //
    //                                 url: "https://purnapaath.com/category/sport",
    //                               );
    //                             }))},
    //                             child: Text('खेलकुद',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500))),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //
    //                         child: Divider(
    //                           color: Colors.black12,
    //                           thickness: 1,
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
    //                         child: InkWell(
    //                             onTap: () => {    Navigator.push(context, MaterialPageRoute(builder: (context){
    //                               return WebViewPage(
    //
    //                                 url: "https://purnapaath.com/category/horoscope",
    //                               );
    //                             }))},
    //                             child: Text('राशिफल',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500),)),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //
    //                         child: Divider(
    //                           color: Colors.black12,
    //                           thickness: 1,
    //                         ),
    //                       ),
    //                       Padding(
    //                           padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 0),
    //                           child: InkWell(
    //                             onTap: () => {
    //                               Navigator.push(context, MaterialPageRoute(builder: (context){
    //                                 return WebViewPage(
    //                                   url: "https://purnapaath.com/category/economy",
    //
    //                                 );
    //                               }))
    //                             },
    //                             child:Theme(
    //                               data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
    //                               child: ExpansionTile(
    //                                 collapsedIconColor: Colors.purple,
    //
    //                                 childrenPadding:EdgeInsets.symmetric(horizontal: 0.0,vertical: 0) ,
    //                                 expandedAlignment: Alignment.centerLeft,
    //                                 title: Text(
    //                                   "प्रदेश"
    //                                     ,style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500),
    //                                 ),
    //                                 children: <Widget>[
    //
    //                                   Padding(
    //                                     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
    //                                     child: Text(
    //                                       "प्रदेश १"
    //                                     ,style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),)),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             )
    //
    //           ],
    //         ),
    //        //  Positioned(
    //        // bottom: 5,
    //        //    child: WaveWidget( //user Stack() widget to overlap content and waves
    //        //      config: CustomConfig(
    //        //        colors: [
    //        //          Colors.grey.shade100,
    //        //
    //        //
    //        //
    //        //          Colors.purple.shade200,
    //        //          Colors.grey.shade100,
    //        //          //the more colors here, the more wave will be
    //        //        ],
    //        //        durations: [4000, 5000, 7000],
    //        //        //durations of animations for each colors,
    //        //        // make numbers equal to numbers of colors
    //        //        heightPercentages: [0.01, 0.05, 0.03],
    //        //        //height percentage for each colors.
    //        //        blur: MaskFilter.blur(BlurStyle.solid, 5),
    //        //        //blur intensity for waves
    //        //      ),
    //        //      waveAmplitude: 35.00, //depth of curves
    //        //      waveFrequency: 3, //number of curves in waves
    //        //      backgroundColor: Colors.transparent, //background colors
    //        //      size: Size(
    //        //       300,
    //        //        100,
    //        //      ),
    //        //    ),
    //        //  ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
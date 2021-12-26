import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:news_portal_app/components/HtmlView.dart';
import 'package:news_portal_app/components/network_image.dart';
import 'package:news_portal_app/module/home_page/dummy_data/video.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_page_data.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:news_portal_app/res/size_config.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../main.dart';
import '../news_screen.dart';
import 'package:html/parser.dart' show parse, parses;




class Pagess {
  var name;

 String method(String date) {
    NepaliDateTime gorkhaEarthQuake = NepaliDateTime.parse(date);
    var date5 = NepaliDateFormat("EEE.MMMM.dd.yyyy GG ,a  hh:mm  ",Language.nepali);
    ;
    return date5.format(gorkhaEarthQuake);
  }
  String methods(String date) {
    NepaliDateTime gorkhaEarthQuake = NepaliDateTime.parse(date);
    var date5 = NepaliDateFormat("GG yyyy.MMMM.dd \nEEE a  hh:mm  ",Language.nepali);
    ;
    return date5.format(gorkhaEarthQuake);
  }
  String methodss(String date) {
    NepaliDateTime gorkhaEarthQuake = NepaliDateTime.parse(date);
    var date5 = NepaliDateFormat("yyyy.MMMM.dd ",Language.nepali);
    ;
    return date5.format(gorkhaEarthQuake);
  }
  String nepaliTime(String time){
    NepaliDateTime gorkhaEarthQuake = NepaliDateTime.parse(time);
    var date5 = NepaliDateFormat("hh:mm a ",Language.nepali);
    ;
    return date5.format(gorkhaEarthQuake);
}
}
Widget buildItemsForImportantNews(BuildContext context, int index,HomePageData homeModel) {
  NepaliDateTime gorkhaEarthQuake = NepaliDateTime.parse(homeModel.categoryMainNews!.cateogoryNewsItem![index].publish_time.toString());
  var date5 = NepaliDateFormat("EEE.MMMM.dd.yyyy GG ",Language.nepali);
  date5.format(gorkhaEarthQuake);
  if(index<3) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categoryMainNews!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
            child: Text(
                homeModel.categoryMainNews!.cateogoryNewsItem![index].title
                    .toString(),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    Pagess().method(homeModel.categoryMainNews!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey))
            ),
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerRight,child:
          //       Container(
          //           decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(
          //                   color: Colors.blueGrey
          //               )
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(2.0),
          //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
          //           ))
          //       ),
          //     ),
          //   ],
          // ),

       Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5, horizontal: 0.0),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      ConstrainedBox(

                        constraints: new BoxConstraints(
                          minHeight: MediaQuery
                              .of(context)
                              .size
                              .height / 6,
                          maxHeight: MediaQuery
                              .of(context)
                              .size
                              .height / 2,),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.shade200,
                                    width: 1

                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 0), // changes position of shadow
                                  ),

                                ],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: SizeConfig.screenWidth! / 2.1,
                            width: SizeConfig.screenWidth,
                            child: Container(
                              color: Colors.white,
                              child: NetworkImageHelperforCardWithoutRadiust(
                                imagelink: homeModel.categoryMainNews!
                                    .cateogoryNewsItem![index].parallex_img
                                    .toString(),),
                              // child: Padding(
                              //   padding: const EdgeInsets.all(4.0),
                              //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                              // ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Container(
                          color: Colors.red,
                          width: 100,
                          alignment: Alignment.bottomLeft,
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              homeModel.categoryMainNews!.nepali_title!,
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w600),),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                homeModel.categoryMainNews!
                    .cateogoryNewsItem![index].short_content==null? SizedBox.shrink():  Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5, horizontal: 16.0),
                child: Text( homeModel.categoryMainNews!
                          .cateogoryNewsItem![index].short_content.toString(),),

                  // child: ConstrainedBox(
                  //
                  //   constraints: new BoxConstraints(
                  //     minHeight: MediaQuery
                  //         .of(context)
                  //         .size
                  //         .height / 12,
                  //     maxHeight: MediaQuery
                  //         .of(context)
                  //         .size
                  //         .height / 11,),
                  //   child: HtmlView(
                  //     html: homeModel.categoryMainNews!
                  //         .cateogoryNewsItem![index].short_content.toString(),
                  //     title: "Seller Policy",
                  //
                  //   ),
                  // ),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0.0),
            child: Divider(
              thickness: 1,

            ),
          ),
        ],
      ),
    ),
  );
}
else if(index<8) {
  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/2.9,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryMainNews!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(

                children: [

                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(homeModel.categoryMainNews!.cateogoryNewsItem![index].title.toString(),
                          overflow: TextOverflow.ellipsis,

                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      homeModel.categoryMainNews!
                          .cateogoryNewsItem![index].short_content==null? SizedBox.shrink(): Expanded(
                        flex: 2,
                        // child: ConstrainedBox(
                        //
                        //   constraints: new BoxConstraints(
                        //     minHeight:MediaQuery.of(context).size.height/6,
                        //     maxHeight:  MediaQuery.of(context).size.height/4,),
                        //   child: HtmlView(
                        //     html: homeModel.categoryMainNews!.cateogoryNewsItem![index].short_content.toString(),
                        //     title: "Seller Policy",
                        //   ),
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16,right: 5),
                          child: Text(homeModel.categoryMainNews!.cateogoryNewsItem![index].short_content.toString(),maxLines: 8,),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                          child: Container(
                             height: MediaQuery.of(context).size.height/4,
                              child: NetworkImageHelperforCardWithoutRadiust(imagelink:homeModel.categoryMainNews!.cateogoryNewsItem![index].parallex_img.toString() ,)),
                        ),
                      ),

                    ],
                  ),




                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),                    child: Divider(
                    thickness: 1,

                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}else{
  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/2.9,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryMainNews!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(

                children: [

                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(homeModel.categoryMainNews!.cateogoryNewsItem![index].title.toString(),
                          overflow: TextOverflow.ellipsis,

                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/4,),
                          child: HtmlView(
                            html: homeModel.categoryMainNews!.cateogoryNewsItem![index].short_content.toString(),
                            title: "Seller Policy",
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/4,),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade200,
                                      width: 1

                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),

                                  ],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height: SizeConfig.screenWidth,
                              width:  SizeConfig.screenWidth,
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    NetworkImageHelperforCard(imagelink:homeModel.categoryMainNews!.cateogoryNewsItem![index].parallex_img.toString() ,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                                      child: Align(
                                          alignment:Alignment.centerLeft,child: Text(homeModel.categoryAgriculture!.cateogoryNewsItem![index].publish_time.toString(), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                                    ),
                                  ],
                                ),
                                // child: Padding(
                                //   padding: const EdgeInsets.all(4.0),
                                //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),




                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),                    child: Divider(
                    thickness: 1,

                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForNotification(BuildContext context, int index,HomePageData homeModel) {
  NepaliDateTime gorkhaEarthQuake = NepaliDateTime.parse(homeModel.categoryMainNews!.cateogoryNewsItem![index].publish_time.toString());
  var date5 = NepaliDateFormat("EEE.MMMM.dd.yyyy GG ",Language.nepali);
  date5.format(gorkhaEarthQuake);
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categoryMainNews!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // decoration: BoxDecoration(
                //   border: Border.all(
                //       color: Colors.white,
                //       width: 1
                //
                //   ),
                //   color: Colors.red,
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.grey.shade400,
                //       spreadRadius: 1,
                //       blurRadius: 1,
                //       offset: Offset(
                //           0, 3), // changes position of shadow
                //     ),
                //
                //   ],
                //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                // ),
                height: SizeConfig.screenWidth! / 10,
                width: SizeConfig.screenWidth!/10,
                child: NetworkImageHelperforCircleImage(
                  imagelink: homeModel.categoryMainNews!
                      .cateogoryNewsItem![index].parallex_img
                      .toString(),),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,

                        child: Text(
                            homeModel.categoryMainNews!.cateogoryNewsItem![index].title
                                .toString(),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("-"+NepaliMoment.fromAD(DateTime.parse( homeModel.categoryMainNews!.cateogoryNewsItem![index].publish_time
                            .toString()),
                            referenceDate: DateTime.now())),
                      ),
                    )
                  ],
                ),
              ),




            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),

          child: Divider(
            color: Colors.grey[200],height: 2,thickness: 1,
          ),
        )
      ],
    ),
  );

  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}

Widget buildItemsForVideos(BuildContext context, int index,HomePageData homeModel,List<dynamic> video) {

  return InkWell(
    onTap: () {
      var document = parse(
          homeModel.vdeoContainer![index]
              .video.toString());

      print(document.documentElement?.text);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MyHomePage(
          id: document.documentElement?.text,
          video: video,
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16.0),
            child: Text(
                homeModel.vdeoContainer![index].title
                    .toString(),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(Pagess().method( homeModel.vdeoContainer![index]
                    .publish_time.toString())
                   , style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey))),
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerRight,child:
          //       Container(
          //           decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(
          //                   color: Colors.blueGrey
          //               )
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(2.0),
          //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
          //           ))
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
            child: ConstrainedBox(

              constraints: new BoxConstraints(
                minHeight: MediaQuery
                    .of(context)
                    .size
                    .height / 6,
                maxHeight: MediaQuery
                    .of(context)
                    .size
                    .height / 2,),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 0, horizontal: 0.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1

                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(
                              0, 0), // changes position of shadow
                        ),

                      ],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: SizeConfig.screenWidth! / 2.1,
                  width: SizeConfig.screenWidth,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          color: Colors.white,
                          child: NetworkImageHelperforCardWithoutRadiust(
                            imagelink: homeModel.vdeoContainer![index].parallex_img.toString(),),
                          // child: Padding(
                          //   padding: const EdgeInsets.all(4.0),
                          //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                          // ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 1,
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration( color: Colors.red,
                              borderRadius: BorderRadius.circular(8)
                          ),


                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.play_circle_filled_outlined,
                              color:Colors.white ,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    homeModel.vdeoContainer![index]
                        .short_content.toString(), style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey))),
          ),
          Divider(
            color: Colors.grey,
          )
        ]
  )
  ));
  // if(index<3) {
  //
  // }
  // else if(index<8) {
  //   return ConstrainedBox(
  //
  //     constraints: new BoxConstraints(
  //       minHeight:MediaQuery.of(context).size.height/5,
  //       maxHeight:  MediaQuery.of(context).size.height/2.9,
  //     ),
  //     child: InkWell(
  //       onTap: (){
  //         // Navigator.push(context, MaterialPageRoute(builder: (context){
  //         //   return NewsDetails(
  //         //     title: _newsArticles[index].title,
  //         //     url: _newsArticles[index].urlToImage,
  //         //   );
  //         // }));
  //       },
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Expanded(
  //               child: Column(
  //
  //                 children: [
  //
  //                   // Row(
  //                   //   children: [
  //                   //     Padding(
  //                   //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
  //                   //       child: Align(
  //                   //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
  //                   //     ),
  //                   //     Padding(
  //                   //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
  //                   //       child: Align(
  //                   //           alignment:Alignment.centerRight,child:
  //                   //       Container(
  //                   //           decoration: BoxDecoration(
  //                   //               shape: BoxShape.circle,
  //                   //               border: Border.all(
  //                   //                   color: Colors.blueGrey
  //                   //               )
  //                   //           ),
  //                   //           child: Padding(
  //                   //             padding: const EdgeInsets.all(2.0),
  //                   //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
  //                   //           ))
  //                   //       ),
  //                   //     ),
  //                   //   ],
  //                   // ),
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
  //                     child: Align(
  //                       alignment: Alignment.centerLeft,
  //                       child: Text(homeModel.categoryMainNews!.cateogoryNewsItem![index].title.toString(),
  //                           overflow: TextOverflow.ellipsis,
  //
  //                           style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
  //                     ),
  //                   ),
  //                   Row(
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     children: [
  //                       Expanded(
  //                         flex: 1,
  //                         child: ConstrainedBox(
  //
  //                           constraints: new BoxConstraints(
  //                             minHeight:MediaQuery.of(context).size.height/6,
  //                             maxHeight:  MediaQuery.of(context).size.height/4,),
  //                           child: HtmlView(
  //                             html: homeModel.categoryMainNews!.cateogoryNewsItem![index].short_content.toString(),
  //                             title: "Seller Policy",
  //                           ),
  //                         ),
  //                       ),
  //                       Expanded(
  //                         flex: 2,
  //                         child: ConstrainedBox(
  //
  //                           constraints: new BoxConstraints(
  //                             minHeight:MediaQuery.of(context).size.height/6,
  //                             maxHeight:  MediaQuery.of(context).size.height/4,),
  //                           child: Padding(
  //                             padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
  //                             child: Container(
  //                               decoration: BoxDecoration(
  //                                   border: Border.all(
  //                                       color: Colors.grey.shade200,
  //                                       width: 1
  //
  //                                   ),
  //                                   boxShadow: [
  //                                     BoxShadow(
  //                                       color: Colors.grey.shade300,
  //                                       spreadRadius: 1,
  //                                       blurRadius: 3,
  //                                       offset: Offset(0, 0), // changes position of shadow
  //                                     ),
  //
  //                                   ],
  //                                   borderRadius: BorderRadius.circular(10)
  //                               ),
  //                               height: SizeConfig.screenWidth,
  //                               width:  SizeConfig.screenWidth,
  //                               child: Container(
  //                                 color: Colors.white,
  //                                 child: Column(
  //                                   crossAxisAlignment: CrossAxisAlignment.start,
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   children: [
  //                                     NetworkImageHelperforCard(imagelink:homeModel.categoryMainNews!.cateogoryNewsItem![index].parallex_img.toString() ,),
  //                                     Padding(
  //                                       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
  //                                       child: Align(
  //                                           alignment:Alignment.centerLeft,child: Text(homeModel.categoryAgriculture!.cateogoryNewsItem![index].publish_time.toString(), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
  //                                     ),
  //                                   ],
  //                                 ),
  //                                 // child: Padding(
  //                                 //   padding: const EdgeInsets.all(4.0),
  //                                 //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //                                 // ),
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //
  //                     ],
  //                   ),
  //
  //
  //
  //
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),                    child: Divider(
  //                     thickness: 1,
  //
  //                   ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }else{
  //   return ConstrainedBox(
  //
  //     constraints: new BoxConstraints(
  //       minHeight:MediaQuery.of(context).size.height/5,
  //       maxHeight:  MediaQuery.of(context).size.height/2.9,
  //     ),
  //     child: InkWell(
  //       onTap: (){
  //         // Navigator.push(context, MaterialPageRoute(builder: (context){
  //         //   return NewsDetails(
  //         //     title: _newsArticles[index].title,
  //         //     url: _newsArticles[index].urlToImage,
  //         //   );
  //         // }));
  //       },
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Expanded(
  //               child: Column(
  //
  //                 children: [
  //
  //                   // Row(
  //                   //   children: [
  //                   //     Padding(
  //                   //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
  //                   //       child: Align(
  //                   //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
  //                   //     ),
  //                   //     Padding(
  //                   //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
  //                   //       child: Align(
  //                   //           alignment:Alignment.centerRight,child:
  //                   //       Container(
  //                   //           decoration: BoxDecoration(
  //                   //               shape: BoxShape.circle,
  //                   //               border: Border.all(
  //                   //                   color: Colors.blueGrey
  //                   //               )
  //                   //           ),
  //                   //           child: Padding(
  //                   //             padding: const EdgeInsets.all(2.0),
  //                   //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
  //                   //           ))
  //                   //       ),
  //                   //     ),
  //                   //   ],
  //                   // ),
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
  //                     child: Align(
  //                       alignment: Alignment.centerLeft,
  //                       child: Text(homeModel.categoryMainNews!.cateogoryNewsItem![index].title.toString(),
  //                           overflow: TextOverflow.ellipsis,
  //
  //                           style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
  //                     ),
  //                   ),
  //                   Row(
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     children: [
  //                       Expanded(
  //                         flex: 1,
  //                         child: ConstrainedBox(
  //
  //                           constraints: new BoxConstraints(
  //                             minHeight:MediaQuery.of(context).size.height/6,
  //                             maxHeight:  MediaQuery.of(context).size.height/4,),
  //                           child: HtmlView(
  //                             html: homeModel.categoryMainNews!.cateogoryNewsItem![index].short_content.toString(),
  //                             title: "Seller Policy",
  //                           ),
  //                         ),
  //                       ),
  //                       Expanded(
  //                         flex: 2,
  //                         child: ConstrainedBox(
  //
  //                           constraints: new BoxConstraints(
  //                             minHeight:MediaQuery.of(context).size.height/6,
  //                             maxHeight:  MediaQuery.of(context).size.height/4,),
  //                           child: Padding(
  //                             padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
  //                             child: Container(
  //                               decoration: BoxDecoration(
  //                                   border: Border.all(
  //                                       color: Colors.grey.shade200,
  //                                       width: 1
  //
  //                                   ),
  //                                   boxShadow: [
  //                                     BoxShadow(
  //                                       color: Colors.grey.shade300,
  //                                       spreadRadius: 1,
  //                                       blurRadius: 3,
  //                                       offset: Offset(0, 0), // changes position of shadow
  //                                     ),
  //
  //                                   ],
  //                                   borderRadius: BorderRadius.circular(10)
  //                               ),
  //                               height: SizeConfig.screenWidth,
  //                               width:  SizeConfig.screenWidth,
  //                               child: Container(
  //                                 color: Colors.white,
  //                                 child: Column(
  //                                   crossAxisAlignment: CrossAxisAlignment.start,
  //                                   mainAxisAlignment: MainAxisAlignment.start,
  //                                   children: [
  //                                     NetworkImageHelperforCard(imagelink:homeModel.categoryMainNews!.cateogoryNewsItem![index].parallex_img.toString() ,),
  //                                     Padding(
  //                                       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
  //                                       child: Align(
  //                                           alignment:Alignment.centerLeft,child: Text(homeModel.categoryAgriculture!.cateogoryNewsItem![index].publish_time.toString(), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
  //                                     ),
  //                                   ],
  //                                 ),
  //                                 // child: Padding(
  //                                 //   padding: const EdgeInsets.all(4.0),
  //                                 //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //                                 // ),
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //
  //                     ],
  //                   ),
  //
  //
  //
  //
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),                    child: Divider(
  //                     thickness: 1,
  //
  //                   ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryPhotoFeature(BuildContext context, int index,HomePageData homeModel) {

  return Container(
    height: SizeConfig.screenWidth,
    width:SizeConfig.screenWidth ,
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryPhotoFeature!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1

                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(3, 3), // changes position of shadow
                      ),

                    ],
                    borderRadius: BorderRadius.circular(10)
                ),
                height: SizeConfig.screenWidth!/1.5,
                width:  SizeConfig.screenWidth,
                child: NetworkImageHelperforCard(imagelink:homeModel.categoryPhotoFeature!.cateogoryNewsItem![index].parallex_img.toString() ,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
              child: Align(
                  alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryPhotoFeature!.cateogoryNewsItem![index].publish_time.toString()), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
              child: Align(alignment:Alignment.centerLeft,
                child: Text(homeModel.categoryPhotoFeature!.cateogoryNewsItem![index].title.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
              ),
            ),

          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryShare(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/3,
      maxHeight:  MediaQuery.of(context).size.height/1.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryShare!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1

                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                       // color: Colors.grey[350]!,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 0), // changes position of shadow
                      ),

                    ],
                    borderRadius: BorderRadius.circular(1)
                ),
                height: SizeConfig.screenWidth!/4,
                width:  SizeConfig.screenWidth,
                child: NetworkImageHelperforCardWithoutRadius(imagelink:homeModel.categoryShare!.cateogoryNewsItem![index].parallex_img.toString() ,),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10.0),
              child: Text(homeModel.categoryShare!.cateogoryNewsItem![index].title.toString(),maxLines: 2,),
            ),
          ),
        ],
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategorySport(BuildContext context, int index,HomePageData homeModel) {

  return index <1 ?InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categorySport!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
            child: Align(
                alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categorySport!.cateogoryNewsItem![index].publish_time.toString()), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerRight,child:
          //       Container(
          //           decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(
          //                   color: Colors.blueGrey
          //               )
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(2.0),
          //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
          //           ))
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey.shade200,
                      width: 1

                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 0), // changes position of shadow
                    ),

                  ],
                  borderRadius: BorderRadius.circular(10)
              ),
              height: SizeConfig.screenWidth,
              width:  SizeConfig.screenWidth,
              child: Stack(

                children: [

                  Container( height: SizeConfig.screenWidth,
                      width:  SizeConfig.screenWidth,child: NetworkImageHelperfor(imagelink:homeModel.categorySport!.cateogoryNewsItem![index].parallex_img.toString() ,)),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                      child: Text(homeModel.categorySport!.cateogoryNewsItem![index].title.toString(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54)),
                    ),
                  ),
                ],
              ),
            ),
          ),




          Divider(
            thickness: 2,

          ),
        ],
      ),
    ),
  ):InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categorySport!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
            child: Align(
                alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categorySport!.cateogoryNewsItem![index].publish_time.toString()), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
          //       child: Align(
          //           alignment:Alignment.centerRight,child:
          //       Container(
          //           decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               border: Border.all(
          //                   color: Colors.blueGrey
          //               )
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(2.0),
          //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
          //           ))
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
            child: homeModel.categorySport!.cateogoryNewsItem![index].short_content==null ?
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ConstrainedBox(

                    constraints: new BoxConstraints(
                      minHeight:MediaQuery.of(context).size.height/6,
                      maxHeight:  MediaQuery.of(context).size.height/5,),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade200,
                                width: 1

                            ),
                            color: Colors.white,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3), // changes position of shadow
                              ),

                            ],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: SizeConfig.screenWidth!/4,
                        width:  SizeConfig.screenWidth,
                        child: NetworkImageHelperforCard(imagelink:homeModel.categorySport!.cateogoryNewsItem![index].parallex_img.toString() ,),
                      ),
                    ),
                  ),
                ),

              ],
            ): Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ConstrainedBox(

                    constraints: new BoxConstraints(
                      minHeight:MediaQuery.of(context).size.height/6,
                      maxHeight:  MediaQuery.of(context).size.height/5,),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade200,
                                width: 1

                            ),
                            color: Colors.white,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3), // changes position of shadow
                              ),

                            ],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: SizeConfig.screenWidth!/4,
                        width:  SizeConfig.screenWidth,
                        child: NetworkImageHelperforCard(imagelink:homeModel.categorySport!.cateogoryNewsItem![index].parallex_img.toString() ,),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        homeModel.categorySport!.cateogoryNewsItem![index].short_content.toString(),

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),



          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(homeModel.categorySport!.cateogoryNewsItem![index].title.toString(),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87)),
            ),
          ),
          Divider(
            thickness: 2,

          ),
        ],
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategorySudurpaschim(BuildContext context, int index,HomePageData homeModel) {

  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categorySudurpaschim!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                child: Align(
                    alignment:Alignment.centerLeft,child: Text(Pagess().method( homeModel.categorySudurpaschim!.cateogoryNewsItem![index].publish_time.toString())
                   , style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
              //       child: Align(
              //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
              //       child: Align(
              //           alignment:Alignment.centerRight,child:
              //       Container(
              //           decoration: BoxDecoration(
              //               shape: BoxShape.circle,
              //               border: Border.all(
              //                   color: Colors.blueGrey
              //               )
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(2.0),
              //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
              //           ))
              //       ),
              //     ),
              //   ],
              // ),
              homeModel.categorySudurpaschim!.cateogoryNewsItem![index].short_content == null?
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: ConstrainedBox(

                      constraints: new BoxConstraints(
                        minHeight:MediaQuery.of(context).size.height/6,
                        maxHeight:  MediaQuery.of(context).size.height/5,),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1

                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),

                              ],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: SizeConfig.screenWidth!/4,
                          width:  SizeConfig.screenWidth,
                          child: Container(

                            child: NetworkImageHelperforCard(imagelink:homeModel.categorySudurpaschim!.cateogoryNewsItem![index].parallex_img.toString() ,),
                            // child: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ): Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: ConstrainedBox(

                      constraints: new BoxConstraints(
                        minHeight:MediaQuery.of(context).size.height/6,
                        maxHeight:  MediaQuery.of(context).size.height/5,),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1

                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),

                              ],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: SizeConfig.screenWidth!/4,
                          width:  SizeConfig.screenWidth,
                          child: Container(
                            color: Colors.white,
                            child: NetworkImageHelperforCard(imagelink:homeModel.categorySudurpaschim!.cateogoryNewsItem![index].parallex_img.toString() ,),
                            // child: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    // child: ConstrainedBox(
                    //
                    //   constraints: new BoxConstraints(
                    //     minHeight:MediaQuery.of(context).size.height/6,
                    //     maxHeight:  MediaQuery.of(context).size.height/5,),
                    //   child: HtmlView(
                    //     html: homeModel.categorySudurpaschim!.cateogoryNewsItem![index].short_content.toString(),
                    //     title: "Seller Policy",
                    //   ),
                    // ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(homeModel.categorySudurpaschim!.cateogoryNewsItem![index].short_content.toString()),
                    ),
                  ),
                ],
              ),



              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(homeModel.categorySudurpaschim!.cateogoryNewsItem![index].title.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                ),
              ),
              Divider(
                thickness: 2,

              ),
            ],
          ),
        ],
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryThought(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryThought!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerRight,child:
            //       Container(
            //           decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               border: Border.all(
            //                   color: Colors.blueGrey
            //               )
            //           ),
            //           child: Padding(
            //             padding: const EdgeInsets.all(2.0),
            //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
            //           ))
            //       ),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
              child: Text(homeModel.categoryThought!.cateogoryNewsItem![index].title.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child:Text(homeModel.categoryThought!.cateogoryNewsItem![index].short_content.toString()),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
              child: Align(
                  alignment:Alignment.centerRight,child: Text(Pagess().method(homeModel.categoryThought!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            ),

            Divider(
              thickness: 2,

            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryTourism(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryTourism!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12.0),
                    child: Align(
                        alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryTourism!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey.shade200,
                              width: 1

                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 0), // changes position of shadow
                            ),

                          ],
                          borderRadius: BorderRadius.circular(0)
                      ),
                      height: SizeConfig.screenWidth!/1-70,
                      width:  SizeConfig.screenWidth,
                      child: NetworkImageHelperforCardWithoutRadiust(imagelink:homeModel.categoryTourism!.cateogoryNewsItem![index].parallex_img.toString() ,),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryLifestyle(BuildContext context, int index,HomePageData homeModel) {

  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categoryLifestyle!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                  child: Align(
                      alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryLifestyle!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                //       child: Align(
                //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                //       child: Align(
                //           alignment:Alignment.centerRight,child:
                //       Container(
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               border: Border.all(
                //                   color: Colors.blueGrey
                //               )
                //           ),
                //           child: Padding(
                //             padding: const EdgeInsets.all(2.0),
                //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                //           ))
                //       ),
                //     ),
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey.shade200,
                              width: 1

                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 0), // changes position of shadow
                            ),

                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: SizeConfig.screenWidth!-100,
                      width:  SizeConfig.screenWidth,
                      child: Stack(
                        children: [
                          NetworkImageHelperforCard(imagelink:homeModel.categoryLifestyle!.cateogoryNewsItem![index].parallex_img.toString() ,),
                          Container(
                            height: SizeConfig.screenWidth!/8,
                            width:  SizeConfig.screenWidth,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                                child: Text(homeModel.categoryLifestyle!.cateogoryNewsItem![index].title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.black)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),




                Divider(
                  thickness: 2,

                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryInternational(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryInternational!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                    child: Align(
                        alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryInternational!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/5,),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade200,
                                      width: 1

                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),

                                  ],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height: SizeConfig.screenWidth!/4,
                              width:  SizeConfig.screenWidth,
                              child: Container(
                                color: Colors.white,
                                child: NetworkImageHelperforCard(imagelink:homeModel.categoryInternational!.cateogoryNewsItem![index].parallex_img.toString() ,),
                                // child: Padding(
                                //   padding: const EdgeInsets.all(4.0),
                                //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/5,),
                          child: HtmlView(
                            html: homeModel.categoryInternational!.cateogoryNewsItem![index].short_content.toString(),
                            title: "Seller Policy",
                          ),
                        ),
                      ),
                    ],
                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                    child: Text(homeModel.categoryInternational!.cateogoryNewsItem![index].title.toString(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    thickness: 2,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsCategoryInformationTechnology(BuildContext context, int index,HomePageData homeModel) {

  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categoryInformationTechnology!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
            child: Row(
              children: [
                Text(NepaliUnicode.convert("${index+1}"), style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                    child: Text(homeModel.categoryInformationTechnology!.cateogoryNewsItem![index].title.toString(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryIndustry(BuildContext context, int index,HomePageData homeModel) {//sujan

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryIndustry!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(homeModel.categoryIndustry!.cateogoryNewsItem![index].title.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 16.0),
                    child: Align(
                        alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryIndustry!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),

                  homeModel.categoryIndustry!.cateogoryNewsItem![index].short_content!=null?
                      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ConstrainedBox(

                            constraints: new BoxConstraints(
                              minHeight:MediaQuery.of(context).size.height/6,
                              maxHeight:  MediaQuery.of(context).size.height/5,),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade200,
                                        width: 1

                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0, 0), // changes position of shadow
                                      ),

                                    ],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: SizeConfig.screenWidth!/4,
                                width:  SizeConfig.screenWidth,
                                child: Container(
                                  color: Colors.white,
                                  child: NetworkImageHelperforCard(imagelink:homeModel.categoryIndustry!.cateogoryNewsItem![index].parallex_img.toString() ,),
                                  // child: Padding(
                                  //   padding: const EdgeInsets.all(4.0),
                                  //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          // child: ConstrainedBox(
                          //
                          //   constraints: new BoxConstraints(
                          //     minHeight:MediaQuery.of(context).size.height/6,
                          //     maxHeight:  MediaQuery.of(context).size.height/5,),
                          //   child: HtmlView(
                          //     html: homeModel.categoryIndustry!.cateogoryNewsItem![index].short_content.toString(),
                          //     title: "Seller Policy",
                          //   ),
                          // ),
                          child:Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                            child: Text(homeModel.categoryIndustry!.cateogoryNewsItem![index].short_content.toString()),
                          )
                        ),
                      ],
                    ),
                  ): Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 0.0),
                    child: ConstrainedBox(

                      constraints: new BoxConstraints(
                        minHeight:MediaQuery.of(context).size.height/5,
                        maxHeight:  MediaQuery.of(context).size.height/2,),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1

                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),

                              ],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: SizeConfig.screenWidth!/4,
                          width:  SizeConfig.screenWidth,
                          child: NetworkImageHelperforCardWithoutRadiust(imagelink:homeModel.categoryIndustry!.cateogoryNewsItem![index].parallex_img.toString() ,),
                        ),
                      ),
                    ),
                  ),




                  Divider(
                    thickness: 1,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryInformationTechnology(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryInformationTechnology!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                    child: Align(
                        alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryInformationTechnology!.cateogoryNewsItem![index].publish_time.toString()), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/5,),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade200,
                                      width: 1

                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),

                                  ],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height: SizeConfig.screenWidth!/4,
                              width:  SizeConfig.screenWidth,
                              child: Container(
                                color: Colors.white,
                                child: NetworkImageHelperforCard(imagelink:homeModel.categoryInformationTechnology!.cateogoryNewsItem![index].parallex_img.toString() ,),
                                // child: Padding(
                                //   padding: const EdgeInsets.all(4.0),
                                //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/5,),
                          child: HtmlView(
                            html: homeModel.categoryInformationTechnology!.cateogoryNewsItem![index].short_content.toString(),
                            title: "Seller Policy",
                          ),
                        ),
                      ),
                    ],
                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                    child: Text(homeModel.categoryInformationTechnology!.cateogoryNewsItem![index].title.toString(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    thickness: 2,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryHealth(BuildContext context, int index,HomePageData homeModel) {

  return Container(

      height:  MediaQuery.of(context).size.height/3,
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryHealth!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
              child: Align(
                  alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryHealth!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerRight,child:
            //       Container(
            //           decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               border: Border.all(
            //                   color: Colors.blueGrey
            //               )
            //           ),
            //           child: Padding(
            //             padding: const EdgeInsets.all(2.0),
            //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
            //           ))
            //       ),
            //     ),
            //   ],
            // ),
            homeModel.categoryHealth!.cateogoryNewsItem![index].short_content==null?ConstrainedBox(

              constraints: new BoxConstraints(
                minHeight:MediaQuery.of(context).size.height/6,
                maxHeight:  MediaQuery.of(context).size.height/5,),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1

                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 0), // changes position of shadow
                        ),

                      ],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: SizeConfig.screenWidth!/4,
                  width:  SizeConfig.screenWidth,
                  child: Container(
                    color: Colors.white,
                    child: NetworkImageHelperforCardWithoutRadiust(imagelink:homeModel.categoryHealth!.cateogoryNewsItem![index].parallex_img.toString() ,),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(4.0),
                    //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                    // ),
                  ),
                ),
              ),
            ):Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ConstrainedBox(

                    constraints: new BoxConstraints(
                      minHeight:MediaQuery.of(context).size.height/6,
                      maxHeight:  MediaQuery.of(context).size.height/5,),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade200,
                                width: 1

                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 0), // changes position of shadow
                              ),

                            ],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: SizeConfig.screenWidth!/4,
                        width:  SizeConfig.screenWidth,
                        child: Container(
                          color: Colors.white,
                          child: NetworkImageHelperforCard(imagelink:homeModel.categoryHealth!.cateogoryNewsItem![index].parallex_img.toString() ,),
                          // child: Padding(
                          //   padding: const EdgeInsets.all(4.0),
                          //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  // child: ConstrainedBox(
                  //
                  //   constraints: new BoxConstraints(
                  //     minHeight:MediaQuery.of(context).size.height/6,
                  //     maxHeight:  MediaQuery.of(context).size.height/5,),
                  //   child: HtmlView(
                  //     html: homeModel.categoryHealth!.cateogoryNewsItem![index].short_content.toString(),
                  //     title: "Seller Policy",
                  //   ),
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(homeModel.categoryHealth!.cateogoryNewsItem![index].short_content.toString(),maxLines: 7,),
                  ),
                ),
              ],
            ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(homeModel.categoryHealth!.cateogoryNewsItem![index].title.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                thickness: 1,


              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryGoodGovernance(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.3,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryGoodGovernance!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(homeModel.categoryGoodGovernance!.cateogoryNewsItem![index].title.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 16.0),
              child: Align(
                  alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryGoodGovernance!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerRight,child:
            //       Container(
            //           decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               border: Border.all(
            //                   color: Colors.blueGrey
            //               )
            //           ),
            //           child: Padding(
            //             padding: const EdgeInsets.all(2.0),
            //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
            //           ))
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ConstrainedBox(

                    constraints: new BoxConstraints(
                      minHeight:MediaQuery.of(context).size.height/6,
                      maxHeight:  MediaQuery.of(context).size.height/5,),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade200,
                                width: 1

                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 0), // changes position of shadow
                              ),

                            ],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: SizeConfig.screenWidth!/4,
                        width:  SizeConfig.screenWidth,
                        child: Container(
                          color: Colors.white,
                          child: NetworkImageHelperforCard(imagelink:homeModel.categoryGoodGovernance!.cateogoryNewsItem![index].parallex_img.toString() ,),
                          // child: Padding(
                          //   padding: const EdgeInsets.all(4.0),
                          //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  // child: ConstrainedBox(
                  //
                  //   constraints: new BoxConstraints(
                  //     minHeight:MediaQuery.of(context).size.height/6,
                  //     maxHeight:  MediaQuery.of(context).size.height/5,),
                  //   child: HtmlView(
                  //     html: homeModel.categoryGoodGovernance!.cateogoryNewsItem![index].short_content.toString(),
                  //     title: "Seller Policy",
                  //   ),
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(homeModel.categoryGoodGovernance!.cateogoryNewsItem![index].short_content.toString(),maxLines: 7,),
                  ),
                ),
              ],
            ),




            Divider(
              thickness: 2,

            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryEntertainment(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryEntertainment!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(homeModel.categoryEntertainment!.cateogoryNewsItem![index].title.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                    child: Align(
                        alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryEntertainment!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),

                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
                    child: ConstrainedBox(

                      constraints: new BoxConstraints(
                        minHeight:MediaQuery.of(context).size.height/3,
                        maxHeight:  MediaQuery.of(context).size.height/2,),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1

                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),

                              ],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: SizeConfig.screenWidth!/4,
                          width:  SizeConfig.screenWidth,
                          child: Container(
                            color: Colors.white,
                            child: NetworkImageHelperforCard(imagelink:homeModel.categoryEntertainment!.cateogoryNewsItem![index].parallex_img.toString() ,),
                            // child: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),





                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryeducation(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/2.9,
    ),
    child: InkWell(
      onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categoryeducation!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                    child: Align(
                        alignment:Alignment.centerRight,child: Text(Pagess().method(homeModel.categoryeducation!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                    child: Text(homeModel.categoryeducation!.cateogoryNewsItem![index].title.toString(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
      homeModel.categoryeducation!.cateogoryNewsItem![index].short_content ==null? ConstrainedBox(

        constraints: new BoxConstraints(
          minHeight:MediaQuery.of(context).size.height/6,
          maxHeight:  MediaQuery.of(context).size.height/5,),
        child: NetworkImageHelperforCardWithoutRadiust(
          imagelink: homeModel.categoryeducation!.cateogoryNewsItem![index].parallex_img.toString(),

        ),
      ):
      ConstrainedBox(

                    constraints: new BoxConstraints(
                      minHeight:MediaQuery.of(context).size.height/6,
                      maxHeight:  MediaQuery.of(context).size.height/5,),
                    child: HtmlView(
                      html: homeModel.categoryeducation!.cateogoryNewsItem![index].short_content.toString(),
                      title: "Seller Policy",
                    ),
                  )

                  ,Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Divider(
                     color: Colors.grey,
                    ),
                  )





                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryEconomy(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.3,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryEconomy!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(homeModel.categoryEconomy!.cateogoryNewsItem![index].title.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16.0),
              child: Align(
                  alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryEconomy!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
            //       child: Align(
            //           alignment:Alignment.centerRight,child:
            //       Container(
            //           decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               border: Border.all(
            //                   color: Colors.blueGrey
            //               )
            //           ),
            //           child: Padding(
            //             padding: const EdgeInsets.all(2.0),
            //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
            //           ))
            //       ),
            //     ),
            //   ],
            // ),
            homeModel.categoryEconomy!.cateogoryNewsItem![index].short_content==null?
            ConstrainedBox(

              constraints: new BoxConstraints(
                minHeight:MediaQuery.of(context).size.height/6,
                maxHeight:  MediaQuery.of(context).size.height/5,),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1

                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 0), // changes position of shadow
                        ),

                      ],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: SizeConfig.screenWidth!/4,
                  width:  SizeConfig.screenWidth,
                  child: Container(
                    color: Colors.white,
                    child: NetworkImageHelperforCard(imagelink:homeModel.categoryEconomy!.cateogoryNewsItem![index].parallex_img.toString() ,),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(4.0),
                    //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                    // ),
                  ),
                ),
              ),
            ):
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ConstrainedBox(

                    constraints: new BoxConstraints(
                      minHeight:MediaQuery.of(context).size.height/6,
                      maxHeight:  MediaQuery.of(context).size.height/5,),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade200,
                                width: 1

                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 0), // changes position of shadow
                              ),

                            ],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: SizeConfig.screenWidth!/4,
                        width:  SizeConfig.screenWidth,
                        child: Container(
                          color: Colors.white,
                          child: NetworkImageHelperforCard(imagelink:homeModel.categoryEconomy!.cateogoryNewsItem![index].parallex_img.toString() ,),
                          // child: Padding(
                          //   padding: const EdgeInsets.all(4.0),
                          //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  // child: ConstrainedBox(
                  //
                  //   constraints: new BoxConstraints(
                  //     minHeight:MediaQuery.of(context).size.height/6,
                  //     maxHeight:  MediaQuery.of(context).size.height/5,),
                  //   child: HtmlView(
                  //     html: homeModel.categoryEconomy!.cateogoryNewsItem![index].short_content.toString(),
                  //     title: "Seller Policy",
                  //   ),
                  // ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(homeModel.categoryEconomy!.cateogoryNewsItem![index].short_content.toString()),
                  ),
                ),
              ],
            ),




            Divider(
              thickness: 2,

            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryBreaking(BuildContext context, int index,HomePageData homeModel) {

  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categoryBreaking!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
      child: Column(

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: ConstrainedBox(

                  constraints: new BoxConstraints(
                    minHeight:MediaQuery.of(context).size.height/8,
                    maxHeight:  MediaQuery.of(context).size.height/7,),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey.shade200,
                              width: 1

                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 0), // changes position of shadow
                            ),

                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: SizeConfig.screenWidth!/4,
                      width:  SizeConfig.screenWidth,
                      child: NetworkImageHelperforCard(imagelink:homeModel.categoryBreaking!.cateogoryNewsItem![index].parallex_img.toString() ,),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
                  child: Text(homeModel.categoryBreaking!.cateogoryNewsItem![index].title.toString(),style: TextStyle(color: Colors.purple,fontSize: 20),),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
            child: Divider(
              thickness: 1,

            ),
          ),
        ],
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}

Widget buildItemsForCategorymiscellaneous(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categorymiscellaneous!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(homeModel.categorymiscellaneous!.cateogoryNewsItem![index].title.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                    child: Align(
                        alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categorymiscellaneous!.cateogoryNewsItem![index].publish_time!), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),

                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ConstrainedBox(

                            constraints: new BoxConstraints(
                              minHeight:MediaQuery.of(context).size.height/6,
                              maxHeight:  MediaQuery.of(context).size.height/5,),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade200,
                                        width: 1

                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0, 0), // changes position of shadow
                                      ),

                                    ],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: SizeConfig.screenWidth!/4,
                                width:  SizeConfig.screenWidth,
                                child: Container(
                                  color: Colors.white,
                                  child: NetworkImageHelperforCard(imagelink:homeModel.categorymiscellaneous!.cateogoryNewsItem![index].parallex_img.toString() ,),
                                  // child: Padding(
                                  //   padding: const EdgeInsets.all(4.0),
                                  //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ConstrainedBox(

                            constraints: new BoxConstraints(
                              minHeight:MediaQuery.of(context).size.height/6,
                              maxHeight:  MediaQuery.of(context).size.height/5,),
                            child: HtmlView(
                              html: homeModel.categorymiscellaneous!.cateogoryNewsItem![index].short_content.toString(),
                              title: "Seller Policy",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),




                  Divider(
                    thickness: 2,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryAuto(BuildContext context, int index,HomePageData homeModel) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.8,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsScreen(
            slug: homeModel.categoryAuto!.cateogoryNewsItem![index].slug
                .toString(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
        child: Column(
          children: [
            Expanded(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                    child: Align(
                        alignment:Alignment.centerLeft,child: Text(Pagess().method(homeModel.categoryAuto!.cateogoryNewsItem![index].publish_time.toString()), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                  //       child: Align(
                  //           alignment:Alignment.centerRight,child:
                  //       Container(
                  //           decoration: BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               border: Border.all(
                  //                   color: Colors.blueGrey
                  //               )
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Icon(Icons.share,color: Colors.grey,size: 12,),
                  //           ))
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Expanded(
                        flex: 2,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/5,),
                          child: HtmlView(
                            html: homeModel.categoryAuto!.cateogoryNewsItem![index].short_content.toString(),
                            title: "Seller Policy",
                          ),
                        ),
                      ), Expanded(
                        flex: 1,
                        child: ConstrainedBox(

                          constraints: new BoxConstraints(
                            minHeight:MediaQuery.of(context).size.height/6,
                            maxHeight:  MediaQuery.of(context).size.height/5,),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade200,
                                      width: 1

                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),

                                  ],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height: SizeConfig.screenWidth!/4,
                              width:  SizeConfig.screenWidth,
                              child: Container(
                                color: Colors.white,
                                child: NetworkImageHelperforCard(imagelink:homeModel.categoryAuto!.cateogoryNewsItem![index].parallex_img.toString() ,),
                                // child: Padding(
                                //   padding: const EdgeInsets.all(4.0),
                                //   child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),



                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  //   child: Text(homeModel.categoryAuto!.cateogoryNewsItem![index].title.toString(),
                  //       overflow: TextOverflow.ellipsis,
                  //       style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                  // ),
                  Divider(
                    thickness: 2,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget buildItemsForCategoryAgriculture(BuildContext context, int index,HomePageData homeModel) {

  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsScreen(
          slug: homeModel.categoryAgriculture!.cateogoryNewsItem![index].slug
              .toString(),
        );
      }));
    },
    child: Column(

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Center(child: Text(
                    NepaliUnicode.convert('${index+1}'+".").toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.purple),)),
              ),
              Expanded(
                flex: 5,
                child:  Text(homeModel.categoryAgriculture!.cateogoryNewsItem![index].title.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 0,
          color: Colors.transparent,

        ),
      ],
    ),
  );
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}


















Widget ForTitle(BuildContext context,String title){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween
      ,

      children: [
        Container(
          height: SizeConfig.screenWidth!/25,
          width: SizeConfig.screenWidth!/25,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.appNameThemeColor
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(title.toString(), style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
        ),
        Expanded(
          child: Center(
            child: Container(
              height: 3,

              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
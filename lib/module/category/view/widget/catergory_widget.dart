import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_app/components/HtmlView.dart';
import 'package:news_portal_app/components/network_image.dart';
import 'package:news_portal_app/module/category/model/category_modal.dart';
import 'package:news_portal_app/module/home_screen/view/Widget/important_news.dart';
import 'package:news_portal_app/module/home_screen/view/news_screen.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:news_portal_app/res/size_config.dart';

Widget buildItemsForCategory(BuildContext context, int index,Categorymodal categorymodal) {

  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/3.5,
    ),
    child:index<2? InkWell(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context){
        //   return NewsDetails(
        //     title: _newsArticles[index].title,
        //     url: _newsArticles[index].urlToImage,
        //   );
        // }));
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
                        alignment:Alignment.centerLeft,child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].publish_time.toString(), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
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
                                color: Colors.white,
                                child: NetworkImageHelperforCardWithoutRadiust(imagelink:categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].parallex_img.toString() ,),
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
                            html: categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].short_content.toString(),
                            title: "Seller Policy",
                          ),
                        ),
                      ),
                    ],
                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                    child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].title.toString(),
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
    ):
        InkWell(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context){
        //   return NewsDetails(
        //     title: _newsArticles[index].title,
        //     url: _newsArticles[index].urlToImage,
        //   );
        // }));
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
                        alignment:Alignment.centerLeft,child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].publish_time.toString(), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
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
                                child: NetworkImageHelperforCard(imagelink:categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].parallex_img.toString() ,),
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
                            html: categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].short_content.toString(),
                            title: "Seller Policy",
                          ),
                        ),
                      ),
                    ],
                  ),



                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                    child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].title.toString(),
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
Widget buildItemsForImportantNewss(BuildContext context, int index,Categorymodal categorymodal) {
if(index<4){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return NewsScreen(
          slug: categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].slug.toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
            child: Align(
                alignment:Alignment.centerLeft,child: Text(Pagess().method(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].publish_time.toString()), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [

                      ConstrainedBox(

                        constraints: new BoxConstraints(
                          minHeight:MediaQuery.of(context).size.height/6,
                          maxHeight:  MediaQuery.of(context).size.height/2,),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
                          child: Container(
                            decoration: BoxDecoration(

                                border: Border.all(
                                    color: Colors.grey.shade200,
                                    width: 1

                                ),
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
                            height: SizeConfig.screenWidth!/2.1,
                            width:  SizeConfig.screenWidth,
                            child: NetworkImageHelperforCardWithoutRadiust(imagelink:categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].parallex_img.toString() ,),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: SizeConfig.screenWidth!/2,
                            width: double.infinity,
                            decoration: new BoxDecoration(
                              gradient: new LinearGradient(
                                begin: const Alignment(0.0, 0.3),
                                end: const Alignment(0.0, -.7),
                                colors: <Color>[
                                  const Color(0xAB000000),
                                  Colors.black12.withOpacity(0.0)
                                ],
                              ),

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Container(
                         // color: Colors.transparent,
                          width: SizeConfig.screenWidth,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(

                              border: Border.all(
                                  color: Colors.transparent,
                                  width: 1

                              ),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black54.withOpacity(.8),
                              //     spreadRadius: 5,
                              //     blurRadius: 10,
                              //     offset: Offset(0, 0), // changes position of shadow
                              //   ),
                              //
                              // ],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child:Center(child:
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                            child: Align(
                              alignment: Alignment.centerLeft,

                              child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].title.toString(),
                                  overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,
                                              shadows: [
                                              Shadow(
                                              color: Colors.black,
                                              offset: Offset(15,15),
                                              blurRadius: 20),
                                              ]
                                      ),
                            ),
                          ),
                          ) ,
                        ),
                      )),

                    ],
                  ),
                ),
                categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].short_content.toString()=="null"?SizedBox.shrink():Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                  child: Text(
                    categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].short_content.toString(),



                  ),
                ),
              ],
            ),
          ),




          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
            child: Divider(
              thickness: 1,

            ),
          ),
        ],
      ),
    ),
  );
}else if( index<9){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return NewsScreen(
          slug: categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].slug.toString(),
        );
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].title.toString(),
                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
            child: Align(
                alignment:Alignment.centerLeft,child: Text(Pagess().method(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].publish_time.toString()), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
          ),
          categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].short_content.toString()=="null"?
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.transparent,
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
              height: SizeConfig.screenWidth!/2,
              width:  SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: SizeConfig.screenWidth!/2.1,
                      width:  SizeConfig.screenWidth,
                      child: NetworkImageHelperforCard(imagelink:categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].parallex_img.toString() ,)),

                ],
              ),
            ),
          ):
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].short_content.toString()),
                ),

                // child: ConstrainedBox(
                //
                //   constraints: new BoxConstraints(
                //     minHeight:MediaQuery.of(context).size.height/6,
                //     maxHeight:  MediaQuery.of(context).size.height/4,),
                //   child: HtmlView(
                //     html: categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].short_content.toString(),
                //     title: "Seller Policy",
                //   ),
                // ),
              ),
              Expanded(
                flex: 1,
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
                            offset: Offset(0, 0), // changes position of shadow
                          ),

                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: SizeConfig.screenWidth!/2,
                    width:  SizeConfig.screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: SizeConfig.screenWidth!/2.1,
                            width:  SizeConfig.screenWidth,
                            child: NetworkImageHelperforCard(imagelink:categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].parallex_img.toString() ,)),

                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),






        ],
      ),
    ),
  );
}else if( index<15){
  return ConstrainedBox(

    constraints: new BoxConstraints(
      minHeight:MediaQuery.of(context).size.height/5,
      maxHeight:  MediaQuery.of(context).size.height/2.9,
    ),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return NewsScreen(
            slug: categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].slug.toString(),
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

                  Expanded(

                    child: ConstrainedBox(

                      constraints: new BoxConstraints(
                        minHeight:MediaQuery.of(context).size.height/6,
                        maxHeight:  MediaQuery.of(context).size.height/4,),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300,


                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),

                              ],
                              borderRadius: BorderRadius.circular(0)
                          ),
                          height: SizeConfig.screenWidth,
                          width:  SizeConfig.screenWidth,
                          child:                                 NetworkImageHelperforCardWithoutRadiust(imagelink:categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].parallex_img.toString() ,),

                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,

                      child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].title.toString(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,      shadows: [
                            Shadow(
                                color: Colors.grey.shade400,
                                offset: Offset(1,1.1),

                                blurRadius: 1),
                          ]),),
                    ),
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
  return InkWell(
    onTap: (){
      // Navigator.push(context, MaterialPageRoute(builder: (context){
      //   return NewsDetails(
      //     title: _newsArticles[index].title,
      //     url: _newsArticles[index].urlToImage,
      //   );
      // }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
              child: Container(
                height: 50,
                width: 10,
                color: Colors.purple    ,

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(categorymodal.categoryContent!.categoryCollection!.CategoryDetailModel![index].title.toString(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
  // return ListTile(
  //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
  //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
  // );
}
Widget ForTitles(BuildContext context,String title){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween
      ,

      children: [
        Container(
          height: SizeConfig.screenWidth!/15,
          width: SizeConfig.screenWidth!/15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.appNameThemeColor
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(title, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: Center(
            child: Container(
              height: 3,

              color: Colors.grey[200],
            ),
          ),
        )
      ],
    ),
  );
}
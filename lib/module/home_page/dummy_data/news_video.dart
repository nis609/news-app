
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:news_portal_app/module/home_page/dummy_data/repo.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:news_portal_app/res/size_config.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:share/share.dart';

import 'dummy_news.dart';
import 'news_videos_details.dart';

class VideoNewsListState extends State<VideoNewsList> {

  List<NewsArticle> _newsArticles = [];
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('yyyy-MM-EEEE');
  final String formatted = formatter.format(now);
  var newDt = DateFormat.yMMMEd().format(now);
  @override
  void initState() {
    super.initState();
    _populateNewsArticles();
  }

  void _populateNewsArticles() {

    Webservice().load(NewsArticle.all).then((newsArticles) => {
      setState(() => {
        _newsArticles = newsArticles
      })
    });

  }

  Widget _buildItemsForListView(BuildContext context, int index) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return VideoNewsDetails(
            title: _newsArticles[index].title,
            url: _newsArticles[index].urlToImage,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
              child: Align(
                  alignment:Alignment.centerRight,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
              child: Container(
                height: SizeConfig.screenWidth!/2,
                width:  SizeConfig.screenWidth,
                child: Stack(
                  children: [

                    _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
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



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
              child: Text(_newsArticles[index].title, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0.0),
                      child: Text(_newsArticles[index].descrption!,maxLines: 3, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                        alignment:Alignment.centerRight,child:
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.blueGrey
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: InkWell(
                              onTap: (){
                                _onShare(context,_newsArticles[index].title);
                              },
                              child: Icon(Icons.share,color: Colors.grey,size: 20,)),
                        ))
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
    );
    // return ListTile(
    //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
    //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
    // );
  }
  _onShare(BuildContext context,String texts) async {
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
  Widget _buildItemsForListViews(BuildContext context, int index) {
    return Container(
      width: SizeConfig.screenWidth!/1.2,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return VideoNewsDetails(
              title: _newsArticles[index].title,
              url: _newsArticles[index].urlToImage,
            );
          }));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                child: Align(
                    alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
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
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,

                      ),
                      borderRadius: BorderRadius.circular(3)
                  ),
                  height: SizeConfig.screenWidth!/2,
                  width:  SizeConfig.screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                      Positioned(
                bottom: 1,
                left: 1,
                    child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration( color: Colors.red,
                      borderRadius: BorderRadius.circular(8)
                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
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


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
                child: Text(_newsArticles[index].title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
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
  Widget _buildItemsForListViewss(BuildContext context, int index) {
    return Container(
      width: SizeConfig.screenWidth!/1.2,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return VideoNewsDetails(
              title: _newsArticles[index].title,
              url: _newsArticles[index].urlToImage,
            );
          }));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                child: Align(
                    alignment:Alignment.centerLeft,child: Text(newDt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent
                      )
                  ),
                  height: SizeConfig.screenWidth!/4.5,
                  width:  SizeConfig.screenWidth,
                  child: Row(
                    children: [
                      Expanded(
                          flex:1,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black54
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Stack(
                                  children: [
                                    _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                                    Positioned(
                                      bottom: 1,
                                      left: 1,
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration( color: Colors.red,
                                            borderRadius: BorderRadius.circular(8)
                                        ),


                                        child: Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Icon(
                                            Icons.play_circle_filled_outlined,
                                            color:Colors.white ,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                      Expanded(
                          flex:2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(_newsArticles[index].title,maxLines:3,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                          ))
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
                child: Text(_newsArticles[index].descrption!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16.0),
                child: Align(
                    alignment:Alignment.centerRight,child:
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.blueGrey
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                          onTap: (){
                            _onShare(context,_newsArticles[index].title);
                          },
                          child: Icon(Icons.share,color: Colors.grey,size: 20,)),
                    ))
                ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                color: Colors.transparent,
              ),
              Container(
                height: SizeConfig.screenHeight!+50,
                child:_newsArticles.length>0? ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _newsArticles.length,
                  itemBuilder: _buildItemsForListView,
                ):Center(
                child: Container(
                height: 100,
                child: Column(

                  children: [
                    GlowingProgressIndicator(
                      child:  Image.asset("assets/applogo.png",height: 50,width: 50,),
                    ),
                    JumpingText('Loading...'),
                  ],
                ),
              ),
        ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
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
                          child: Text("Important  News", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
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
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: SizeConfig.screenHeight!/2.8,
                    width:SizeConfig.screenWidth ,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      itemCount: _newsArticles.length,
                      itemBuilder: _buildItemsForListViews,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
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
                          child: Text("Event News", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
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
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: SizeConfig.screenHeight!/2.8,
                    width:SizeConfig.screenWidth ,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      itemCount: _newsArticles.length,
                      itemBuilder: _buildItemsForListViews,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16.0),
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
                          child: Text("Event News", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
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
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: SizeConfig.screenHeight,
                    width:SizeConfig.screenWidth ,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _newsArticles.length,
                      itemBuilder: _buildItemsForListViewss,
                    ),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}

class VideoNewsList extends StatefulWidget {
  const VideoNewsList({Key? key}) : super(key: key);
  @override
  createState() => VideoNewsListState();
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_portal_app/module/home_page/dummy_data/repo.dart';
import 'package:news_portal_app/module/home_page/dummy_data/video.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:news_portal_app/res/size_config.dart';
import 'package:share/share.dart';
import 'package:video_player/video_player.dart';

import 'dummy_news.dart';

class VideoNewsDetailsState extends State<VideoNewsDetails> with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;
  bool expand=false;
  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
    _populateNewsArticles();
  }
  void _runExpandCheck() {
    if(expand) {
      expandController.forward();
    }
    else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(VideoNewsDetails oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }
  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }
  List<NewsArticle> _newsArticles = [];



  void _populateNewsArticles() {

    Webservice().load(NewsArticle.all).then((newsArticles) => {
      setState(() => {
        _newsArticles = newsArticles
      })
    });

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

  Widget _buildItemsForListView(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:0,horizontal: 0.0),
          child: Container(
            height: SizeConfig.screenWidth!/5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black12
                        )
                    ),

                    width:  SizeConfig.screenWidth!/3,
                    child: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
                  ),
                ),


                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5.0),
                    child: Text(_newsArticles[index].title, style: TextStyle(fontSize: 15),maxLines: 4,),
                  ),
                ),

              ],
            ),
          ),
        ),
        Divider()
      ],
    );
    // return ListTile(
    //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
    //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
    // );
  }
  double _animatedHeight = 100.0;
  var top = 0.0;
  void as(bool a){
    if(a==false){
      setState(() {
        expand=true;
        print(expand);
      });
    }else {
      setState(() {

        expand=false;
        print(expand);
      });

    }
  }
  bool _showAppBar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          // Setting floatHeaderSlivers to true is required in order to float
          // the outer slivers over the inner scrollable.
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,


                  flexibleSpace: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        // print('constraints=' + constraints.toString());
                        top = constraints.biggest.height;

                        return FlexibleSpaceBar(
                            centerTitle: false,
                            title: AnimatedOpacity(
                                duration: Duration(milliseconds: 300),
                                //opacity: top == MediaQuery.of(context).padding.top + kToolbarHeight ? 1.0 : 0.0,
                                opacity: 1.0,
                                child: Align(
                                  alignment: Alignment.bottomLeft,

                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 2),
                                    width: 150,
                                    child: Text(


                                      top<=85?widget.title!:"",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 15.0),
                                      maxLines: 1,
                                    ),
                                  ),
                                )),
                            background: Image.network(
                              widget.url!,
                              fit: BoxFit.cover,
                            ));
                      }),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.refresh),

                      onPressed: () async{

                        setState(() => _showAppBar = !_showAppBar);

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        _onShare(context,widget.url!);
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
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: SizeConfig.screenWidth!/1.5,
                          width: SizeConfig.screenWidth,
                          child: ListView(
                            children: <Widget>[



                              VideoItems(
                                videoPlayerController: VideoPlayerController.network(
                                    "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
                                ),
                                looping: false,
                                autoplay: false,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [


                              Row(
                                children: [
                                  Container(alignment: Alignment.centerLeft,

                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            // BoxShadow(
                                            //   color: Colors.white.withOpacity(0.6),
                                            //   spreadRadius: 1,
                                            //   blurRadius: 2,
                                            //   offset: Offset(0, 0), // changes position of shadow
                                            // ),

                                          ],
                                          border: Border.all(
                                              color: Colors.purple,
                                              width: 1
                                          )


                                      ),



                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset("assets/applogo.png" ,  height: SizeConfig.screenWidth!/12,
                                          width: SizeConfig.screenWidth!/12,
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
                                          child: Text("newDt", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 0.0),
                                          child: Text("News tag", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                        ),



                                      ],
                                    ),
                                  )
                                ],
                              ),






                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 0.0),
                                child: Text(widget.title!, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                              ),
                              Text("At first Ms Marin defended her actions, arguing that she had followed the advice of her secretary of state, who informed her about the Covid exposure\nBut in a Facebook post on Monday, Ms Marin said she should have double-checked the guidance and used better judgement."),
                              Divider(
                                color: Colors.transparent,
                              ),
                              Text("At first Ms Marin defended her actions, arguing that she had followed the advice of her secretary of state, who informed her about the Covid exposure\nBut in a Facebook post on Monday, Ms Marin said she should have double-checked the guidance and used better judgement.")




                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 0.0),
                                child: Text(widget.title!, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                              ),
                              Text("At first Ms Marin defended her actions, arguing that she had followed the advice of her secretary of state, who informed her about the Covid exposure\nBut in a Facebook post on Monday, Ms Marin said she should have double-checked the guidance and used better judgement."),
                              Divider(
                                color: Colors.transparent,
                              ),
                              Text("At first Ms Marin defended her actions, arguing that she had followed the advice of her secretary of state, who informed her about the Covid exposure\nBut in a Facebook post on Monday, Ms Marin said she should have double-checked the guidance and used better judgement.")




                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("- Reporter name ", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500
                                  ))),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0.0),
                          child: Image.network(
                            widget.url!,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Padding(
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
                                child: Text("Featured News", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
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

                          height: SizeConfig.screenHeight,

                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _newsArticles.length,
                            itemBuilder: _buildItemsForListView,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

class VideoNewsDetails extends StatefulWidget {
  final String? url;
  final String? title;
  const VideoNewsDetails({Key? key, this.url, this.title}) : super(key: key);
  @override
  createState() => VideoNewsDetailsState();
}
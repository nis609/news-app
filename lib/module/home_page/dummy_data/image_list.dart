import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_app/module/home_page/dummy_data/videos.dart';
import 'package:video_player/video_player.dart';

class ImgaeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],

      body: ListView(
        children: <Widget>[
          InkWell(
              onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Videos();
                        }));
              },
              child: Image.network('https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300')),
          // VideoItems(
          //   videoPlayerController: VideoPlayerController.network(
          //       'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
          //   ),
          //   looping: false,
          //   autoplay: true,
          // ),


          // VideoItems(
          //   videoPlayerController: VideoPlayerController.network(
          //       "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
          //   ),
          //   looping: false,
          //   autoplay: false,
          // ),
        ],
      ),
    );
  }
}
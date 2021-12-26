import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_app/module/home_page/dummy_data/video.dart';
import 'package:video_player/video_player.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Flutter Video Player Demo'),
        centerTitle: true,
      ),
      body: ListView(
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
    );
  }
}
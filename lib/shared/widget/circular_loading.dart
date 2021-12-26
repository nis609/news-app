import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_app/res/size_config.dart';

Widget CircularLoading(){
  return SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index.isEven ? Colors.blueGrey.shade400 : Colors.blueGrey.shade400,
        ),
      );
    },
  );
}

Widget ErrorPage(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset("assets/error.svg",height: SizeConfig.screenWidth!/2,
        width: SizeConfig.screenWidth!/2,
      ),
      Divider(),
      Center(
        child: Text("Something went wrong",style: TextStyle(color: Colors.grey.shade500),),
      ),

    ],
  );
}
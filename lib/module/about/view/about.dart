import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:news_portal_app/module/about/view/utils_for_hyperlink.dart';
import 'package:news_portal_app/module/about/view/web_page.dart';
import 'package:news_portal_app/res/app_color.dart';
import 'package:news_portal_app/res/size_config.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16.0),
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 8.0),
                //   child: Image.asset("assets/applogo.png"),
                // ),
                Column(
                  children: [
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
                            child: Text("Offcial Inforamtion", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
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
                    Padding(

                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: RichText(


                          text: TextSpan(
                              children: [
                                TextSpan(

                                    text: "Customer Care can be reached at the number ",
                                    style: TextStyle(color: Colors.black87)
                                ),
                                TextSpan(

                                    text: "01-4225215 ,",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Utils_For_Hyperlink.openPhoneCall( phoneNumber: "01-4225215");
                                      },

                                    style: TextStyle(color: Colors.blueGrey)
                                ),
                                // TextSpan(
                                //
                                //     text: "9851175669",
                                //     recognizer: TapGestureRecognizer()
                                //       ..onTap = () {
                                //         Utils_For_Hyperlink.openPhoneCall( phoneNumber: "9851172269");
                                //       },
                                //
                                //     style: TextStyle(color: Colors.blueGrey)
                                // ),

                              ]
                          )),
                    ),
                    Padding(

                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: RichText(


                          text: TextSpan(
                              children: [
                                TextSpan(

                                    text: "Customer  can be reached at the place ",
                                    style: TextStyle(color: Colors.black87)
                                ),
                                TextSpan(

                                    text: "Darbarmarg,Kathmandu,Nepal",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Utils_For_Hyperlink.openPhoneCall( phoneNumber: "Darbarmarg,Kathmandu,Nepal");
                                      },

                                    style: TextStyle(color: Colors.blueGrey)
                                ),


                              ]
                          )),
                    )
                  ],
                ),
                Column(
                  children: [
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
                            child: Text("Social Inforamtion", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
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
                    Padding(

                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return WebViewPage(

                                    url: "https://www.facebook.com/purnapaathnews",
                                  );
                                }));
                              },
                              child: Container(
                                  height: SizeConfig.screenWidth!/9,
                                  width: SizeConfig.screenWidth!/9,
                                  child: Image.asset("assets/fb.png")),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(bottom: 8.0),
                          //   child: InkWell(
                          //     onTap: (){
                          //       Navigator.push(context, MaterialPageRoute(builder: (context){
                          //         return WebViewPage(
                          //
                          //           url: "https://twitter.com/SherBDeuba",
                          //         );
                          //       }));
                          //     },
                          //     child: Container(
                          //         height: SizeConfig.screenWidth!/9,
                          //         width: SizeConfig.screenWidth!/9,
                          //         child: Image.asset("assets/tw.png")),
                          //   ),
                          // ),Padding(
                          //   padding: const EdgeInsets.only(bottom: 8.0),
                          //   child: InkWell(
                          //     onTap: (){
                          //       Navigator.push(context, MaterialPageRoute(builder: (context){
                          //         return WebViewPage(
                          //
                          //           url: "https://www.youtube.com/",
                          //         );
                          //       }));
                          //     },
                          //     child: Container(
                          //         height: SizeConfig.screenWidth!/8,
                          //         width: SizeConfig.screenWidth!/8,
                          //         child: Image.asset("assets/you.png")),
                          //   ),
                          // ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          //  Positioned(
          // top: 50,
          //    child: WaveWidget( //user Stack() widget to overlap content and waves
          //      config: CustomConfig(
          //        colors: [
          //          Colors.grey,
          //
          //
          //
          //          Colors.purple,
          //          Colors.grey,
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

    );
  }
}

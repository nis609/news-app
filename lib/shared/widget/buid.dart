import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_app/components/misc.dart';
import 'package:news_portal_app/res/app_color.dart';

Widget buildRowHeading(

    {

      required double width,
      required String title1,
      required String title2,
      required String textBottom,
      String type = 'normal',  BuildContext? context, String? viewType}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   width: width * 52,
            //   child: buildRichText(
            //     text1: title1,
            //     text2: title1 == '' ? title2 : ' $title2',
            //     style1: TextStyle(
            //       color: AppColor.fontCOLORGREY,
            //       fontWeight: FontWeight.w400,
            //       fontSize: width * 5,
            //     ),
            //     style2: TextStyle(
            //       color: Colors.black,
            //       fontWeight: FontWeight.w500,
            //       fontSize: width * 5,
            //     ),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              width: width * 23,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('./assets/images/circle.svg',
                      color: const Color(0xff003893),
                      height: width * 2,
                      semanticsLabel: 'circle'),
                  SvgPicture.asset('./assets/images/diamond.svg',
                      color: AppColor.mainCOLOR,
                      height: width * 3,
                      semanticsLabel: 'circle'),
                  SizedBox(
                    width: width * 15,
                    child: SvgPicture.asset('./assets/images/Line.svg',
                        color: AppColor.mainCOLOR,
                        height: width * 3,
                        semanticsLabel: 'circle'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width * 5,
            ),
          ],
        ),
        Container(
          width: width * 35,
          padding: EdgeInsets.only(right: width * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (type == 'rest')
                SvgPicture.asset('./assets/svg/sort1.svg')
              else
                Container(),
              SizedBox(
                width: width * 2,
              ),
              InkWell(
                onTap: (){
                  // Navigator.push(context!, MaterialPageRoute(builder: (context){
                  //   return  CategoryPage(
                  //
                  //       title: title1,
                  //       type: 'e.type',
                  //       id:1,
                  //       viewType: '$viewType'
                  //   );
                  // }));

                },
                child: BoldText(
                  textBottom,
                  color: AppColor.mainCOLOR,
                  weight: FontWeight.w500,
                ),
              ),
              // Icon(
              //   Icons.arrow_forward_ios,
              //   size: width * 5,
              //   color: Color(0xff003893),
              // )
            ],
          ),
        )
      ],
    ),
  );
}

Container buildAdvertisment(
    {required BuildContext context,
      required double width,
      required double height,
      required String image,
      required String price,
      required String title,
      required String location,
      required String discount,
      bool bakery = false,
      String type = 'single ads'}) {
  return Container(
    width: width * 68,
    height: width * 70,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Stack(
            alignment:
            type == 'bakery' ? Alignment.bottomLeft : Alignment.bottomRight,
            children: [
              Container(
                height: height * 20,
                width: width * 65,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage(image), fit: BoxFit.fill),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 2,
                        offset: Offset(0, 2),
                        color: Colors.transparent)
                  ],
                  border: Border.all(

                      color: Colors.black12

                  ),

                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage(
                    fit: BoxFit.contain,
                    placeholder: const AssetImage(
                      'assets/images/app_logo.png',
                    ),
                    image: NetworkImage(
                      image,
                    ),
                    imageErrorBuilder: (_, __, ___) => Image.asset(
                      'assets/images/app_logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              if (type == 'single ads')
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.all(8),
                  color: const Color(0xffEE9E3D),
                  child: BoldText(price),
                )
              else
                type == 'bakery'
                    ? Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.all(8),
                  color: const Color(0xffEE9E3D),
                  child: BoldText(price),
                )
                    : Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.transparent,
                  width: width * 5,
                )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: type == 'bakery'
                ? Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoldText(
                    title,
                    weight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: width * 4,
                  ),
                  BoldText(
                    location,
                    color: Colors.black,
                    fontSize: width * 3.5,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex:2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BoldText(
                        title,
                        color: Colors.black,
                        fontSize: width * 4,
                      ),
                      Row(
                        children: [
                          if (type != 'grocery')
                            const Icon(
                              Icons.location_on,
                              color: AppColor.mainCOLOR,
                            ),
                          BoldText(
                            location,
                            color: Colors.black,
                            fontSize: width * 4,
                            weight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        shape: const StadiumBorder(),
                        color: const Color(0xffC0272D),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 10),
                          child: BoldText(
                            discount,
                            fontSize: width * 3,
                            weight: FontWeight.normal,
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
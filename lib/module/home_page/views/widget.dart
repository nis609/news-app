import 'package:flutter/material.dart';
import 'package:news_portal_app/components/misc.dart';

import '../../../res/app_color.dart';

Container buildCustomAppBarBakery(double height, double width) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: height * 4,
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: width * 50,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffE5E5E5), width: 1.5,),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: BoldText(
              'What are you looking for, Aisha?',
              color: const Color(0xffC4C4C4),
              weight: FontWeight.w400,
              fontSize: width * 3,
              textAlign: TextAlign.start,
            ),
          ),
        ),
        Container(
          height: height * 4,
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: width * 20,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff57B7EB), width: 1.5),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: BoldText(
              '% Offers',
              color:const Color(0xff57B7EB),
              weight: FontWeight.w500,
              fontSize: width * 3,
              textAlign: TextAlign.start,
            ),
          ),
        )
      ],
    ),
  );
}

Widget buildContainerStackedBakery(BuildContext context, double height,
    double width, String image, String title, String no) {
  return InkWell(
    onTap: () {
     
      // BakeryItems()
   
    },
    child: Container(
      height: width * 40,
      width: width * 22,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 16,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.mainCOLOR.withOpacity(0.92),
                  borderRadius: BorderRadius.circular(18)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: width * 8,
                  ),
                  BoldText(
                    title,
                    weight: FontWeight.w400,
                    fontSize: width * 3.5,
                    textAlign: TextAlign.start,
                  ),
                  Container(
                    color: Colors.white,
                    height: width * 5,
                    width: width * 0.5,
                  ),
                  BoldText(
                    no,
                    weight: FontWeight.w400,
                    fontSize: width * 4,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: width * 9,
              backgroundImage: AssetImage(image),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildBakeryContainer(
    BuildContext context,
    double height,
    double width,
    AlignmentGeometry menuDirection,
    AlignmentGeometry imgDirection,
    String image,
    {double menuWidth = 0}) {
  return InkWell(
    onTap: () {
      // CommonUtils.navigate(
      //   context,
      //   SignatureDishMenu(
      //     title: "Chocolate cake",
      //     type: "bakery",
      //     image: image,
      //   ),
      //   finish: false,
      // );
    },
    child: Container(
      height: height * 25,
      width: width * 83,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: menuDirection,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: width * 60,
              height: height * 12,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    blurRadius: 8,  color: Colors.black12),
              ], color: Colors.white, borderRadius: BorderRadius.circular(18)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: height * 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: menuWidth,
                            ),
                            SizedBox(
                              width: width * 25,
                              child: BoldText(
                                'Blueberry Cheessecake',
                                fontSize: width * 3.5,
                                color: Colors.black,
                                weight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: menuWidth,
                            ),
                            BoldText(
                              'Rs 325',
                              color: AppColor.mainCOLOR,
                              fontSize: width * 3,
                              weight: FontWeight.normal,
                            ),
                            SizedBox(
                              width: width * 2,
                            ),
                            SizedBox(
                              height: width * 3,
                              child: Image.asset('./assets/icons/veg.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: imgDirection,
            child: Container(
              // margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
              width: width * 50,
              height: height * 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    ),
  );
}

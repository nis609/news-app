import 'package:flutter/material.dart';
import 'package:news_portal_app/res/app_color.dart';

import 'misc.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                './assets/images/Mailo.gif',
                height: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              BoldText(
                'Yo Mailo',
                color: Colors.black,
                weight: FontWeight.w600,
                fontSize: width * 3.5,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Container(
            height: height * 4,
            margin: EdgeInsets.all(width),
            padding: EdgeInsets.symmetric(horizontal: width * 2),
            width: width * 50,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffE5E5E5), width: 1.5),
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
          )
        ],
      ),
    );
  }
}


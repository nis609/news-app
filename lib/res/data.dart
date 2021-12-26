import 'package:flutter/material.dart';

class Data {
  //theme color
  static const Color primaryColor = Color(0xFFFFFFFF);
  static const Color profileBarColor = Color(0xFFF5F5F6);
  static const Color hintTextColor = Color(0xFF1A1A1A);
  static const Color shadowColor = Color(0xFFC7D0F880);
  static const Color fontGreyColor8 = Color(0xff888888);
  static const TextStyle bottomNavBar = TextStyle(
    color: Color(0xFF4E7CFD),
    fontWeight: FontWeight.normal,
  );
  static const Decoration backgroundImage = BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/profilebackgr.png"),
      fit: BoxFit.fill,
    ),
  );
  static const BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    color: Colors.white,
  );
  static const BoxDecoration darkBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    color: Color(0xFFF5F9FC),
  );
  static const BoxDecoration boxDecorationShadow = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0xFF47C9DF),
        blurRadius: 3,
        offset: Offset(0, 3),
      ),
    ],
  );

  //snackBar color
  static const Color pendingOrange = Color(0xffFFA813);
  static const Color errorRed = Color(0xffFF5946);
  static const Color successGreen = Color(0xff4AD284);
  static const Color snackBarBlue = Color(0xff1AADEE);


}

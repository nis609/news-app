import 'package:flutter/material.dart';

const TextStyle boldStyle = TextStyle(fontWeight: FontWeight.bold);

class BoldText extends StatelessWidget {
  BoldText(
    this._text, {
    this.fontSize = 14,
    this.color = Colors.white,
    this.textAlign = TextAlign.center,
    this.weight = FontWeight.bold,
    this.decoration = TextDecoration.none,
    
  });
  final String _text;
  final double fontSize;
  final Color color;
  final FontWeight weight;
  final TextAlign textAlign;
  final TextDecoration decoration;
 
  @override
  Widget build(BuildContext context) => Text(_text,
      textAlign: textAlign,
      maxLines: 2,
      style: TextStyle(
          decoration: decoration,
          fontWeight: weight,
          fontSize: fontSize,


          color: color,
          fontFamily: 'SFProText'));
}
class BoldTexts extends StatelessWidget {
  BoldTexts(
      this._text, {
        this.fontSize = 12,
        this.color = Colors.white,
        this.textAlign = TextAlign.center,
        this.weight = FontWeight.bold,
        this.decoration = TextDecoration.none,

      });
  final String _text;
  final double fontSize;
  final Color color;
  final FontWeight weight;
  final TextAlign textAlign;
  final TextDecoration decoration;

  @override
  Widget build(BuildContext context) => Text(_text,
      textAlign: textAlign,
      maxLines: 1,
      style: TextStyle(
          decoration: decoration,
          fontWeight: weight,
          fontSize: fontSize,

          color: color,
          fontFamily: 'SFProText'));
}
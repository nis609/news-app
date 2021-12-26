

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_app/res/data.dart';

import 'category_contents.dart';


part 'category_modal.freezed.dart';
part 'category_modal.g.dart';

@freezed
class Categorymodal with _$Categorymodal{
  factory Categorymodal(
      {
        @JsonKey(name: "data")
        CategoryContent? categoryContent,


      }
      ) = _Categorymodal;
  factory Categorymodal.fromJson(Map<String,dynamic> json)=>
      _$CategorymodalFromJson(json);
}
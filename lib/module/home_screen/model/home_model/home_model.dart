

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_app/res/data.dart';

import 'home_page_data.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel{
  factory HomeModel(
      {
        @JsonKey(name: "data")
        HomePageData? homePageData,


      }
      ) = _HomeModel;
  factory HomeModel.fromJson(Map<String,dynamic> json)=>
      _$HomeModelFromJson(json);
}
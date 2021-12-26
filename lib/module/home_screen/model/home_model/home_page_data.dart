import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/home_model.dart';
import 'package:news_portal_app/module/home_screen/model/home_model/video_model.dart';
import 'package:news_portal_app/res/data.dart';

import 'category_news_data.dart';

part 'home_page_data.freezed.dart';
part 'home_page_data.g.dart';

@freezed
class HomePageData with _$HomePageData{
  factory HomePageData(
      {
        @JsonKey(name: "categoryBreaking")
       CateogoryNewsData? categoryBreaking,
        @JsonKey(name: "categoryMainNews")
        CateogoryNewsData? categoryMainNews,
   @JsonKey(name: "categoryPolitics")
       CateogoryNewsData? categoryPolitics,
        @JsonKey(name: "categoryEconomy")
        CateogoryNewsData? categoryEconomy,
   @JsonKey(name: "categoryInterview")
       CateogoryNewsData? categoryInterview,
        @JsonKey(name: "categoryHealth")
        CateogoryNewsData? categoryHealth,
   @JsonKey(name: "categoryThought")
       CateogoryNewsData? categoryThought,
        @JsonKey(name: "categoryIndustry")
        CateogoryNewsData? categoryIndustry,
   @JsonKey(name: "categorymiscellaneous")
       CateogoryNewsData? categorymiscellaneous,
        @JsonKey(name: "categoryeducation")
        CateogoryNewsData? categoryeducation,
   @JsonKey(name: "categoryTourism")
       CateogoryNewsData? categoryTourism,
        @JsonKey(name: "categoryLifestyle")
        CateogoryNewsData? categoryLifestyle,
  @JsonKey(name: "categoryEntertainment")
        CateogoryNewsData? categoryEntertainment,
@JsonKey(name: "categoryInternational")
        CateogoryNewsData? categoryInternational,
        @JsonKey(name: "categoryGoodGovernance")
        CateogoryNewsData? categoryGoodGovernance,
        @JsonKey(name: "categoryShare")
        CateogoryNewsData? categoryShare,

        @JsonKey(name: "categoryAuto")
        CateogoryNewsData? categoryAuto,
        @JsonKey(name: "categoryAgriculture")
        CateogoryNewsData? categoryAgriculture,
        @JsonKey(name: "categoryInformationTechnology")
        CateogoryNewsData? categoryInformationTechnology,
        @JsonKey(name: "categorySport")
        CateogoryNewsData? categorySport,

        @JsonKey(name: "categoryPhotoFeature")
        CateogoryNewsData? categoryPhotoFeature,
        @JsonKey(name: "categoryProvince2")
        CateogoryNewsData? categoryProvince2,
        @JsonKey(name: "categoryBagmati")
        CateogoryNewsData? categoryBagmati,
        @JsonKey(name: "categoryGandaki")
        CateogoryNewsData? categoryGandaki,

        @JsonKey(name: "categoryLumbini")
        CateogoryNewsData? categoryLumbini,
        @JsonKey(name: "categoryKarnali")
        CateogoryNewsData? categoryKarnali,
        @JsonKey(name: "categorySudurpaschim")
        CateogoryNewsData? categorySudurpaschim,
        @JsonKey(name: "videoContents")
        List<VideoModel>? vdeoContainer,
      }
      ) = _HomePageData;
  factory HomePageData.fromJson(Map<String,dynamic> json)=>
      _$HomePageDataFromJson(json);
}
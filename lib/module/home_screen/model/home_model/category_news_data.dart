import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_app/res/data.dart';

import 'category_news_item.dart';

part 'category_news_data.freezed.dart';
part 'category_news_data.g.dart';

@freezed
class CateogoryNewsData with _$CateogoryNewsData{
  factory CateogoryNewsData(
      {
        @JsonKey(name: 'id') int? id,
        @JsonKey(name: 'category_name') String? category_name,
        @JsonKey(name: 'nepali_title') String? nepali_title,
        @JsonKey(name: 'category_url') String? category_url,
        @JsonKey(name: 'category_id') String? category_id,

        @JsonKey(name: 'category_news_items')
        List<CateogoryNewsItem>? cateogoryNewsItem


      }
      ) = _CateogoryNewsData;
  factory CateogoryNewsData.fromJson(Map<String,dynamic> json)=>
      _$CateogoryNewsDataFromJson(json);
}
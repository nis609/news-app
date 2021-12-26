

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_app/res/data.dart';

import 'news_detail_model.dart';

part 'news_collection.freezed.dart';
part 'news_collection.g.dart';

@freezed
class NewsCollection with _$NewsCollection{
  factory NewsCollection(
      {
        @JsonKey(name: "news")
        NewsDetailModel? newsDetailModel,


      }
      ) = _NewsCollection;
  factory NewsCollection.fromJson(Map<String,dynamic> json)=>
      _$NewsCollectionFromJson(json);
}
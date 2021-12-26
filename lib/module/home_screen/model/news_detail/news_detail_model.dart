import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_app/res/data.dart';


part 'news_detail_model.freezed.dart';
part 'news_detail_model.g.dart';

@freezed
class NewsDetailModel with _$NewsDetailModel{
  factory NewsDetailModel(
      {
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'view_count') int? view_count,
            @JsonKey(name: 'trending_count') int? trending_count,
            @JsonKey(name: 'trending_status') String? trending_status,
            @JsonKey(name: 'slug') String? slug,
            @JsonKey(name: 'external_url') String? external_url,
            @JsonKey(name: 'short_content') String? short_content,
            @JsonKey(name: 'content') String? content,
            @JsonKey(name: 'parallex_img') String? parallex_img,
            @JsonKey(name: 'is_fixed') String? is_fixed,
            @JsonKey(name: 'is_flash') String? is_flash,
            @JsonKey(name: 'is_front') String? is_front,
            @JsonKey(name: 'is_special') String? is_special,
            @JsonKey(name: 'is_video') String? is_video,
            @JsonKey(name: 'is_photo') String? is_photo,
            @JsonKey(name: 'meta_title') String? meta_title,
            @JsonKey(name: 'publish_time') String? publish_time,
            @JsonKey(name: 'meta_description') String? meta_description,
            @JsonKey(name: 'time') String? time,
            @JsonKey(name: 'show_date') String? show_date,
            @JsonKey(name: 'is_mob_notification') String? is_mob_notification,
            @JsonKey(name: 'updated_at') String? updated_at,
            @JsonKey(name: 'created_at') String? created_at,


      }
      ) = _NewsDetailModel;
  factory NewsDetailModel.fromJson(Map<String,dynamic> json)=>
      _$NewsDetailModelFromJson(json);
}


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_portal_app/res/data.dart';


part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel{
  factory VideoModel(
      {
        @JsonKey(name: 'id') int? id,

        @JsonKey(name: 'title') String? title,
        @JsonKey(name: 'view_count') String? view_count,
        @JsonKey(name: 'trending_count') String? trending_count,
        @JsonKey(name: 'trending_status') String? trending_status,
        @JsonKey(name: 'slug') String? slug,
        @JsonKey(name: 'video') String? video,
        @JsonKey(name: 'short_content') String? short_content,
        @JsonKey(name: 'content') String? content,
        @JsonKey(name: 'is_fixed') String? is_fixed,
        @JsonKey(name: 'is_flash') String? is_flash,
        @JsonKey(name: 'is_front') String? is_front,
        @JsonKey(name: 'is_special') String? is_special,
        @JsonKey(name: 'is_video') String? is_video,
        @JsonKey(name: 'meta_title') String? meta_title,
        @JsonKey(name: 'meta_description') String? meta_description,
        @JsonKey(name: 'delete_status') String? delete_status ,
        @JsonKey(name: 'publish_status') String? publish_status,
        @JsonKey(name: 'parallex_img') String? parallex_img,

        @JsonKey(name: 'publish_time') String? publish_time,
        @JsonKey(name: 'date') String? date,
        @JsonKey(name: 'time') String? time,
        @JsonKey(name: 'show_date') String? show_date,
        @JsonKey(name: 'updated_at') String? updated_at,
        @JsonKey(name: 'created_at') String? created_at,
        @JsonKey(name: 'video_embed') String? video_embed,


      }
      ) = _VideoModel;
  factory VideoModel.fromJson(Map<String,dynamic> json)=>
      _$VideoModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';


part 'category_content_data.freezed.dart';
part 'category_content_data.g.dart';

@freezed
class CategoryContentData with _$CategoryContentData{
  factory CategoryContentData(
      {
        @JsonKey(name: 'id') int? id,
        @JsonKey(name: 'title') String? title,
        @JsonKey(name: 'view_count') String? view_count,
        @JsonKey(name: 'trending_count') String? trending_count,
        @JsonKey(name: 'trending_status') String? trending_status,


        @JsonKey(name: 'slug') String? slug,
        @JsonKey(name: 'short_content') String? short_content,
        @JsonKey(name: 'content') String? content,
        @JsonKey(name: 'parallex_img') String? parallex_img,

        @JsonKey(name: 'is_fixed') String? is_fixed,
        @JsonKey(name: 'is_flash') String? is_flash,
        @JsonKey(name: 'meta_title') String? meta_title,
        @JsonKey(name: 'meta_description') String? meta_description,

        @JsonKey(name: 'publish_status') String? publish_status,
        @JsonKey(name: 'delete_status') String? delete_status,
        @JsonKey(name: 'publish_time') String? publish_time,
        @JsonKey(name: 'date') String? date,

        @JsonKey(name: 'time') String? time,
        @JsonKey(name: 'show_date') String? show_date,
        @JsonKey(name: 'is_mob_notification') String? is_mob_notification,
        @JsonKey(name: 'created_at') String? created_at,
        @JsonKey(name: 'updated_at') String? updated_at,



      }
      ) = _CategoryContentData;
  factory CategoryContentData.fromJson(Map<String,dynamic> json)=>
      _$CategoryContentDataFromJson(json);
}
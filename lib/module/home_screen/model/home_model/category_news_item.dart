import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_news_item.freezed.dart';


part 'category_news_item.g.dart';

@freezed
class CateogoryNewsItem with _$CateogoryNewsItem{
  factory CateogoryNewsItem(
      {
        @JsonKey(name: 'id') int? id,
        @JsonKey(name: 'title') String? title,
        @JsonKey(name: 'short_content') String? short_content,
        @JsonKey(name: 'slug') String? slug,
        @JsonKey(name: 'content') String? content,
        @JsonKey(name: 'parallex_img') String? parallex_img,
        @JsonKey(name: 'publish_time') String? publish_time,



      }
      ) = _CateogoryNewsItem;
  factory CateogoryNewsItem.fromJson(Map<String,dynamic> json)=>
      _$CateogoryNewsItemFromJson(json);
}
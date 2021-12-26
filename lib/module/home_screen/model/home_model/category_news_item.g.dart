// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_news_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CateogoryNewsItem _$_$_CateogoryNewsItemFromJson(Map<String, dynamic> json) {
  return _$_CateogoryNewsItem(
    id: json['id'] as int?,
    title: json['title'] as String?,
    short_content: json['short_content'] as String?,
    slug: json['slug'] as String?,
    content: json['content'] as String?,
    parallex_img: json['parallex_img'] as String?,
    publish_time: json['publish_time'] as String?,
  );
}

Map<String, dynamic> _$_$_CateogoryNewsItemToJson(
        _$_CateogoryNewsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_content': instance.short_content,
      'slug': instance.slug,
      'content': instance.content,
      'parallex_img': instance.parallex_img,
      'publish_time': instance.publish_time,
    };

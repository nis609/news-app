// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_news_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CateogoryNewsData _$_$_CateogoryNewsDataFromJson(Map<String, dynamic> json) {
  return _$_CateogoryNewsData(
    id: json['id'] as int?,
    category_name: json['category_name'] as String?,
    nepali_title: json['nepali_title'] as String?,
    category_url: json['category_url'] as String?,
    category_id: json['category_id'] as String?,
    cateogoryNewsItem: (json['category_news_items'] as List<dynamic>?)
        ?.map((e) => CateogoryNewsItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CateogoryNewsDataToJson(
        _$_CateogoryNewsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.category_name,
      'nepali_title': instance.nepali_title,
      'category_url': instance.category_url,
      'category_id': instance.category_id,
      'category_news_items': instance.cateogoryNewsItem,
    };

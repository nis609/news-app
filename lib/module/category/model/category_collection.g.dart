// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryCollection _$_$_CategoryCollectionFromJson(
    Map<String, dynamic> json) {
  return _$_CategoryCollection(
    id: json['current_page'] as int?,
    category_name: json['total'] as int?,
    nepali_title: json['perPage'] as int?,
    category_url: json['lastPage'] as int?,
    CategoryDetailModel: (json['categoryContents'] as List<dynamic>?)
        ?.map((e) => CategoryContentData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CategoryCollectionToJson(
        _$_CategoryCollection instance) =>
    <String, dynamic>{
      'current_page': instance.id,
      'total': instance.category_name,
      'perPage': instance.nepali_title,
      'lastPage': instance.category_url,
      'categoryContents': instance.CategoryDetailModel,
    };

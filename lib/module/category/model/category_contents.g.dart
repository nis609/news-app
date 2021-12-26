// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryContent _$_$_CategoryContentFromJson(Map<String, dynamic> json) {
  return _$_CategoryContent(
    categoryCollection: json['categoryContents'] == null
        ? null
        : CategoryCollection.fromJson(
            json['categoryContents'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CategoryContentToJson(_$_CategoryContent instance) =>
    <String, dynamic>{
      'categoryContents': instance.categoryCollection,
    };

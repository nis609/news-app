// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsCollection _$_$_NewsCollectionFromJson(Map<String, dynamic> json) {
  return _$_NewsCollection(
    newsDetailModel: json['news'] == null
        ? null
        : NewsDetailModel.fromJson(json['news'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewsCollectionToJson(_$_NewsCollection instance) =>
    <String, dynamic>{
      'news': instance.newsDetailModel,
    };

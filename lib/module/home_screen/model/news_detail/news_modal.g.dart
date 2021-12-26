// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModal _$_$_NewsModalFromJson(Map<String, dynamic> json) {
  return _$_NewsModal(
    newsCollection: json['data'] == null
        ? null
        : NewsCollection.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewsModalToJson(_$_NewsModal instance) =>
    <String, dynamic>{
      'data': instance.newsCollection,
    };

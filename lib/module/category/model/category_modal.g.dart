// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Categorymodal _$_$_CategorymodalFromJson(Map<String, dynamic> json) {
  return _$_Categorymodal(
    categoryContent: json['data'] == null
        ? null
        : CategoryContent.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CategorymodalToJson(_$_Categorymodal instance) =>
    <String, dynamic>{
      'data': instance.categoryContent,
    };

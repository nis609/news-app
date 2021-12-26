// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$_$_HomeModelFromJson(Map<String, dynamic> json) {
  return _$_HomeModel(
    homePageData: json['data'] == null
        ? null
        : HomePageData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'data': instance.homePageData,
    };

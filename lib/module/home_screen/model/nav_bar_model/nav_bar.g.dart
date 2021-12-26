// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nav_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NavBar _$_$_NavBarFromJson(Map<String, dynamic> json) {
  return _$_NavBar(
    navigationCategories: (json['data'] as List<dynamic>?)
        ?.map((e) => NavigationCategories.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_NavBarToJson(_$_NavBar instance) => <String, dynamic>{
      'data': instance.navigationCategories,
    };

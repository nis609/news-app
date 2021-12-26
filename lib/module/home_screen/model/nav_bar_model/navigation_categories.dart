

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_categories.freezed.dart';
part 'navigation_categories.g.dart';

@freezed
class NavigationCategories with _$NavigationCategories{
  factory NavigationCategories(
  {
    @JsonKey(name: "id")
    int ? id,
    @JsonKey(name: "category_name")
    String ? category_name,
    @JsonKey(name: "category_url")
    String ? category_url,
    @JsonKey(name: "nepali_title")
    String ? nepali_title,

}
      ) = _NavigationCategories;
  factory NavigationCategories.fromJson(Map<String,dynamic> json)=>
_$NavigationCategoriesFromJson(json);
}
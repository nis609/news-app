import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'navigation_categories.dart';

part 'nav_bar.freezed.dart';
part 'nav_bar.g.dart';

@freezed
class NavBar with _$NavBar{
  factory NavBar(
  {
  @JsonKey(name: "data")
  List<NavigationCategories>? navigationCategories

}
) = _NavBar;
factory NavBar.fromJson(Map<String,dynamic> json)=>
_$NavBarFromJson(json);
}
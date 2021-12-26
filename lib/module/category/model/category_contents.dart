
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_collection.dart';


part 'category_contents.freezed.dart';
part 'category_contents.g.dart';

@freezed
class CategoryContent with _$CategoryContent{
  factory CategoryContent(
      {
        @JsonKey(name: "categoryContents")
        CategoryCollection? categoryCollection,


      }
      ) = _CategoryContent;
  factory CategoryContent.fromJson(Map<String,dynamic> json)=>
      _$CategoryContentFromJson(json);
}
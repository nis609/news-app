
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_content_data.dart';


part 'category_collection.freezed.dart';
part 'category_collection.g.dart';

@freezed
class CategoryCollection with _$CategoryCollection{
  factory CategoryCollection(
      {
        @JsonKey(name: 'current_page') int? id,
        @JsonKey(name: 'total') int? category_name,
        @JsonKey(name: 'perPage') int? nepali_title,
        @JsonKey(name: 'lastPage') int? category_url,
        @JsonKey(name: "categoryContents")
        List<CategoryContentData>? CategoryDetailModel,


      }
      ) = _CategoryCollection;
  factory CategoryCollection.fromJson(Map<String,dynamic> json)=>
      _$CategoryCollectionFromJson(json);
}
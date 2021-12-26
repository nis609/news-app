
import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_collection.dart';
import 'news_detail_model.dart';




part 'news_modal.freezed.dart';

part 'news_modal.g.dart';

@freezed
class NewsModal with _$NewsModal{
  factory NewsModal(
      {
        @JsonKey(name: "data")
        NewsCollection? newsCollection,


      }
      ) = _NewsModal;
  factory NewsModal.fromJson(Map<String,dynamic> json)=>
      _$NewsModalFromJson(json);
}
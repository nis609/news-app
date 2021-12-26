
import 'package:freezed_annotation/freezed_annotation.dart';

part 'errormodel.freezed.dart';
part 'errormodel.g.dart';

@freezed
class ErrorModel<T> with _$ErrorModel<T> {
  factory ErrorModel(
{
  Object ? error_message,
  Object? errors,
  bool ? status,
  int ? response_code


}
  ) = _ErrorModel;
	
  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
			_$ErrorModelFromJson(json);
}

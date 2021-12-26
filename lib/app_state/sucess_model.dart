import 'package:freezed_annotation/freezed_annotation.dart';

part 'sucess_model.freezed.dart';
part 'sucess_model.g.dart';

@freezed
class SucessModel with _$SucessModel {
	factory SucessModel({
		@JsonKey(name: 'message') String? message,
		@JsonKey(name: 'status') bool? status,
		@JsonKey(name: 'response_code') int? responseCode,
	}) = _SucessModel;

	factory SucessModel.fromJson(Map<String, dynamic> json) => _$SucessModelFromJson(json);
}
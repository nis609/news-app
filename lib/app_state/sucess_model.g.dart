// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sucess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SucessModel _$_$_SucessModelFromJson(Map<String, dynamic> json) {
  return _$_SucessModel(
    message: json['message'] as String?,
    status: json['status'] as bool?,
    responseCode: json['response_code'] as int?,
  );
}

Map<String, dynamic> _$_$_SucessModelToJson(_$_SucessModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'response_code': instance.responseCode,
    };

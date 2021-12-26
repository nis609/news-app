// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errormodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorModel<T> _$_$_ErrorModelFromJson<T>(Map<String, dynamic> json) {
  return _$_ErrorModel<T>(
    error_message: json['error_message'],
    errors: json['errors'],
    status: json['status'] as bool?,
    response_code: json['response_code'] as int?,
  );
}

Map<String, dynamic> _$_$_ErrorModelToJson<T>(_$_ErrorModel<T> instance) =>
    <String, dynamic>{
      'error_message': instance.error_message,
      'errors': instance.errors,
      'status': instance.status,
      'response_code': instance.response_code,
    };

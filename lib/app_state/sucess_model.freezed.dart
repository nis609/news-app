// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sucess_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SucessModel _$SucessModelFromJson(Map<String, dynamic> json) {
  return _SucessModel.fromJson(json);
}

/// @nodoc
class _$SucessModelTearOff {
  const _$SucessModelTearOff();

  _SucessModel call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode}) {
    return _SucessModel(
      message: message,
      status: status,
      responseCode: responseCode,
    );
  }

  SucessModel fromJson(Map<String, Object> json) {
    return SucessModel.fromJson(json);
  }
}

/// @nodoc
const $SucessModel = _$SucessModelTearOff();

/// @nodoc
mixin _$SucessModel {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_code')
  int? get responseCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SucessModelCopyWith<SucessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SucessModelCopyWith<$Res> {
  factory $SucessModelCopyWith(
          SucessModel value, $Res Function(SucessModel) then) =
      _$SucessModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode});
}

/// @nodoc
class _$SucessModelCopyWithImpl<$Res> implements $SucessModelCopyWith<$Res> {
  _$SucessModelCopyWithImpl(this._value, this._then);

  final SucessModel _value;
  // ignore: unused_field
  final $Res Function(SucessModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? responseCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      responseCode: responseCode == freezed
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SucessModelCopyWith<$Res>
    implements $SucessModelCopyWith<$Res> {
  factory _$SucessModelCopyWith(
          _SucessModel value, $Res Function(_SucessModel) then) =
      __$SucessModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode});
}

/// @nodoc
class __$SucessModelCopyWithImpl<$Res> extends _$SucessModelCopyWithImpl<$Res>
    implements _$SucessModelCopyWith<$Res> {
  __$SucessModelCopyWithImpl(
      _SucessModel _value, $Res Function(_SucessModel) _then)
      : super(_value, (v) => _then(v as _SucessModel));

  @override
  _SucessModel get _value => super._value as _SucessModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? responseCode = freezed,
  }) {
    return _then(_SucessModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      responseCode: responseCode == freezed
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SucessModel implements _SucessModel {
  _$_SucessModel(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'response_code') this.responseCode});

  factory _$_SucessModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SucessModelFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'response_code')
  final int? responseCode;

  @override
  String toString() {
    return 'SucessModel(message: $message, status: $status, responseCode: $responseCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SucessModel &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.responseCode, responseCode) ||
                const DeepCollectionEquality()
                    .equals(other.responseCode, responseCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(responseCode);

  @JsonKey(ignore: true)
  @override
  _$SucessModelCopyWith<_SucessModel> get copyWith =>
      __$SucessModelCopyWithImpl<_SucessModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SucessModelToJson(this);
  }
}

abstract class _SucessModel implements SucessModel {
  factory _SucessModel(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode}) = _$_SucessModel;

  factory _SucessModel.fromJson(Map<String, dynamic> json) =
      _$_SucessModel.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'response_code')
  int? get responseCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SucessModelCopyWith<_SucessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

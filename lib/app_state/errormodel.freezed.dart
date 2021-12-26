// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'errormodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorModel<T> _$ErrorModelFromJson<T>(Map<String, dynamic> json) {
  return _ErrorModel<T>.fromJson(json);
}

/// @nodoc
class _$ErrorModelTearOff {
  const _$ErrorModelTearOff();

  _ErrorModel<T> call<T>(
      {Object? error_message,
      Object? errors,
      bool? status,
      int? response_code}) {
    return _ErrorModel<T>(
      error_message: error_message,
      errors: errors,
      status: status,
      response_code: response_code,
    );
  }

  ErrorModel<T> fromJson<T>(Map<String, Object> json) {
    return ErrorModel<T>.fromJson(json);
  }
}

/// @nodoc
const $ErrorModel = _$ErrorModelTearOff();

/// @nodoc
mixin _$ErrorModel<T> {
  Object? get error_message => throw _privateConstructorUsedError;
  Object? get errors => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get response_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<T, ErrorModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<T, $Res> {
  factory $ErrorModelCopyWith(
          ErrorModel<T> value, $Res Function(ErrorModel<T>) then) =
      _$ErrorModelCopyWithImpl<T, $Res>;
  $Res call(
      {Object? error_message,
      Object? errors,
      bool? status,
      int? response_code});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<T, $Res>
    implements $ErrorModelCopyWith<T, $Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  final ErrorModel<T> _value;
  // ignore: unused_field
  final $Res Function(ErrorModel<T>) _then;

  @override
  $Res call({
    Object? error_message = freezed,
    Object? errors = freezed,
    Object? status = freezed,
    Object? response_code = freezed,
  }) {
    return _then(_value.copyWith(
      error_message:
          error_message == freezed ? _value.error_message : error_message,
      errors: errors == freezed ? _value.errors : errors,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      response_code: response_code == freezed
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorModelCopyWith<T, $Res>
    implements $ErrorModelCopyWith<T, $Res> {
  factory _$ErrorModelCopyWith(
          _ErrorModel<T> value, $Res Function(_ErrorModel<T>) then) =
      __$ErrorModelCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {Object? error_message,
      Object? errors,
      bool? status,
      int? response_code});
}

/// @nodoc
class __$ErrorModelCopyWithImpl<T, $Res>
    extends _$ErrorModelCopyWithImpl<T, $Res>
    implements _$ErrorModelCopyWith<T, $Res> {
  __$ErrorModelCopyWithImpl(
      _ErrorModel<T> _value, $Res Function(_ErrorModel<T>) _then)
      : super(_value, (v) => _then(v as _ErrorModel<T>));

  @override
  _ErrorModel<T> get _value => super._value as _ErrorModel<T>;

  @override
  $Res call({
    Object? error_message = freezed,
    Object? errors = freezed,
    Object? status = freezed,
    Object? response_code = freezed,
  }) {
    return _then(_ErrorModel<T>(
      error_message:
          error_message == freezed ? _value.error_message : error_message,
      errors: errors == freezed ? _value.errors : errors,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      response_code: response_code == freezed
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorModel<T> implements _ErrorModel<T> {
  _$_ErrorModel(
      {this.error_message, this.errors, this.status, this.response_code});

  factory _$_ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorModelFromJson(json);

  @override
  final Object? error_message;
  @override
  final Object? errors;
  @override
  final bool? status;
  @override
  final int? response_code;

  @override
  String toString() {
    return 'ErrorModel<$T>(error_message: $error_message, errors: $errors, status: $status, response_code: $response_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorModel<T> &&
            (identical(other.error_message, error_message) ||
                const DeepCollectionEquality()
                    .equals(other.error_message, error_message)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.response_code, response_code) ||
                const DeepCollectionEquality()
                    .equals(other.response_code, response_code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error_message) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(response_code);

  @JsonKey(ignore: true)
  @override
  _$ErrorModelCopyWith<T, _ErrorModel<T>> get copyWith =>
      __$ErrorModelCopyWithImpl<T, _ErrorModel<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorModelToJson(this);
  }
}

abstract class _ErrorModel<T> implements ErrorModel<T> {
  factory _ErrorModel(
      {Object? error_message,
      Object? errors,
      bool? status,
      int? response_code}) = _$_ErrorModel<T>;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$_ErrorModel<T>.fromJson;

  @override
  Object? get error_message => throw _privateConstructorUsedError;
  @override
  Object? get errors => throw _privateConstructorUsedError;
  @override
  bool? get status => throw _privateConstructorUsedError;
  @override
  int? get response_code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorModelCopyWith<T, _ErrorModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

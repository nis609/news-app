// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'appstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppStateInitial<T> initial<T>() {
    return _AppStateInitial<T>();
  }

  _AppStateLoading<T> loading<T>() {
    return _AppStateLoading<T>();
  }

  AppStateData<T> data<T>(T data) {
    return AppStateData<T>(
      data,
    );
  }

  AppStateError<T> error<T>(Object e) {
    return AppStateError<T>(
      e,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitial<T> value) initial,
    required TResult Function(_AppStateLoading<T> value) loading,
    required TResult Function(AppStateData<T> value) data,
    required TResult Function(AppStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitial<T> value)? initial,
    TResult Function(_AppStateLoading<T> value)? loading,
    TResult Function(AppStateData<T> value)? data,
    TResult Function(AppStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<T, $Res> {
  factory $AppStateCopyWith(
          AppState<T> value, $Res Function(AppState<T>) then) =
      _$AppStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<T, $Res> implements $AppStateCopyWith<T, $Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState<T> _value;
  // ignore: unused_field
  final $Res Function(AppState<T>) _then;
}

/// @nodoc
abstract class _$AppStateInitialCopyWith<T, $Res> {
  factory _$AppStateInitialCopyWith(
          _AppStateInitial<T> value, $Res Function(_AppStateInitial<T>) then) =
      __$AppStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$AppStateInitialCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res>
    implements _$AppStateInitialCopyWith<T, $Res> {
  __$AppStateInitialCopyWithImpl(
      _AppStateInitial<T> _value, $Res Function(_AppStateInitial<T>) _then)
      : super(_value, (v) => _then(v as _AppStateInitial<T>));

  @override
  _AppStateInitial<T> get _value => super._value as _AppStateInitial<T>;
}

/// @nodoc

class _$_AppStateInitial<T> implements _AppStateInitial<T> {
  _$_AppStateInitial();

  @override
  String toString() {
    return 'AppState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AppStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitial<T> value) initial,
    required TResult Function(_AppStateLoading<T> value) loading,
    required TResult Function(AppStateData<T> value) data,
    required TResult Function(AppStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitial<T> value)? initial,
    TResult Function(_AppStateLoading<T> value)? loading,
    TResult Function(AppStateData<T> value)? data,
    TResult Function(AppStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AppStateInitial<T> implements AppState<T> {
  factory _AppStateInitial() = _$_AppStateInitial<T>;
}

/// @nodoc
abstract class _$AppStateLoadingCopyWith<T, $Res> {
  factory _$AppStateLoadingCopyWith(
          _AppStateLoading<T> value, $Res Function(_AppStateLoading<T>) then) =
      __$AppStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$AppStateLoadingCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res>
    implements _$AppStateLoadingCopyWith<T, $Res> {
  __$AppStateLoadingCopyWithImpl(
      _AppStateLoading<T> _value, $Res Function(_AppStateLoading<T>) _then)
      : super(_value, (v) => _then(v as _AppStateLoading<T>));

  @override
  _AppStateLoading<T> get _value => super._value as _AppStateLoading<T>;
}

/// @nodoc

class _$_AppStateLoading<T> implements _AppStateLoading<T> {
  _$_AppStateLoading();

  @override
  String toString() {
    return 'AppState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AppStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitial<T> value) initial,
    required TResult Function(_AppStateLoading<T> value) loading,
    required TResult Function(AppStateData<T> value) data,
    required TResult Function(AppStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitial<T> value)? initial,
    TResult Function(_AppStateLoading<T> value)? loading,
    TResult Function(AppStateData<T> value)? data,
    TResult Function(AppStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AppStateLoading<T> implements AppState<T> {
  factory _AppStateLoading() = _$_AppStateLoading<T>;
}

/// @nodoc
abstract class $AppStateDataCopyWith<T, $Res> {
  factory $AppStateDataCopyWith(
          AppStateData<T> value, $Res Function(AppStateData<T>) then) =
      _$AppStateDataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$AppStateDataCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res>
    implements $AppStateDataCopyWith<T, $Res> {
  _$AppStateDataCopyWithImpl(
      AppStateData<T> _value, $Res Function(AppStateData<T>) _then)
      : super(_value, (v) => _then(v as AppStateData<T>));

  @override
  AppStateData<T> get _value => super._value as AppStateData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AppStateData<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AppStateData<T> implements AppStateData<T> {
  _$AppStateData(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AppState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppStateData<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $AppStateDataCopyWith<T, AppStateData<T>> get copyWith =>
      _$AppStateDataCopyWithImpl<T, AppStateData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object e) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitial<T> value) initial,
    required TResult Function(_AppStateLoading<T> value) loading,
    required TResult Function(AppStateData<T> value) data,
    required TResult Function(AppStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitial<T> value)? initial,
    TResult Function(_AppStateLoading<T> value)? loading,
    TResult Function(AppStateData<T> value)? data,
    TResult Function(AppStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AppStateData<T> implements AppState<T> {
  factory AppStateData(T data) = _$AppStateData<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateDataCopyWith<T, AppStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateErrorCopyWith<T, $Res> {
  factory $AppStateErrorCopyWith(
          AppStateError<T> value, $Res Function(AppStateError<T>) then) =
      _$AppStateErrorCopyWithImpl<T, $Res>;
  $Res call({Object e});
}

/// @nodoc
class _$AppStateErrorCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res>
    implements $AppStateErrorCopyWith<T, $Res> {
  _$AppStateErrorCopyWithImpl(
      AppStateError<T> _value, $Res Function(AppStateError<T>) _then)
      : super(_value, (v) => _then(v as AppStateError<T>));

  @override
  AppStateError<T> get _value => super._value as AppStateError<T>;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(AppStateError<T>(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$AppStateError<T> implements AppStateError<T> {
  _$AppStateError(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'AppState<$T>.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppStateError<T> &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  $AppStateErrorCopyWith<T, AppStateError<T>> get copyWith =>
      _$AppStateErrorCopyWithImpl<T, AppStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitial<T> value) initial,
    required TResult Function(_AppStateLoading<T> value) loading,
    required TResult Function(AppStateData<T> value) data,
    required TResult Function(AppStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitial<T> value)? initial,
    TResult Function(_AppStateLoading<T> value)? loading,
    TResult Function(AppStateData<T> value)? data,
    TResult Function(AppStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppStateError<T> implements AppState<T> {
  factory AppStateError(Object e) = _$AppStateError<T>;

  Object get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateErrorCopyWith<T, AppStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModal _$NewsModalFromJson(Map<String, dynamic> json) {
  return _NewsModal.fromJson(json);
}

/// @nodoc
class _$NewsModalTearOff {
  const _$NewsModalTearOff();

  _NewsModal call({@JsonKey(name: "data") NewsCollection? newsCollection}) {
    return _NewsModal(
      newsCollection: newsCollection,
    );
  }

  NewsModal fromJson(Map<String, Object> json) {
    return NewsModal.fromJson(json);
  }
}

/// @nodoc
const $NewsModal = _$NewsModalTearOff();

/// @nodoc
mixin _$NewsModal {
  @JsonKey(name: "data")
  NewsCollection? get newsCollection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModalCopyWith<NewsModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModalCopyWith<$Res> {
  factory $NewsModalCopyWith(NewsModal value, $Res Function(NewsModal) then) =
      _$NewsModalCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "data") NewsCollection? newsCollection});

  $NewsCollectionCopyWith<$Res>? get newsCollection;
}

/// @nodoc
class _$NewsModalCopyWithImpl<$Res> implements $NewsModalCopyWith<$Res> {
  _$NewsModalCopyWithImpl(this._value, this._then);

  final NewsModal _value;
  // ignore: unused_field
  final $Res Function(NewsModal) _then;

  @override
  $Res call({
    Object? newsCollection = freezed,
  }) {
    return _then(_value.copyWith(
      newsCollection: newsCollection == freezed
          ? _value.newsCollection
          : newsCollection // ignore: cast_nullable_to_non_nullable
              as NewsCollection?,
    ));
  }

  @override
  $NewsCollectionCopyWith<$Res>? get newsCollection {
    if (_value.newsCollection == null) {
      return null;
    }

    return $NewsCollectionCopyWith<$Res>(_value.newsCollection!, (value) {
      return _then(_value.copyWith(newsCollection: value));
    });
  }
}

/// @nodoc
abstract class _$NewsModalCopyWith<$Res> implements $NewsModalCopyWith<$Res> {
  factory _$NewsModalCopyWith(
          _NewsModal value, $Res Function(_NewsModal) then) =
      __$NewsModalCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "data") NewsCollection? newsCollection});

  @override
  $NewsCollectionCopyWith<$Res>? get newsCollection;
}

/// @nodoc
class __$NewsModalCopyWithImpl<$Res> extends _$NewsModalCopyWithImpl<$Res>
    implements _$NewsModalCopyWith<$Res> {
  __$NewsModalCopyWithImpl(_NewsModal _value, $Res Function(_NewsModal) _then)
      : super(_value, (v) => _then(v as _NewsModal));

  @override
  _NewsModal get _value => super._value as _NewsModal;

  @override
  $Res call({
    Object? newsCollection = freezed,
  }) {
    return _then(_NewsModal(
      newsCollection: newsCollection == freezed
          ? _value.newsCollection
          : newsCollection // ignore: cast_nullable_to_non_nullable
              as NewsCollection?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsModal implements _NewsModal {
  _$_NewsModal({@JsonKey(name: "data") this.newsCollection});

  factory _$_NewsModal.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsModalFromJson(json);

  @override
  @JsonKey(name: "data")
  final NewsCollection? newsCollection;

  @override
  String toString() {
    return 'NewsModal(newsCollection: $newsCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsModal &&
            (identical(other.newsCollection, newsCollection) ||
                const DeepCollectionEquality()
                    .equals(other.newsCollection, newsCollection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsCollection);

  @JsonKey(ignore: true)
  @override
  _$NewsModalCopyWith<_NewsModal> get copyWith =>
      __$NewsModalCopyWithImpl<_NewsModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsModalToJson(this);
  }
}

abstract class _NewsModal implements NewsModal {
  factory _NewsModal({@JsonKey(name: "data") NewsCollection? newsCollection}) =
      _$_NewsModal;

  factory _NewsModal.fromJson(Map<String, dynamic> json) =
      _$_NewsModal.fromJson;

  @override
  @JsonKey(name: "data")
  NewsCollection? get newsCollection => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsModalCopyWith<_NewsModal> get copyWith =>
      throw _privateConstructorUsedError;
}

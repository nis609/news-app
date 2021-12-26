// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsCollection _$NewsCollectionFromJson(Map<String, dynamic> json) {
  return _NewsCollection.fromJson(json);
}

/// @nodoc
class _$NewsCollectionTearOff {
  const _$NewsCollectionTearOff();

  _NewsCollection call(
      {@JsonKey(name: "news") NewsDetailModel? newsDetailModel}) {
    return _NewsCollection(
      newsDetailModel: newsDetailModel,
    );
  }

  NewsCollection fromJson(Map<String, Object> json) {
    return NewsCollection.fromJson(json);
  }
}

/// @nodoc
const $NewsCollection = _$NewsCollectionTearOff();

/// @nodoc
mixin _$NewsCollection {
  @JsonKey(name: "news")
  NewsDetailModel? get newsDetailModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCollectionCopyWith<NewsCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCollectionCopyWith<$Res> {
  factory $NewsCollectionCopyWith(
          NewsCollection value, $Res Function(NewsCollection) then) =
      _$NewsCollectionCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "news") NewsDetailModel? newsDetailModel});

  $NewsDetailModelCopyWith<$Res>? get newsDetailModel;
}

/// @nodoc
class _$NewsCollectionCopyWithImpl<$Res>
    implements $NewsCollectionCopyWith<$Res> {
  _$NewsCollectionCopyWithImpl(this._value, this._then);

  final NewsCollection _value;
  // ignore: unused_field
  final $Res Function(NewsCollection) _then;

  @override
  $Res call({
    Object? newsDetailModel = freezed,
  }) {
    return _then(_value.copyWith(
      newsDetailModel: newsDetailModel == freezed
          ? _value.newsDetailModel
          : newsDetailModel // ignore: cast_nullable_to_non_nullable
              as NewsDetailModel?,
    ));
  }

  @override
  $NewsDetailModelCopyWith<$Res>? get newsDetailModel {
    if (_value.newsDetailModel == null) {
      return null;
    }

    return $NewsDetailModelCopyWith<$Res>(_value.newsDetailModel!, (value) {
      return _then(_value.copyWith(newsDetailModel: value));
    });
  }
}

/// @nodoc
abstract class _$NewsCollectionCopyWith<$Res>
    implements $NewsCollectionCopyWith<$Res> {
  factory _$NewsCollectionCopyWith(
          _NewsCollection value, $Res Function(_NewsCollection) then) =
      __$NewsCollectionCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "news") NewsDetailModel? newsDetailModel});

  @override
  $NewsDetailModelCopyWith<$Res>? get newsDetailModel;
}

/// @nodoc
class __$NewsCollectionCopyWithImpl<$Res>
    extends _$NewsCollectionCopyWithImpl<$Res>
    implements _$NewsCollectionCopyWith<$Res> {
  __$NewsCollectionCopyWithImpl(
      _NewsCollection _value, $Res Function(_NewsCollection) _then)
      : super(_value, (v) => _then(v as _NewsCollection));

  @override
  _NewsCollection get _value => super._value as _NewsCollection;

  @override
  $Res call({
    Object? newsDetailModel = freezed,
  }) {
    return _then(_NewsCollection(
      newsDetailModel: newsDetailModel == freezed
          ? _value.newsDetailModel
          : newsDetailModel // ignore: cast_nullable_to_non_nullable
              as NewsDetailModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsCollection implements _NewsCollection {
  _$_NewsCollection({@JsonKey(name: "news") this.newsDetailModel});

  factory _$_NewsCollection.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsCollectionFromJson(json);

  @override
  @JsonKey(name: "news")
  final NewsDetailModel? newsDetailModel;

  @override
  String toString() {
    return 'NewsCollection(newsDetailModel: $newsDetailModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsCollection &&
            (identical(other.newsDetailModel, newsDetailModel) ||
                const DeepCollectionEquality()
                    .equals(other.newsDetailModel, newsDetailModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsDetailModel);

  @JsonKey(ignore: true)
  @override
  _$NewsCollectionCopyWith<_NewsCollection> get copyWith =>
      __$NewsCollectionCopyWithImpl<_NewsCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsCollectionToJson(this);
  }
}

abstract class _NewsCollection implements NewsCollection {
  factory _NewsCollection(
          {@JsonKey(name: "news") NewsDetailModel? newsDetailModel}) =
      _$_NewsCollection;

  factory _NewsCollection.fromJson(Map<String, dynamic> json) =
      _$_NewsCollection.fromJson;

  @override
  @JsonKey(name: "news")
  NewsDetailModel? get newsDetailModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsCollectionCopyWith<_NewsCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryContent _$CategoryContentFromJson(Map<String, dynamic> json) {
  return _CategoryContent.fromJson(json);
}

/// @nodoc
class _$CategoryContentTearOff {
  const _$CategoryContentTearOff();

  _CategoryContent call(
      {@JsonKey(name: "categoryContents")
          CategoryCollection? categoryCollection}) {
    return _CategoryContent(
      categoryCollection: categoryCollection,
    );
  }

  CategoryContent fromJson(Map<String, Object> json) {
    return CategoryContent.fromJson(json);
  }
}

/// @nodoc
const $CategoryContent = _$CategoryContentTearOff();

/// @nodoc
mixin _$CategoryContent {
  @JsonKey(name: "categoryContents")
  CategoryCollection? get categoryCollection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryContentCopyWith<CategoryContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryContentCopyWith<$Res> {
  factory $CategoryContentCopyWith(
          CategoryContent value, $Res Function(CategoryContent) then) =
      _$CategoryContentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "categoryContents")
          CategoryCollection? categoryCollection});

  $CategoryCollectionCopyWith<$Res>? get categoryCollection;
}

/// @nodoc
class _$CategoryContentCopyWithImpl<$Res>
    implements $CategoryContentCopyWith<$Res> {
  _$CategoryContentCopyWithImpl(this._value, this._then);

  final CategoryContent _value;
  // ignore: unused_field
  final $Res Function(CategoryContent) _then;

  @override
  $Res call({
    Object? categoryCollection = freezed,
  }) {
    return _then(_value.copyWith(
      categoryCollection: categoryCollection == freezed
          ? _value.categoryCollection
          : categoryCollection // ignore: cast_nullable_to_non_nullable
              as CategoryCollection?,
    ));
  }

  @override
  $CategoryCollectionCopyWith<$Res>? get categoryCollection {
    if (_value.categoryCollection == null) {
      return null;
    }

    return $CategoryCollectionCopyWith<$Res>(_value.categoryCollection!,
        (value) {
      return _then(_value.copyWith(categoryCollection: value));
    });
  }
}

/// @nodoc
abstract class _$CategoryContentCopyWith<$Res>
    implements $CategoryContentCopyWith<$Res> {
  factory _$CategoryContentCopyWith(
          _CategoryContent value, $Res Function(_CategoryContent) then) =
      __$CategoryContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "categoryContents")
          CategoryCollection? categoryCollection});

  @override
  $CategoryCollectionCopyWith<$Res>? get categoryCollection;
}

/// @nodoc
class __$CategoryContentCopyWithImpl<$Res>
    extends _$CategoryContentCopyWithImpl<$Res>
    implements _$CategoryContentCopyWith<$Res> {
  __$CategoryContentCopyWithImpl(
      _CategoryContent _value, $Res Function(_CategoryContent) _then)
      : super(_value, (v) => _then(v as _CategoryContent));

  @override
  _CategoryContent get _value => super._value as _CategoryContent;

  @override
  $Res call({
    Object? categoryCollection = freezed,
  }) {
    return _then(_CategoryContent(
      categoryCollection: categoryCollection == freezed
          ? _value.categoryCollection
          : categoryCollection // ignore: cast_nullable_to_non_nullable
              as CategoryCollection?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryContent implements _CategoryContent {
  _$_CategoryContent(
      {@JsonKey(name: "categoryContents") this.categoryCollection});

  factory _$_CategoryContent.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryContentFromJson(json);

  @override
  @JsonKey(name: "categoryContents")
  final CategoryCollection? categoryCollection;

  @override
  String toString() {
    return 'CategoryContent(categoryCollection: $categoryCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryContent &&
            (identical(other.categoryCollection, categoryCollection) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCollection, categoryCollection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryCollection);

  @JsonKey(ignore: true)
  @override
  _$CategoryContentCopyWith<_CategoryContent> get copyWith =>
      __$CategoryContentCopyWithImpl<_CategoryContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryContentToJson(this);
  }
}

abstract class _CategoryContent implements CategoryContent {
  factory _CategoryContent(
      {@JsonKey(name: "categoryContents")
          CategoryCollection? categoryCollection}) = _$_CategoryContent;

  factory _CategoryContent.fromJson(Map<String, dynamic> json) =
      _$_CategoryContent.fromJson;

  @override
  @JsonKey(name: "categoryContents")
  CategoryCollection? get categoryCollection =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryContentCopyWith<_CategoryContent> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryCollection _$CategoryCollectionFromJson(Map<String, dynamic> json) {
  return _CategoryCollection.fromJson(json);
}

/// @nodoc
class _$CategoryCollectionTearOff {
  const _$CategoryCollectionTearOff();

  _CategoryCollection call(
      {@JsonKey(name: 'current_page')
          int? id,
      @JsonKey(name: 'total')
          int? category_name,
      @JsonKey(name: 'perPage')
          int? nepali_title,
      @JsonKey(name: 'lastPage')
          int? category_url,
      @JsonKey(name: "categoryContents")
          List<CategoryContentData>? CategoryDetailModel}) {
    return _CategoryCollection(
      id: id,
      category_name: category_name,
      nepali_title: nepali_title,
      category_url: category_url,
      CategoryDetailModel: CategoryDetailModel,
    );
  }

  CategoryCollection fromJson(Map<String, Object> json) {
    return CategoryCollection.fromJson(json);
  }
}

/// @nodoc
const $CategoryCollection = _$CategoryCollectionTearOff();

/// @nodoc
mixin _$CategoryCollection {
  @JsonKey(name: 'current_page')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get category_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'perPage')
  int? get nepali_title => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastPage')
  int? get category_url => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryContents")
  List<CategoryContentData>? get CategoryDetailModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCollectionCopyWith<CategoryCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCollectionCopyWith<$Res> {
  factory $CategoryCollectionCopyWith(
          CategoryCollection value, $Res Function(CategoryCollection) then) =
      _$CategoryCollectionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page')
          int? id,
      @JsonKey(name: 'total')
          int? category_name,
      @JsonKey(name: 'perPage')
          int? nepali_title,
      @JsonKey(name: 'lastPage')
          int? category_url,
      @JsonKey(name: "categoryContents")
          List<CategoryContentData>? CategoryDetailModel});
}

/// @nodoc
class _$CategoryCollectionCopyWithImpl<$Res>
    implements $CategoryCollectionCopyWith<$Res> {
  _$CategoryCollectionCopyWithImpl(this._value, this._then);

  final CategoryCollection _value;
  // ignore: unused_field
  final $Res Function(CategoryCollection) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_name = freezed,
    Object? nepali_title = freezed,
    Object? category_url = freezed,
    Object? CategoryDetailModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_name: category_name == freezed
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as int?,
      nepali_title: nepali_title == freezed
          ? _value.nepali_title
          : nepali_title // ignore: cast_nullable_to_non_nullable
              as int?,
      category_url: category_url == freezed
          ? _value.category_url
          : category_url // ignore: cast_nullable_to_non_nullable
              as int?,
      CategoryDetailModel: CategoryDetailModel == freezed
          ? _value.CategoryDetailModel
          : CategoryDetailModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryContentData>?,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCollectionCopyWith<$Res>
    implements $CategoryCollectionCopyWith<$Res> {
  factory _$CategoryCollectionCopyWith(
          _CategoryCollection value, $Res Function(_CategoryCollection) then) =
      __$CategoryCollectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page')
          int? id,
      @JsonKey(name: 'total')
          int? category_name,
      @JsonKey(name: 'perPage')
          int? nepali_title,
      @JsonKey(name: 'lastPage')
          int? category_url,
      @JsonKey(name: "categoryContents")
          List<CategoryContentData>? CategoryDetailModel});
}

/// @nodoc
class __$CategoryCollectionCopyWithImpl<$Res>
    extends _$CategoryCollectionCopyWithImpl<$Res>
    implements _$CategoryCollectionCopyWith<$Res> {
  __$CategoryCollectionCopyWithImpl(
      _CategoryCollection _value, $Res Function(_CategoryCollection) _then)
      : super(_value, (v) => _then(v as _CategoryCollection));

  @override
  _CategoryCollection get _value => super._value as _CategoryCollection;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_name = freezed,
    Object? nepali_title = freezed,
    Object? category_url = freezed,
    Object? CategoryDetailModel = freezed,
  }) {
    return _then(_CategoryCollection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_name: category_name == freezed
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as int?,
      nepali_title: nepali_title == freezed
          ? _value.nepali_title
          : nepali_title // ignore: cast_nullable_to_non_nullable
              as int?,
      category_url: category_url == freezed
          ? _value.category_url
          : category_url // ignore: cast_nullable_to_non_nullable
              as int?,
      CategoryDetailModel: CategoryDetailModel == freezed
          ? _value.CategoryDetailModel
          : CategoryDetailModel // ignore: cast_nullable_to_non_nullable
              as List<CategoryContentData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryCollection implements _CategoryCollection {
  _$_CategoryCollection(
      {@JsonKey(name: 'current_page') this.id,
      @JsonKey(name: 'total') this.category_name,
      @JsonKey(name: 'perPage') this.nepali_title,
      @JsonKey(name: 'lastPage') this.category_url,
      @JsonKey(name: "categoryContents") this.CategoryDetailModel});

  factory _$_CategoryCollection.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryCollectionFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? id;
  @override
  @JsonKey(name: 'total')
  final int? category_name;
  @override
  @JsonKey(name: 'perPage')
  final int? nepali_title;
  @override
  @JsonKey(name: 'lastPage')
  final int? category_url;
  @override
  @JsonKey(name: "categoryContents")
  final List<CategoryContentData>? CategoryDetailModel;

  @override
  String toString() {
    return 'CategoryCollection(id: $id, category_name: $category_name, nepali_title: $nepali_title, category_url: $category_url, CategoryDetailModel: $CategoryDetailModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryCollection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.category_name, category_name) ||
                const DeepCollectionEquality()
                    .equals(other.category_name, category_name)) &&
            (identical(other.nepali_title, nepali_title) ||
                const DeepCollectionEquality()
                    .equals(other.nepali_title, nepali_title)) &&
            (identical(other.category_url, category_url) ||
                const DeepCollectionEquality()
                    .equals(other.category_url, category_url)) &&
            (identical(other.CategoryDetailModel, CategoryDetailModel) ||
                const DeepCollectionEquality()
                    .equals(other.CategoryDetailModel, CategoryDetailModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(category_name) ^
      const DeepCollectionEquality().hash(nepali_title) ^
      const DeepCollectionEquality().hash(category_url) ^
      const DeepCollectionEquality().hash(CategoryDetailModel);

  @JsonKey(ignore: true)
  @override
  _$CategoryCollectionCopyWith<_CategoryCollection> get copyWith =>
      __$CategoryCollectionCopyWithImpl<_CategoryCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryCollectionToJson(this);
  }
}

abstract class _CategoryCollection implements CategoryCollection {
  factory _CategoryCollection(
          {@JsonKey(name: 'current_page')
              int? id,
          @JsonKey(name: 'total')
              int? category_name,
          @JsonKey(name: 'perPage')
              int? nepali_title,
          @JsonKey(name: 'lastPage')
              int? category_url,
          @JsonKey(name: "categoryContents")
              List<CategoryContentData>? CategoryDetailModel}) =
      _$_CategoryCollection;

  factory _CategoryCollection.fromJson(Map<String, dynamic> json) =
      _$_CategoryCollection.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total')
  int? get category_name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'perPage')
  int? get nepali_title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lastPage')
  int? get category_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "categoryContents")
  List<CategoryContentData>? get CategoryDetailModel =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryCollectionCopyWith<_CategoryCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

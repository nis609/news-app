// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NavigationCategories _$NavigationCategoriesFromJson(Map<String, dynamic> json) {
  return _NavigationCategories.fromJson(json);
}

/// @nodoc
class _$NavigationCategoriesTearOff {
  const _$NavigationCategoriesTearOff();

  _NavigationCategories call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_name") String? category_name,
      @JsonKey(name: "category_url") String? category_url,
      @JsonKey(name: "nepali_title") String? nepali_title}) {
    return _NavigationCategories(
      id: id,
      category_name: category_name,
      category_url: category_url,
      nepali_title: nepali_title,
    );
  }

  NavigationCategories fromJson(Map<String, Object> json) {
    return NavigationCategories.fromJson(json);
  }
}

/// @nodoc
const $NavigationCategories = _$NavigationCategoriesTearOff();

/// @nodoc
mixin _$NavigationCategories {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get category_name => throw _privateConstructorUsedError;
  @JsonKey(name: "category_url")
  String? get category_url => throw _privateConstructorUsedError;
  @JsonKey(name: "nepali_title")
  String? get nepali_title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationCategoriesCopyWith<NavigationCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationCategoriesCopyWith<$Res> {
  factory $NavigationCategoriesCopyWith(NavigationCategories value,
          $Res Function(NavigationCategories) then) =
      _$NavigationCategoriesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_name") String? category_name,
      @JsonKey(name: "category_url") String? category_url,
      @JsonKey(name: "nepali_title") String? nepali_title});
}

/// @nodoc
class _$NavigationCategoriesCopyWithImpl<$Res>
    implements $NavigationCategoriesCopyWith<$Res> {
  _$NavigationCategoriesCopyWithImpl(this._value, this._then);

  final NavigationCategories _value;
  // ignore: unused_field
  final $Res Function(NavigationCategories) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_name = freezed,
    Object? category_url = freezed,
    Object? nepali_title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_name: category_name == freezed
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String?,
      category_url: category_url == freezed
          ? _value.category_url
          : category_url // ignore: cast_nullable_to_non_nullable
              as String?,
      nepali_title: nepali_title == freezed
          ? _value.nepali_title
          : nepali_title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NavigationCategoriesCopyWith<$Res>
    implements $NavigationCategoriesCopyWith<$Res> {
  factory _$NavigationCategoriesCopyWith(_NavigationCategories value,
          $Res Function(_NavigationCategories) then) =
      __$NavigationCategoriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_name") String? category_name,
      @JsonKey(name: "category_url") String? category_url,
      @JsonKey(name: "nepali_title") String? nepali_title});
}

/// @nodoc
class __$NavigationCategoriesCopyWithImpl<$Res>
    extends _$NavigationCategoriesCopyWithImpl<$Res>
    implements _$NavigationCategoriesCopyWith<$Res> {
  __$NavigationCategoriesCopyWithImpl(
      _NavigationCategories _value, $Res Function(_NavigationCategories) _then)
      : super(_value, (v) => _then(v as _NavigationCategories));

  @override
  _NavigationCategories get _value => super._value as _NavigationCategories;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_name = freezed,
    Object? category_url = freezed,
    Object? nepali_title = freezed,
  }) {
    return _then(_NavigationCategories(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_name: category_name == freezed
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String?,
      category_url: category_url == freezed
          ? _value.category_url
          : category_url // ignore: cast_nullable_to_non_nullable
              as String?,
      nepali_title: nepali_title == freezed
          ? _value.nepali_title
          : nepali_title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NavigationCategories implements _NavigationCategories {
  _$_NavigationCategories(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "category_name") this.category_name,
      @JsonKey(name: "category_url") this.category_url,
      @JsonKey(name: "nepali_title") this.nepali_title});

  factory _$_NavigationCategories.fromJson(Map<String, dynamic> json) =>
      _$_$_NavigationCategoriesFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "category_name")
  final String? category_name;
  @override
  @JsonKey(name: "category_url")
  final String? category_url;
  @override
  @JsonKey(name: "nepali_title")
  final String? nepali_title;

  @override
  String toString() {
    return 'NavigationCategories(id: $id, category_name: $category_name, category_url: $category_url, nepali_title: $nepali_title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationCategories &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.category_name, category_name) ||
                const DeepCollectionEquality()
                    .equals(other.category_name, category_name)) &&
            (identical(other.category_url, category_url) ||
                const DeepCollectionEquality()
                    .equals(other.category_url, category_url)) &&
            (identical(other.nepali_title, nepali_title) ||
                const DeepCollectionEquality()
                    .equals(other.nepali_title, nepali_title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(category_name) ^
      const DeepCollectionEquality().hash(category_url) ^
      const DeepCollectionEquality().hash(nepali_title);

  @JsonKey(ignore: true)
  @override
  _$NavigationCategoriesCopyWith<_NavigationCategories> get copyWith =>
      __$NavigationCategoriesCopyWithImpl<_NavigationCategories>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NavigationCategoriesToJson(this);
  }
}

abstract class _NavigationCategories implements NavigationCategories {
  factory _NavigationCategories(
          {@JsonKey(name: "id") int? id,
          @JsonKey(name: "category_name") String? category_name,
          @JsonKey(name: "category_url") String? category_url,
          @JsonKey(name: "nepali_title") String? nepali_title}) =
      _$_NavigationCategories;

  factory _NavigationCategories.fromJson(Map<String, dynamic> json) =
      _$_NavigationCategories.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_name")
  String? get category_name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_url")
  String? get category_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "nepali_title")
  String? get nepali_title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavigationCategoriesCopyWith<_NavigationCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

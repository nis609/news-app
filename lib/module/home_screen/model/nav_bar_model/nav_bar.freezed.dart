// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nav_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NavBar _$NavBarFromJson(Map<String, dynamic> json) {
  return _NavBar.fromJson(json);
}

/// @nodoc
class _$NavBarTearOff {
  const _$NavBarTearOff();

  _NavBar call(
      {@JsonKey(name: "data")
          List<NavigationCategories>? navigationCategories}) {
    return _NavBar(
      navigationCategories: navigationCategories,
    );
  }

  NavBar fromJson(Map<String, Object> json) {
    return NavBar.fromJson(json);
  }
}

/// @nodoc
const $NavBar = _$NavBarTearOff();

/// @nodoc
mixin _$NavBar {
  @JsonKey(name: "data")
  List<NavigationCategories>? get navigationCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavBarCopyWith<NavBar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavBarCopyWith<$Res> {
  factory $NavBarCopyWith(NavBar value, $Res Function(NavBar) then) =
      _$NavBarCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "data")
          List<NavigationCategories>? navigationCategories});
}

/// @nodoc
class _$NavBarCopyWithImpl<$Res> implements $NavBarCopyWith<$Res> {
  _$NavBarCopyWithImpl(this._value, this._then);

  final NavBar _value;
  // ignore: unused_field
  final $Res Function(NavBar) _then;

  @override
  $Res call({
    Object? navigationCategories = freezed,
  }) {
    return _then(_value.copyWith(
      navigationCategories: navigationCategories == freezed
          ? _value.navigationCategories
          : navigationCategories // ignore: cast_nullable_to_non_nullable
              as List<NavigationCategories>?,
    ));
  }
}

/// @nodoc
abstract class _$NavBarCopyWith<$Res> implements $NavBarCopyWith<$Res> {
  factory _$NavBarCopyWith(_NavBar value, $Res Function(_NavBar) then) =
      __$NavBarCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "data")
          List<NavigationCategories>? navigationCategories});
}

/// @nodoc
class __$NavBarCopyWithImpl<$Res> extends _$NavBarCopyWithImpl<$Res>
    implements _$NavBarCopyWith<$Res> {
  __$NavBarCopyWithImpl(_NavBar _value, $Res Function(_NavBar) _then)
      : super(_value, (v) => _then(v as _NavBar));

  @override
  _NavBar get _value => super._value as _NavBar;

  @override
  $Res call({
    Object? navigationCategories = freezed,
  }) {
    return _then(_NavBar(
      navigationCategories: navigationCategories == freezed
          ? _value.navigationCategories
          : navigationCategories // ignore: cast_nullable_to_non_nullable
              as List<NavigationCategories>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NavBar implements _NavBar {
  _$_NavBar({@JsonKey(name: "data") this.navigationCategories});

  factory _$_NavBar.fromJson(Map<String, dynamic> json) =>
      _$_$_NavBarFromJson(json);

  @override
  @JsonKey(name: "data")
  final List<NavigationCategories>? navigationCategories;

  @override
  String toString() {
    return 'NavBar(navigationCategories: $navigationCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavBar &&
            (identical(other.navigationCategories, navigationCategories) ||
                const DeepCollectionEquality()
                    .equals(other.navigationCategories, navigationCategories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigationCategories);

  @JsonKey(ignore: true)
  @override
  _$NavBarCopyWith<_NavBar> get copyWith =>
      __$NavBarCopyWithImpl<_NavBar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NavBarToJson(this);
  }
}

abstract class _NavBar implements NavBar {
  factory _NavBar(
      {@JsonKey(name: "data")
          List<NavigationCategories>? navigationCategories}) = _$_NavBar;

  factory _NavBar.fromJson(Map<String, dynamic> json) = _$_NavBar.fromJson;

  @override
  @JsonKey(name: "data")
  List<NavigationCategories>? get navigationCategories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavBarCopyWith<_NavBar> get copyWith => throw _privateConstructorUsedError;
}

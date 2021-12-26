// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
class _$HomeModelTearOff {
  const _$HomeModelTearOff();

  _HomeModel call({@JsonKey(name: "data") HomePageData? homePageData}) {
    return _HomeModel(
      homePageData: homePageData,
    );
  }

  HomeModel fromJson(Map<String, Object> json) {
    return HomeModel.fromJson(json);
  }
}

/// @nodoc
const $HomeModel = _$HomeModelTearOff();

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: "data")
  HomePageData? get homePageData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "data") HomePageData? homePageData});

  $HomePageDataCopyWith<$Res>? get homePageData;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res> implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  final HomeModel _value;
  // ignore: unused_field
  final $Res Function(HomeModel) _then;

  @override
  $Res call({
    Object? homePageData = freezed,
  }) {
    return _then(_value.copyWith(
      homePageData: homePageData == freezed
          ? _value.homePageData
          : homePageData // ignore: cast_nullable_to_non_nullable
              as HomePageData?,
    ));
  }

  @override
  $HomePageDataCopyWith<$Res>? get homePageData {
    if (_value.homePageData == null) {
      return null;
    }

    return $HomePageDataCopyWith<$Res>(_value.homePageData!, (value) {
      return _then(_value.copyWith(homePageData: value));
    });
  }
}

/// @nodoc
abstract class _$HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$HomeModelCopyWith(
          _HomeModel value, $Res Function(_HomeModel) then) =
      __$HomeModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "data") HomePageData? homePageData});

  @override
  $HomePageDataCopyWith<$Res>? get homePageData;
}

/// @nodoc
class __$HomeModelCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements _$HomeModelCopyWith<$Res> {
  __$HomeModelCopyWithImpl(_HomeModel _value, $Res Function(_HomeModel) _then)
      : super(_value, (v) => _then(v as _HomeModel));

  @override
  _HomeModel get _value => super._value as _HomeModel;

  @override
  $Res call({
    Object? homePageData = freezed,
  }) {
    return _then(_HomeModel(
      homePageData: homePageData == freezed
          ? _value.homePageData
          : homePageData // ignore: cast_nullable_to_non_nullable
              as HomePageData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeModel implements _HomeModel {
  _$_HomeModel({@JsonKey(name: "data") this.homePageData});

  factory _$_HomeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeModelFromJson(json);

  @override
  @JsonKey(name: "data")
  final HomePageData? homePageData;

  @override
  String toString() {
    return 'HomeModel(homePageData: $homePageData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeModel &&
            (identical(other.homePageData, homePageData) ||
                const DeepCollectionEquality()
                    .equals(other.homePageData, homePageData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homePageData);

  @JsonKey(ignore: true)
  @override
  _$HomeModelCopyWith<_HomeModel> get copyWith =>
      __$HomeModelCopyWithImpl<_HomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeModelToJson(this);
  }
}

abstract class _HomeModel implements HomeModel {
  factory _HomeModel({@JsonKey(name: "data") HomePageData? homePageData}) =
      _$_HomeModel;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$_HomeModel.fromJson;

  @override
  @JsonKey(name: "data")
  HomePageData? get homePageData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeModelCopyWith<_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

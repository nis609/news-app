// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Categorymodal _$CategorymodalFromJson(Map<String, dynamic> json) {
  return _Categorymodal.fromJson(json);
}

/// @nodoc
class _$CategorymodalTearOff {
  const _$CategorymodalTearOff();

  _Categorymodal call(
      {@JsonKey(name: "data") CategoryContent? categoryContent}) {
    return _Categorymodal(
      categoryContent: categoryContent,
    );
  }

  Categorymodal fromJson(Map<String, Object> json) {
    return Categorymodal.fromJson(json);
  }
}

/// @nodoc
const $Categorymodal = _$CategorymodalTearOff();

/// @nodoc
mixin _$Categorymodal {
  @JsonKey(name: "data")
  CategoryContent? get categoryContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorymodalCopyWith<Categorymodal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorymodalCopyWith<$Res> {
  factory $CategorymodalCopyWith(
          Categorymodal value, $Res Function(Categorymodal) then) =
      _$CategorymodalCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "data") CategoryContent? categoryContent});

  $CategoryContentCopyWith<$Res>? get categoryContent;
}

/// @nodoc
class _$CategorymodalCopyWithImpl<$Res>
    implements $CategorymodalCopyWith<$Res> {
  _$CategorymodalCopyWithImpl(this._value, this._then);

  final Categorymodal _value;
  // ignore: unused_field
  final $Res Function(Categorymodal) _then;

  @override
  $Res call({
    Object? categoryContent = freezed,
  }) {
    return _then(_value.copyWith(
      categoryContent: categoryContent == freezed
          ? _value.categoryContent
          : categoryContent // ignore: cast_nullable_to_non_nullable
              as CategoryContent?,
    ));
  }

  @override
  $CategoryContentCopyWith<$Res>? get categoryContent {
    if (_value.categoryContent == null) {
      return null;
    }

    return $CategoryContentCopyWith<$Res>(_value.categoryContent!, (value) {
      return _then(_value.copyWith(categoryContent: value));
    });
  }
}

/// @nodoc
abstract class _$CategorymodalCopyWith<$Res>
    implements $CategorymodalCopyWith<$Res> {
  factory _$CategorymodalCopyWith(
          _Categorymodal value, $Res Function(_Categorymodal) then) =
      __$CategorymodalCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "data") CategoryContent? categoryContent});

  @override
  $CategoryContentCopyWith<$Res>? get categoryContent;
}

/// @nodoc
class __$CategorymodalCopyWithImpl<$Res>
    extends _$CategorymodalCopyWithImpl<$Res>
    implements _$CategorymodalCopyWith<$Res> {
  __$CategorymodalCopyWithImpl(
      _Categorymodal _value, $Res Function(_Categorymodal) _then)
      : super(_value, (v) => _then(v as _Categorymodal));

  @override
  _Categorymodal get _value => super._value as _Categorymodal;

  @override
  $Res call({
    Object? categoryContent = freezed,
  }) {
    return _then(_Categorymodal(
      categoryContent: categoryContent == freezed
          ? _value.categoryContent
          : categoryContent // ignore: cast_nullable_to_non_nullable
              as CategoryContent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Categorymodal implements _Categorymodal {
  _$_Categorymodal({@JsonKey(name: "data") this.categoryContent});

  factory _$_Categorymodal.fromJson(Map<String, dynamic> json) =>
      _$_$_CategorymodalFromJson(json);

  @override
  @JsonKey(name: "data")
  final CategoryContent? categoryContent;

  @override
  String toString() {
    return 'Categorymodal(categoryContent: $categoryContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Categorymodal &&
            (identical(other.categoryContent, categoryContent) ||
                const DeepCollectionEquality()
                    .equals(other.categoryContent, categoryContent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryContent);

  @JsonKey(ignore: true)
  @override
  _$CategorymodalCopyWith<_Categorymodal> get copyWith =>
      __$CategorymodalCopyWithImpl<_Categorymodal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategorymodalToJson(this);
  }
}

abstract class _Categorymodal implements Categorymodal {
  factory _Categorymodal(
          {@JsonKey(name: "data") CategoryContent? categoryContent}) =
      _$_Categorymodal;

  factory _Categorymodal.fromJson(Map<String, dynamic> json) =
      _$_Categorymodal.fromJson;

  @override
  @JsonKey(name: "data")
  CategoryContent? get categoryContent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategorymodalCopyWith<_Categorymodal> get copyWith =>
      throw _privateConstructorUsedError;
}

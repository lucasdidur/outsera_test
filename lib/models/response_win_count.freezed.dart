// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_win_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseWinCount _$ResponseWinCountFromJson(Map<String, dynamic> json) {
  return _ResponseWinCount.fromJson(json);
}

/// @nodoc
mixin _$ResponseWinCount {
  List<Studio> get studios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseWinCountCopyWith<ResponseWinCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWinCountCopyWith<$Res> {
  factory $ResponseWinCountCopyWith(
          ResponseWinCount value, $Res Function(ResponseWinCount) then) =
      _$ResponseWinCountCopyWithImpl<$Res, ResponseWinCount>;
  @useResult
  $Res call({List<Studio> studios});
}

/// @nodoc
class _$ResponseWinCountCopyWithImpl<$Res, $Val extends ResponseWinCount>
    implements $ResponseWinCountCopyWith<$Res> {
  _$ResponseWinCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studios = null,
  }) {
    return _then(_value.copyWith(
      studios: null == studios
          ? _value.studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<Studio>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseWinCountImplCopyWith<$Res>
    implements $ResponseWinCountCopyWith<$Res> {
  factory _$$ResponseWinCountImplCopyWith(_$ResponseWinCountImpl value,
          $Res Function(_$ResponseWinCountImpl) then) =
      __$$ResponseWinCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Studio> studios});
}

/// @nodoc
class __$$ResponseWinCountImplCopyWithImpl<$Res>
    extends _$ResponseWinCountCopyWithImpl<$Res, _$ResponseWinCountImpl>
    implements _$$ResponseWinCountImplCopyWith<$Res> {
  __$$ResponseWinCountImplCopyWithImpl(_$ResponseWinCountImpl _value,
      $Res Function(_$ResponseWinCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studios = null,
  }) {
    return _then(_$ResponseWinCountImpl(
      studios: null == studios
          ? _value._studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<Studio>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseWinCountImpl implements _ResponseWinCount {
  const _$ResponseWinCountImpl({required final List<Studio> studios})
      : _studios = studios;

  factory _$ResponseWinCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseWinCountImplFromJson(json);

  final List<Studio> _studios;
  @override
  List<Studio> get studios {
    if (_studios is EqualUnmodifiableListView) return _studios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studios);
  }

  @override
  String toString() {
    return 'ResponseWinCount(studios: $studios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseWinCountImpl &&
            const DeepCollectionEquality().equals(other._studios, _studios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_studios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseWinCountImplCopyWith<_$ResponseWinCountImpl> get copyWith =>
      __$$ResponseWinCountImplCopyWithImpl<_$ResponseWinCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseWinCountImplToJson(
      this,
    );
  }
}

abstract class _ResponseWinCount implements ResponseWinCount {
  const factory _ResponseWinCount({required final List<Studio> studios}) =
      _$ResponseWinCountImpl;

  factory _ResponseWinCount.fromJson(Map<String, dynamic> json) =
      _$ResponseWinCountImpl.fromJson;

  @override
  List<Studio> get studios;
  @override
  @JsonKey(ignore: true)
  _$$ResponseWinCountImplCopyWith<_$ResponseWinCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Studio _$StudioFromJson(Map<String, dynamic> json) {
  return _Studio.fromJson(json);
}

/// @nodoc
mixin _$Studio {
  String get name => throw _privateConstructorUsedError;
  int get winCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudioCopyWith<Studio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioCopyWith<$Res> {
  factory $StudioCopyWith(Studio value, $Res Function(Studio) then) =
      _$StudioCopyWithImpl<$Res, Studio>;
  @useResult
  $Res call({String name, int winCount});
}

/// @nodoc
class _$StudioCopyWithImpl<$Res, $Val extends Studio>
    implements $StudioCopyWith<$Res> {
  _$StudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? winCount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      winCount: null == winCount
          ? _value.winCount
          : winCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudioImplCopyWith<$Res> implements $StudioCopyWith<$Res> {
  factory _$$StudioImplCopyWith(
          _$StudioImpl value, $Res Function(_$StudioImpl) then) =
      __$$StudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int winCount});
}

/// @nodoc
class __$$StudioImplCopyWithImpl<$Res>
    extends _$StudioCopyWithImpl<$Res, _$StudioImpl>
    implements _$$StudioImplCopyWith<$Res> {
  __$$StudioImplCopyWithImpl(
      _$StudioImpl _value, $Res Function(_$StudioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? winCount = null,
  }) {
    return _then(_$StudioImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      winCount: null == winCount
          ? _value.winCount
          : winCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudioImpl implements _Studio {
  const _$StudioImpl({required this.name, required this.winCount});

  factory _$StudioImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudioImplFromJson(json);

  @override
  final String name;
  @override
  final int winCount;

  @override
  String toString() {
    return 'Studio(name: $name, winCount: $winCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudioImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.winCount, winCount) ||
                other.winCount == winCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, winCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudioImplCopyWith<_$StudioImpl> get copyWith =>
      __$$StudioImplCopyWithImpl<_$StudioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudioImplToJson(
      this,
    );
  }
}

abstract class _Studio implements Studio {
  const factory _Studio(
      {required final String name, required final int winCount}) = _$StudioImpl;

  factory _Studio.fromJson(Map<String, dynamic> json) = _$StudioImpl.fromJson;

  @override
  String get name;
  @override
  int get winCount;
  @override
  @JsonKey(ignore: true)
  _$$StudioImplCopyWith<_$StudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

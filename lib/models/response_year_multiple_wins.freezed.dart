// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_year_multiple_wins.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseYearMultipleWins _$ResponseYearMultipleWinsFromJson(
    Map<String, dynamic> json) {
  return _ResponseYearMultipleWins.fromJson(json);
}

/// @nodoc
mixin _$ResponseYearMultipleWins {
  List<Year> get years => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseYearMultipleWinsCopyWith<ResponseYearMultipleWins> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseYearMultipleWinsCopyWith<$Res> {
  factory $ResponseYearMultipleWinsCopyWith(ResponseYearMultipleWins value,
          $Res Function(ResponseYearMultipleWins) then) =
      _$ResponseYearMultipleWinsCopyWithImpl<$Res, ResponseYearMultipleWins>;
  @useResult
  $Res call({List<Year> years});
}

/// @nodoc
class _$ResponseYearMultipleWinsCopyWithImpl<$Res,
        $Val extends ResponseYearMultipleWins>
    implements $ResponseYearMultipleWinsCopyWith<$Res> {
  _$ResponseYearMultipleWinsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = null,
  }) {
    return _then(_value.copyWith(
      years: null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as List<Year>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseYearMultipleWinsImplCopyWith<$Res>
    implements $ResponseYearMultipleWinsCopyWith<$Res> {
  factory _$$ResponseYearMultipleWinsImplCopyWith(
          _$ResponseYearMultipleWinsImpl value,
          $Res Function(_$ResponseYearMultipleWinsImpl) then) =
      __$$ResponseYearMultipleWinsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Year> years});
}

/// @nodoc
class __$$ResponseYearMultipleWinsImplCopyWithImpl<$Res>
    extends _$ResponseYearMultipleWinsCopyWithImpl<$Res,
        _$ResponseYearMultipleWinsImpl>
    implements _$$ResponseYearMultipleWinsImplCopyWith<$Res> {
  __$$ResponseYearMultipleWinsImplCopyWithImpl(
      _$ResponseYearMultipleWinsImpl _value,
      $Res Function(_$ResponseYearMultipleWinsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = null,
  }) {
    return _then(_$ResponseYearMultipleWinsImpl(
      years: null == years
          ? _value._years
          : years // ignore: cast_nullable_to_non_nullable
              as List<Year>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseYearMultipleWinsImpl implements _ResponseYearMultipleWins {
  const _$ResponseYearMultipleWinsImpl({required final List<Year> years})
      : _years = years;

  factory _$ResponseYearMultipleWinsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseYearMultipleWinsImplFromJson(json);

  final List<Year> _years;
  @override
  List<Year> get years {
    if (_years is EqualUnmodifiableListView) return _years;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_years);
  }

  @override
  String toString() {
    return 'ResponseYearMultipleWins(years: $years)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseYearMultipleWinsImpl &&
            const DeepCollectionEquality().equals(other._years, _years));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_years));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseYearMultipleWinsImplCopyWith<_$ResponseYearMultipleWinsImpl>
      get copyWith => __$$ResponseYearMultipleWinsImplCopyWithImpl<
          _$ResponseYearMultipleWinsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseYearMultipleWinsImplToJson(
      this,
    );
  }
}

abstract class _ResponseYearMultipleWins implements ResponseYearMultipleWins {
  const factory _ResponseYearMultipleWins({required final List<Year> years}) =
      _$ResponseYearMultipleWinsImpl;

  factory _ResponseYearMultipleWins.fromJson(Map<String, dynamic> json) =
      _$ResponseYearMultipleWinsImpl.fromJson;

  @override
  List<Year> get years;
  @override
  @JsonKey(ignore: true)
  _$$ResponseYearMultipleWinsImplCopyWith<_$ResponseYearMultipleWinsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Year _$YearFromJson(Map<String, dynamic> json) {
  return _Year.fromJson(json);
}

/// @nodoc
mixin _$Year {
  int get year => throw _privateConstructorUsedError;
  int get winnerCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YearCopyWith<Year> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearCopyWith<$Res> {
  factory $YearCopyWith(Year value, $Res Function(Year) then) =
      _$YearCopyWithImpl<$Res, Year>;
  @useResult
  $Res call({int year, int winnerCount});
}

/// @nodoc
class _$YearCopyWithImpl<$Res, $Val extends Year>
    implements $YearCopyWith<$Res> {
  _$YearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? winnerCount = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      winnerCount: null == winnerCount
          ? _value.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearImplCopyWith<$Res> implements $YearCopyWith<$Res> {
  factory _$$YearImplCopyWith(
          _$YearImpl value, $Res Function(_$YearImpl) then) =
      __$$YearImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int winnerCount});
}

/// @nodoc
class __$$YearImplCopyWithImpl<$Res>
    extends _$YearCopyWithImpl<$Res, _$YearImpl>
    implements _$$YearImplCopyWith<$Res> {
  __$$YearImplCopyWithImpl(_$YearImpl _value, $Res Function(_$YearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? winnerCount = null,
  }) {
    return _then(_$YearImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      winnerCount: null == winnerCount
          ? _value.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YearImpl implements _Year {
  const _$YearImpl({required this.year, required this.winnerCount});

  factory _$YearImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearImplFromJson(json);

  @override
  final int year;
  @override
  final int winnerCount;

  @override
  String toString() {
    return 'Year(year: $year, winnerCount: $winnerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.winnerCount, winnerCount) ||
                other.winnerCount == winnerCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, winnerCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YearImplCopyWith<_$YearImpl> get copyWith =>
      __$$YearImplCopyWithImpl<_$YearImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearImplToJson(
      this,
    );
  }
}

abstract class _Year implements Year {
  const factory _Year(
      {required final int year, required final int winnerCount}) = _$YearImpl;

  factory _Year.fromJson(Map<String, dynamic> json) = _$YearImpl.fromJson;

  @override
  int get year;
  @override
  int get winnerCount;
  @override
  @JsonKey(ignore: true)
  _$$YearImplCopyWith<_$YearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

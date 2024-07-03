// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_interval_wins.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseIntervalWins _$ResponseIntervalWinsFromJson(Map<String, dynamic> json) {
  return _ResponseIntervalWins.fromJson(json);
}

/// @nodoc
mixin _$ResponseIntervalWins {
  List<ResponseProducer> get min => throw _privateConstructorUsedError;
  List<ResponseProducer> get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseIntervalWinsCopyWith<ResponseIntervalWins> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseIntervalWinsCopyWith<$Res> {
  factory $ResponseIntervalWinsCopyWith(ResponseIntervalWins value,
          $Res Function(ResponseIntervalWins) then) =
      _$ResponseIntervalWinsCopyWithImpl<$Res, ResponseIntervalWins>;
  @useResult
  $Res call({List<ResponseProducer> min, List<ResponseProducer> max});
}

/// @nodoc
class _$ResponseIntervalWinsCopyWithImpl<$Res,
        $Val extends ResponseIntervalWins>
    implements $ResponseIntervalWinsCopyWith<$Res> {
  _$ResponseIntervalWinsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as List<ResponseProducer>,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as List<ResponseProducer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseIntervalWinsImplCopyWith<$Res>
    implements $ResponseIntervalWinsCopyWith<$Res> {
  factory _$$ResponseIntervalWinsImplCopyWith(_$ResponseIntervalWinsImpl value,
          $Res Function(_$ResponseIntervalWinsImpl) then) =
      __$$ResponseIntervalWinsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResponseProducer> min, List<ResponseProducer> max});
}

/// @nodoc
class __$$ResponseIntervalWinsImplCopyWithImpl<$Res>
    extends _$ResponseIntervalWinsCopyWithImpl<$Res, _$ResponseIntervalWinsImpl>
    implements _$$ResponseIntervalWinsImplCopyWith<$Res> {
  __$$ResponseIntervalWinsImplCopyWithImpl(_$ResponseIntervalWinsImpl _value,
      $Res Function(_$ResponseIntervalWinsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$ResponseIntervalWinsImpl(
      min: null == min
          ? _value._min
          : min // ignore: cast_nullable_to_non_nullable
              as List<ResponseProducer>,
      max: null == max
          ? _value._max
          : max // ignore: cast_nullable_to_non_nullable
              as List<ResponseProducer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseIntervalWinsImpl implements _ResponseIntervalWins {
  const _$ResponseIntervalWinsImpl(
      {required final List<ResponseProducer> min,
      required final List<ResponseProducer> max})
      : _min = min,
        _max = max;

  factory _$ResponseIntervalWinsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseIntervalWinsImplFromJson(json);

  final List<ResponseProducer> _min;
  @override
  List<ResponseProducer> get min {
    if (_min is EqualUnmodifiableListView) return _min;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_min);
  }

  final List<ResponseProducer> _max;
  @override
  List<ResponseProducer> get max {
    if (_max is EqualUnmodifiableListView) return _max;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_max);
  }

  @override
  String toString() {
    return 'ResponseIntervalWins(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseIntervalWinsImpl &&
            const DeepCollectionEquality().equals(other._min, _min) &&
            const DeepCollectionEquality().equals(other._max, _max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_min),
      const DeepCollectionEquality().hash(_max));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseIntervalWinsImplCopyWith<_$ResponseIntervalWinsImpl>
      get copyWith =>
          __$$ResponseIntervalWinsImplCopyWithImpl<_$ResponseIntervalWinsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseIntervalWinsImplToJson(
      this,
    );
  }
}

abstract class _ResponseIntervalWins implements ResponseIntervalWins {
  const factory _ResponseIntervalWins(
      {required final List<ResponseProducer> min,
      required final List<ResponseProducer> max}) = _$ResponseIntervalWinsImpl;

  factory _ResponseIntervalWins.fromJson(Map<String, dynamic> json) =
      _$ResponseIntervalWinsImpl.fromJson;

  @override
  List<ResponseProducer> get min;
  @override
  List<ResponseProducer> get max;
  @override
  @JsonKey(ignore: true)
  _$$ResponseIntervalWinsImplCopyWith<_$ResponseIntervalWinsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResponseProducer _$ResponseProducerFromJson(Map<String, dynamic> json) {
  return _ResponseProducer.fromJson(json);
}

/// @nodoc
mixin _$ResponseProducer {
  String get producer => throw _privateConstructorUsedError;
  int get interval => throw _privateConstructorUsedError;
  int get previousWin => throw _privateConstructorUsedError;
  int get followingWin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseProducerCopyWith<ResponseProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseProducerCopyWith<$Res> {
  factory $ResponseProducerCopyWith(
          ResponseProducer value, $Res Function(ResponseProducer) then) =
      _$ResponseProducerCopyWithImpl<$Res, ResponseProducer>;
  @useResult
  $Res call({String producer, int interval, int previousWin, int followingWin});
}

/// @nodoc
class _$ResponseProducerCopyWithImpl<$Res, $Val extends ResponseProducer>
    implements $ResponseProducerCopyWith<$Res> {
  _$ResponseProducerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? producer = null,
    Object? interval = null,
    Object? previousWin = null,
    Object? followingWin = null,
  }) {
    return _then(_value.copyWith(
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      previousWin: null == previousWin
          ? _value.previousWin
          : previousWin // ignore: cast_nullable_to_non_nullable
              as int,
      followingWin: null == followingWin
          ? _value.followingWin
          : followingWin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseProducerImplCopyWith<$Res>
    implements $ResponseProducerCopyWith<$Res> {
  factory _$$ResponseProducerImplCopyWith(_$ResponseProducerImpl value,
          $Res Function(_$ResponseProducerImpl) then) =
      __$$ResponseProducerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String producer, int interval, int previousWin, int followingWin});
}

/// @nodoc
class __$$ResponseProducerImplCopyWithImpl<$Res>
    extends _$ResponseProducerCopyWithImpl<$Res, _$ResponseProducerImpl>
    implements _$$ResponseProducerImplCopyWith<$Res> {
  __$$ResponseProducerImplCopyWithImpl(_$ResponseProducerImpl _value,
      $Res Function(_$ResponseProducerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? producer = null,
    Object? interval = null,
    Object? previousWin = null,
    Object? followingWin = null,
  }) {
    return _then(_$ResponseProducerImpl(
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      previousWin: null == previousWin
          ? _value.previousWin
          : previousWin // ignore: cast_nullable_to_non_nullable
              as int,
      followingWin: null == followingWin
          ? _value.followingWin
          : followingWin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseProducerImpl implements _ResponseProducer {
  const _$ResponseProducerImpl(
      {required this.producer,
      required this.interval,
      required this.previousWin,
      required this.followingWin});

  factory _$ResponseProducerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseProducerImplFromJson(json);

  @override
  final String producer;
  @override
  final int interval;
  @override
  final int previousWin;
  @override
  final int followingWin;

  @override
  String toString() {
    return 'ResponseProducer(producer: $producer, interval: $interval, previousWin: $previousWin, followingWin: $followingWin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseProducerImpl &&
            (identical(other.producer, producer) ||
                other.producer == producer) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.previousWin, previousWin) ||
                other.previousWin == previousWin) &&
            (identical(other.followingWin, followingWin) ||
                other.followingWin == followingWin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, producer, interval, previousWin, followingWin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseProducerImplCopyWith<_$ResponseProducerImpl> get copyWith =>
      __$$ResponseProducerImplCopyWithImpl<_$ResponseProducerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseProducerImplToJson(
      this,
    );
  }
}

abstract class _ResponseProducer implements ResponseProducer {
  const factory _ResponseProducer(
      {required final String producer,
      required final int interval,
      required final int previousWin,
      required final int followingWin}) = _$ResponseProducerImpl;

  factory _ResponseProducer.fromJson(Map<String, dynamic> json) =
      _$ResponseProducerImpl.fromJson;

  @override
  String get producer;
  @override
  int get interval;
  @override
  int get previousWin;
  @override
  int get followingWin;
  @override
  @JsonKey(ignore: true)
  _$$ResponseProducerImplCopyWith<_$ResponseProducerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

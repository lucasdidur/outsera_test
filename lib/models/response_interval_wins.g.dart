// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_interval_wins.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseIntervalWinsImpl _$$ResponseIntervalWinsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseIntervalWinsImpl(
      min: (json['min'] as List<dynamic>)
          .map((e) => ResponseProducer.fromJson(e as Map<String, dynamic>))
          .toList(),
      max: (json['max'] as List<dynamic>)
          .map((e) => ResponseProducer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseIntervalWinsImplToJson(
        _$ResponseIntervalWinsImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$ResponseProducerImpl _$$ResponseProducerImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseProducerImpl(
      producer: json['producer'] as String,
      interval: (json['interval'] as num).toInt(),
      previousWin: (json['previousWin'] as num).toInt(),
      followingWin: (json['followingWin'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseProducerImplToJson(
        _$ResponseProducerImpl instance) =>
    <String, dynamic>{
      'producer': instance.producer,
      'interval': instance.interval,
      'previousWin': instance.previousWin,
      'followingWin': instance.followingWin,
    };
